import 'package:pulumi/pulumi.dart' as pulumi;
import 'flexible_app_version_api_config.dart';
import 'flexible_app_version_args.dart';
import 'flexible_app_version_automatic_scaling.dart';
import 'flexible_app_version_deployment.dart';
import 'flexible_app_version_endpoints_api_service.dart';
import 'flexible_app_version_entrypoint.dart';
import 'flexible_app_version_flexible_runtime_settings.dart';
import 'flexible_app_version_handler.dart';
import 'flexible_app_version_liveness_check.dart';
import 'flexible_app_version_manual_scaling.dart';
import 'flexible_app_version_network.dart';
import 'flexible_app_version_readiness_check.dart';
import 'flexible_app_version_resources.dart';
import 'flexible_app_version_vpc_access_connector.dart';

/// Flexible App Version resource to create a new version of flexible GAE Application. Based on Google Compute Engine,
/// the App Engine flexible environment automatically scales your app up and down while also balancing the load.
/// Learn about the differences between the standard environment and the flexible environment
/// at https://cloud.google.com/appengine/docs/the-appengine-environments.
///
/// > **Note:** The App Engine flexible environment service account uses the member ID `service-[YOUR_PROJECT_NUMBER]@gae-api-prod.google.com.iam.gserviceaccount.com`
/// It should have the App Engine Flexible Environment Service Agent role, which will be applied when the `appengineflex.googleapis.com` service is enabled.
///
///
/// To get more information about FlexibleAppVersion, see:
///
/// * [API documentation](https://cloud.google.com/appengine/docs/admin-api/reference/rest/v1/apps.services.versions)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/appengine/docs/flexible)
///
/// ## Example Usage
///
/// ### App Engine Flexible App Version
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myProject = new gcp.organizations.Project("my_project", {
///     name: "appeng-flex",
///     projectId: "appeng-flex",
///     orgId: "123456789",
///     billingAccount: "000000-0000000-0000000-000000",
///     deletionPolicy: "DELETE",
/// });
/// const app = new gcp.appengine.Application("app", {
///     project: myProject.projectId,
///     locationId: "us-central",
/// });
/// const service = new gcp.projects.Service("service", {
///     project: myProject.projectId,
///     service: "appengineflex.googleapis.com",
///     disableDependentServices: false,
/// });
/// const customServiceAccount = new gcp.serviceaccount.Account("custom_service_account", {
///     project: service.project,
///     accountId: "my-account",
///     displayName: "Custom Service Account",
/// });
/// const gaeApi = new gcp.projects.IAMMember("gae_api", {
///     project: service.project,
///     role: "roles/compute.networkUser",
///     member: pulumi.interpolate`serviceAccount:${customServiceAccount.email}`,
/// });
/// const logsWriter = new gcp.projects.IAMMember("logs_writer", {
///     project: service.project,
///     role: "roles/logging.logWriter",
///     member: pulumi.interpolate`serviceAccount:${customServiceAccount.email}`,
/// });
/// const storageViewer = new gcp.projects.IAMMember("storage_viewer", {
///     project: service.project,
///     role: "roles/storage.objectViewer",
///     member: pulumi.interpolate`serviceAccount:${customServiceAccount.email}`,
/// });
/// const bucket = new gcp.storage.Bucket("bucket", {
///     project: myProject.projectId,
///     name: "appengine-static-content",
///     location: "US",
/// });
/// const object = new gcp.storage.BucketObject("object", {
///     name: "hello-world.zip",
///     bucket: bucket.name,
///     source: new pulumi.asset.FileAsset("./test-fixtures/hello-world.zip"),
/// });
/// const myappV1 = new gcp.appengine.FlexibleAppVersion("myapp_v1", {
///     versionId: "v1",
///     project: gaeApi.project,
///     service: "default",
///     runtime: "nodejs",
///     flexibleRuntimeSettings: {
///         operatingSystem: "ubuntu22",
///         runtimeVersion: "20",
///     },
///     entrypoint: {
///         shell: "node ./app.js",
///     },
///     deployment: {
///         zip: {
///             sourceUrl: pulumi.interpolate`https://storage.googleapis.com/${bucket.name}/${object.name}`,
///         },
///     },
///     livenessCheck: {
///         path: "/",
///     },
///     readinessCheck: {
///         path: "/",
///     },
///     envVariables: {
///         port: "8080",
///     },
///     handlers: [{
///         urlRegex: ".*\\/my-path\\/*",
///         securityLevel: "SECURE_ALWAYS",
///         login: "LOGIN_REQUIRED",
///         authFailAction: "AUTH_FAIL_ACTION_REDIRECT",
///         staticFiles: {
///             path: "my-other-path",
///             uploadPathRegex: ".*\\/my-path\\/*",
///         },
///     }],
///     automaticScaling: {
///         coolDownPeriod: "120s",
///         cpuUtilization: {
///             targetUtilization: 0.5,
///         },
///     },
///     noopOnDestroy: true,
///     serviceAccount: customServiceAccount.email,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_project = gcp.organizations.Project("my_project",
///     name="appeng-flex",
///     project_id="appeng-flex",
///     org_id="123456789",
///     billing_account="000000-0000000-0000000-000000",
///     deletion_policy="DELETE")
/// app = gcp.appengine.Application("app",
///     project=my_project.project_id,
///     location_id="us-central")
/// service = gcp.projects.Service("service",
///     project=my_project.project_id,
///     service="appengineflex.googleapis.com",
///     disable_dependent_services=False)
/// custom_service_account = gcp.serviceaccount.Account("custom_service_account",
///     project=service.project,
///     account_id="my-account",
///     display_name="Custom Service Account")
/// gae_api = gcp.projects.IAMMember("gae_api",
///     project=service.project,
///     role="roles/compute.networkUser",
///     member=custom_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// logs_writer = gcp.projects.IAMMember("logs_writer",
///     project=service.project,
///     role="roles/logging.logWriter",
///     member=custom_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// storage_viewer = gcp.projects.IAMMember("storage_viewer",
///     project=service.project,
///     role="roles/storage.objectViewer",
///     member=custom_service_account.email.apply(lambda email: f"serviceAccount:{email}"))
/// bucket = gcp.storage.Bucket("bucket",
///     project=my_project.project_id,
///     name="appengine-static-content",
///     location="US")
/// object = gcp.storage.BucketObject("object",
///     name="hello-world.zip",
///     bucket=bucket.name,
///     source=pulumi.FileAsset("./test-fixtures/hello-world.zip"))
/// myapp_v1 = gcp.appengine.FlexibleAppVersion("myapp_v1",
///     version_id="v1",
///     project=gae_api.project,
///     service="default",
///     runtime="nodejs",
///     flexible_runtime_settings={
///         "operating_system": "ubuntu22",
///         "runtime_version": "20",
///     },
///     entrypoint={
///         "shell": "node ./app.js",
///     },
///     deployment={
///         "zip": {
///             "source_url": pulumi.Output.all(
///                 bucketName=bucket.name,
///                 objectName=object.name
/// ).apply(lambda resolved_outputs: f"https://storage.googleapis.com/{resolved_outputs['bucketName']}/{resolved_outputs['objectName']}")
/// ,
///         },
///     },
///     liveness_check={
///         "path": "/",
///     },
///     readiness_check={
///         "path": "/",
///     },
///     env_variables={
///         "port": "8080",
///     },
///     handlers=[{
///         "url_regex": ".*\\/my-path\\/*",
///         "security_level": "SECURE_ALWAYS",
///         "login": "LOGIN_REQUIRED",
///         "auth_fail_action": "AUTH_FAIL_ACTION_REDIRECT",
///         "static_files": {
///             "path": "my-other-path",
///             "upload_path_regex": ".*\\/my-path\\/*",
///         },
///     }],
///     automatic_scaling={
///         "cool_down_period": "120s",
///         "cpu_utilization": {
///             "target_utilization": 0.5,
///         },
///     },
///     noop_on_destroy=True,
///     service_account=custom_service_account.email)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myProject = new Gcp.Organizations.Project("my_project", new()
///     {
///         Name = "appeng-flex",
///         ProjectId = "appeng-flex",
///         OrgId = "123456789",
///         BillingAccount = "000000-0000000-0000000-000000",
///         DeletionPolicy = "DELETE",
///     });
///
///     var app = new Gcp.AppEngine.Application("app", new()
///     {
///         Project = myProject.ProjectId,
///         LocationId = "us-central",
///     });
///
///     var service = new Gcp.Projects.Service("service", new()
///     {
///         Project = myProject.ProjectId,
///         ServiceName = "appengineflex.googleapis.com",
///         DisableDependentServices = false,
///     });
///
///     var customServiceAccount = new Gcp.ServiceAccount.Account("custom_service_account", new()
///     {
///         Project = service.Project,
///         AccountId = "my-account",
///         DisplayName = "Custom Service Account",
///     });
///
///     var gaeApi = new Gcp.Projects.IAMMember("gae_api", new()
///     {
///         Project = service.Project,
///         Role = "roles/compute.networkUser",
///         Member = customServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var logsWriter = new Gcp.Projects.IAMMember("logs_writer", new()
///     {
///         Project = service.Project,
///         Role = "roles/logging.logWriter",
///         Member = customServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var storageViewer = new Gcp.Projects.IAMMember("storage_viewer", new()
///     {
///         Project = service.Project,
///         Role = "roles/storage.objectViewer",
///         Member = customServiceAccount.Email.Apply(email => $"serviceAccount:{email}"),
///     });
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         Project = myProject.ProjectId,
///         Name = "appengine-static-content",
///         Location = "US",
///     });
///
///     var @object = new Gcp.Storage.BucketObject("object", new()
///     {
///         Name = "hello-world.zip",
///         Bucket = bucket.Name,
///         Source = new FileAsset("./test-fixtures/hello-world.zip"),
///     });
///
///     var myappV1 = new Gcp.AppEngine.FlexibleAppVersion("myapp_v1", new()
///     {
///         VersionId = "v1",
///         Project = gaeApi.Project,
///         Service = "default",
///         Runtime = "nodejs",
///         FlexibleRuntimeSettings = new Gcp.AppEngine.Inputs.FlexibleAppVersionFlexibleRuntimeSettingsArgs
///         {
///             OperatingSystem = "ubuntu22",
///             RuntimeVersion = "20",
///         },
///         Entrypoint = new Gcp.AppEngine.Inputs.FlexibleAppVersionEntrypointArgs
///         {
///             Shell = "node ./app.js",
///         },
///         Deployment = new Gcp.AppEngine.Inputs.FlexibleAppVersionDeploymentArgs
///         {
///             Zip = new Gcp.AppEngine.Inputs.FlexibleAppVersionDeploymentZipArgs
///             {
///                 SourceUrl = Output.Tuple(bucket.Name, @object.Name).Apply(values =>
///                 {
///                     var bucketName = values.Item1;
///                     var objectName = values.Item2;
///                     return $"https://storage.googleapis.com/{bucketName}/{objectName}";
///                 }),
///             },
///         },
///         LivenessCheck = new Gcp.AppEngine.Inputs.FlexibleAppVersionLivenessCheckArgs
///         {
///             Path = "/",
///         },
///         ReadinessCheck = new Gcp.AppEngine.Inputs.FlexibleAppVersionReadinessCheckArgs
///         {
///             Path = "/",
///         },
///         EnvVariables =
///         {
///             { "port", "8080" },
///         },
///         Handlers = new[]
///         {
///             new Gcp.AppEngine.Inputs.FlexibleAppVersionHandlerArgs
///             {
///                 UrlRegex = ".*\\/my-path\\/*",
///                 SecurityLevel = "SECURE_ALWAYS",
///                 Login = "LOGIN_REQUIRED",
///                 AuthFailAction = "AUTH_FAIL_ACTION_REDIRECT",
///                 StaticFiles = new Gcp.AppEngine.Inputs.FlexibleAppVersionHandlerStaticFilesArgs
///                 {
///                     Path = "my-other-path",
///                     UploadPathRegex = ".*\\/my-path\\/*",
///                 },
///             },
///         },
///         AutomaticScaling = new Gcp.AppEngine.Inputs.FlexibleAppVersionAutomaticScalingArgs
///         {
///             CoolDownPeriod = "120s",
///             CpuUtilization = new Gcp.AppEngine.Inputs.FlexibleAppVersionAutomaticScalingCpuUtilizationArgs
///             {
///                 TargetUtilization = 0.5,
///             },
///         },
///         NoopOnDestroy = true,
///         ServiceAccount = customServiceAccount.Email,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/appengine"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/projects"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceaccount"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myProject, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("appeng-flex"),
/// 			ProjectId:      pulumi.String("appeng-flex"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			BillingAccount: pulumi.String("000000-0000000-0000000-000000"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appengine.NewApplication(ctx, "app", &appengine.ApplicationArgs{
/// 			Project:    myProject.ProjectId,
/// 			LocationId: pulumi.String("us-central"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		service, err := projects.NewService(ctx, "service", &projects.ServiceArgs{
/// 			Project:                  myProject.ProjectId,
/// 			Service:                  pulumi.String("appengineflex.googleapis.com"),
/// 			DisableDependentServices: pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		customServiceAccount, err := serviceaccount.NewAccount(ctx, "custom_service_account", &serviceaccount.AccountArgs{
/// 			Project:     service.Project,
/// 			AccountId:   pulumi.String("my-account"),
/// 			DisplayName: pulumi.String("Custom Service Account"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		gaeApi, err := projects.NewIAMMember(ctx, "gae_api", &projects.IAMMemberArgs{
/// 			Project: service.Project,
/// 			Role:    pulumi.String("roles/compute.networkUser"),
/// 			Member: customServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "logs_writer", &projects.IAMMemberArgs{
/// 			Project: service.Project,
/// 			Role:    pulumi.String("roles/logging.logWriter"),
/// 			Member: customServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = projects.NewIAMMember(ctx, "storage_viewer", &projects.IAMMemberArgs{
/// 			Project: service.Project,
/// 			Role:    pulumi.String("roles/storage.objectViewer"),
/// 			Member: customServiceAccount.Email.ApplyT(func(email string) (string, error) {
/// 				return fmt.Sprintf("serviceAccount:%v", email), nil
/// 			}).(pulumi.StringOutput),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			Project:  myProject.ProjectId,
/// 			Name:     pulumi.String("appengine-static-content"),
/// 			Location: pulumi.String("US"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		object, err := storage.NewBucketObject(ctx, "object", &storage.BucketObjectArgs{
/// 			Name:   pulumi.String("hello-world.zip"),
/// 			Bucket: bucket.Name,
/// 			Source: pulumi.NewFileAsset("./test-fixtures/hello-world.zip"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = appengine.NewFlexibleAppVersion(ctx, "myapp_v1", &appengine.FlexibleAppVersionArgs{
/// 			VersionId: pulumi.String("v1"),
/// 			Project:   gaeApi.Project,
/// 			Service:   pulumi.String("default"),
/// 			Runtime:   pulumi.String("nodejs"),
/// 			FlexibleRuntimeSettings: &appengine.FlexibleAppVersionFlexibleRuntimeSettingsArgs{
/// 				OperatingSystem: pulumi.String("ubuntu22"),
/// 				RuntimeVersion:  pulumi.String("20"),
/// 			},
/// 			Entrypoint: &appengine.FlexibleAppVersionEntrypointArgs{
/// 				Shell: pulumi.String("node ./app.js"),
/// 			},
/// 			Deployment: &appengine.FlexibleAppVersionDeploymentArgs{
/// 				Zip: &appengine.FlexibleAppVersionDeploymentZipArgs{
/// 					SourceUrl: pulumi.All(bucket.Name, object.Name).ApplyT(func(_args []interface{}) (string, error) {
/// 						bucketName := _args[0].(string)
/// 						objectName := _args[1].(string)
/// 						return fmt.Sprintf("https://storage.googleapis.com/%v/%v", bucketName, objectName), nil
/// 					}).(pulumi.StringOutput),
/// 				},
/// 			},
/// 			LivenessCheck: &appengine.FlexibleAppVersionLivenessCheckArgs{
/// 				Path: pulumi.String("/"),
/// 			},
/// 			ReadinessCheck: &appengine.FlexibleAppVersionReadinessCheckArgs{
/// 				Path: pulumi.String("/"),
/// 			},
/// 			EnvVariables: pulumi.StringMap{
/// 				"port": pulumi.String("8080"),
/// 			},
/// 			Handlers: appengine.FlexibleAppVersionHandlerArray{
/// 				&appengine.FlexibleAppVersionHandlerArgs{
/// 					UrlRegex:       pulumi.String(".*\\/my-path\\/*"),
/// 					SecurityLevel:  pulumi.String("SECURE_ALWAYS"),
/// 					Login:          pulumi.String("LOGIN_REQUIRED"),
/// 					AuthFailAction: pulumi.String("AUTH_FAIL_ACTION_REDIRECT"),
/// 					StaticFiles: &appengine.FlexibleAppVersionHandlerStaticFilesArgs{
/// 						Path:            pulumi.String("my-other-path"),
/// 						UploadPathRegex: pulumi.String(".*\\/my-path\\/*"),
/// 					},
/// 				},
/// 			},
/// 			AutomaticScaling: &appengine.FlexibleAppVersionAutomaticScalingArgs{
/// 				CoolDownPeriod: pulumi.String("120s"),
/// 				CpuUtilization: &appengine.FlexibleAppVersionAutomaticScalingCpuUtilizationArgs{
/// 					TargetUtilization: pulumi.Float64(0.5),
/// 				},
/// 			},
/// 			NoopOnDestroy:  pulumi.Bool(true),
/// 			ServiceAccount: customServiceAccount.Email,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.appengine.Application;
/// import com.pulumi.gcp.appengine.ApplicationArgs;
/// import com.pulumi.gcp.projects.Service;
/// import com.pulumi.gcp.projects.ServiceArgs;
/// import com.pulumi.gcp.serviceaccount.Account;
/// import com.pulumi.gcp.serviceaccount.AccountArgs;
/// import com.pulumi.gcp.projects.IAMMember;
/// import com.pulumi.gcp.projects.IAMMemberArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.storage.BucketObject;
/// import com.pulumi.gcp.storage.BucketObjectArgs;
/// import com.pulumi.gcp.appengine.FlexibleAppVersion;
/// import com.pulumi.gcp.appengine.FlexibleAppVersionArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionFlexibleRuntimeSettingsArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionEntrypointArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionDeploymentArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionDeploymentZipArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionLivenessCheckArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionReadinessCheckArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionHandlerArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionHandlerStaticFilesArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionAutomaticScalingArgs;
/// import com.pulumi.gcp.appengine.inputs.FlexibleAppVersionAutomaticScalingCpuUtilizationArgs;
/// import com.pulumi.asset.FileAsset;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var myProject = new Project("myProject", ProjectArgs.builder()
///             .name("appeng-flex")
///             .projectId("appeng-flex")
///             .orgId("123456789")
///             .billingAccount("000000-0000000-0000000-000000")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var app = new Application("app", ApplicationArgs.builder()
///             .project(myProject.projectId())
///             .locationId("us-central")
///             .build());
///
///         var service = new Service("service", ServiceArgs.builder()
///             .project(myProject.projectId())
///             .service("appengineflex.googleapis.com")
///             .disableDependentServices(false)
///             .build());
///
///         var customServiceAccount = new Account("customServiceAccount", AccountArgs.builder()
///             .project(service.project())
///             .accountId("my-account")
///             .displayName("Custom Service Account")
///             .build());
///
///         var gaeApi = new IAMMember("gaeApi", IAMMemberArgs.builder()
///             .project(service.project())
///             .role("roles/compute.networkUser")
///             .member(customServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var logsWriter = new IAMMember("logsWriter", IAMMemberArgs.builder()
///             .project(service.project())
///             .role("roles/logging.logWriter")
///             .member(customServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var storageViewer = new IAMMember("storageViewer", IAMMemberArgs.builder()
///             .project(service.project())
///             .role("roles/storage.objectViewer")
///             .member(customServiceAccount.email().applyValue(_email -> String.format("serviceAccount:%s", _email)))
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .project(myProject.projectId())
///             .name("appengine-static-content")
///             .location("US")
///             .build());
///
///         var object = new BucketObject("object", BucketObjectArgs.builder()
///             .name("hello-world.zip")
///             .bucket(bucket.name())
///             .source(new FileAsset("./test-fixtures/hello-world.zip"))
///             .build());
///
///         var myappV1 = new FlexibleAppVersion("myappV1", FlexibleAppVersionArgs.builder()
///             .versionId("v1")
///             .project(gaeApi.project())
///             .service("default")
///             .runtime("nodejs")
///             .flexibleRuntimeSettings(FlexibleAppVersionFlexibleRuntimeSettingsArgs.builder()
///                 .operatingSystem("ubuntu22")
///                 .runtimeVersion("20")
///                 .build())
///             .entrypoint(FlexibleAppVersionEntrypointArgs.builder()
///                 .shell("node ./app.js")
///                 .build())
///             .deployment(FlexibleAppVersionDeploymentArgs.builder()
///                 .zip(FlexibleAppVersionDeploymentZipArgs.builder()
///                     .sourceUrl(Output.tuple(bucket.name(), object.name()).applyValue(values -> {
///                         var bucketName = values.t1;
///                         var objectName = values.t2;
///                         return String.format("https://storage.googleapis.com/%s/%s", bucketName,objectName);
///                     }))
///                     .build())
///                 .build())
///             .livenessCheck(FlexibleAppVersionLivenessCheckArgs.builder()
///                 .path("/")
///                 .build())
///             .readinessCheck(FlexibleAppVersionReadinessCheckArgs.builder()
///                 .path("/")
///                 .build())
///             .envVariables(Map.of("port", "8080"))
///             .handlers(FlexibleAppVersionHandlerArgs.builder()
///                 .urlRegex(".*\\/my-path\\/*")
///                 .securityLevel("SECURE_ALWAYS")
///                 .login("LOGIN_REQUIRED")
///                 .authFailAction("AUTH_FAIL_ACTION_REDIRECT")
///                 .staticFiles(FlexibleAppVersionHandlerStaticFilesArgs.builder()
///                     .path("my-other-path")
///                     .uploadPathRegex(".*\\/my-path\\/*")
///                     .build())
///                 .build())
///             .automaticScaling(FlexibleAppVersionAutomaticScalingArgs.builder()
///                 .coolDownPeriod("120s")
///                 .cpuUtilization(FlexibleAppVersionAutomaticScalingCpuUtilizationArgs.builder()
///                     .targetUtilization(0.5)
///                     .build())
///                 .build())
///             .noopOnDestroy(true)
///             .serviceAccount(customServiceAccount.email())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   myProject:
///     type: gcp:organizations:Project
///     name: my_project
///     properties:
///       name: appeng-flex
///       projectId: appeng-flex
///       orgId: '123456789'
///       billingAccount: 000000-0000000-0000000-000000
///       deletionPolicy: DELETE
///   app:
///     type: gcp:appengine:Application
///     properties:
///       project: ${myProject.projectId}
///       locationId: us-central
///   service:
///     type: gcp:projects:Service
///     properties:
///       project: ${myProject.projectId}
///       service: appengineflex.googleapis.com
///       disableDependentServices: false
///   customServiceAccount:
///     type: gcp:serviceaccount:Account
///     name: custom_service_account
///     properties:
///       project: ${service.project}
///       accountId: my-account
///       displayName: Custom Service Account
///   gaeApi:
///     type: gcp:projects:IAMMember
///     name: gae_api
///     properties:
///       project: ${service.project}
///       role: roles/compute.networkUser
///       member: serviceAccount:${customServiceAccount.email}
///   logsWriter:
///     type: gcp:projects:IAMMember
///     name: logs_writer
///     properties:
///       project: ${service.project}
///       role: roles/logging.logWriter
///       member: serviceAccount:${customServiceAccount.email}
///   storageViewer:
///     type: gcp:projects:IAMMember
///     name: storage_viewer
///     properties:
///       project: ${service.project}
///       role: roles/storage.objectViewer
///       member: serviceAccount:${customServiceAccount.email}
///   myappV1:
///     type: gcp:appengine:FlexibleAppVersion
///     name: myapp_v1
///     properties:
///       versionId: v1
///       project: ${gaeApi.project}
///       service: default
///       runtime: nodejs
///       flexibleRuntimeSettings:
///         operatingSystem: ubuntu22
///         runtimeVersion: '20'
///       entrypoint:
///         shell: node ./app.js
///       deployment:
///         zip:
///           sourceUrl: https://storage.googleapis.com/${bucket.name}/${object.name}
///       livenessCheck:
///         path: /
///       readinessCheck:
///         path: /
///       envVariables:
///         port: '8080'
///       handlers:
///         - urlRegex: .*\/my-path\/*
///           securityLevel: SECURE_ALWAYS
///           login: LOGIN_REQUIRED
///           authFailAction: AUTH_FAIL_ACTION_REDIRECT
///           staticFiles:
///             path: my-other-path
///             uploadPathRegex: .*\/my-path\/*
///       automaticScaling:
///         coolDownPeriod: 120s
///         cpuUtilization:
///           targetUtilization: 0.5
///       noopOnDestroy: true
///       serviceAccount: ${customServiceAccount.email}
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       project: ${myProject.projectId}
///       name: appengine-static-content
///       location: US
///   object:
///     type: gcp:storage:BucketObject
///     properties:
///       name: hello-world.zip
///       bucket: ${bucket.name}
///       source:
///         fn::FileAsset: ./test-fixtures/hello-world.zip
/// ```
///
///
/// ## Import
///
/// FlexibleAppVersion can be imported using any of these accepted formats:
///
/// * `apps/{{project}}/services/{{service}}/versions/{{version_id}}`
///
/// * `{{project}}/{{service}}/{{version_id}}`
///
/// * `{{service}}/{{version_id}}`
///
/// When using the `pulumi import` command, FlexibleAppVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:appengine/flexibleAppVersion:FlexibleAppVersion default apps/{{project}}/services/{{service}}/versions/{{version_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/flexibleAppVersion:FlexibleAppVersion default {{project}}/{{service}}/{{version_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:appengine/flexibleAppVersion:FlexibleAppVersion default {{service}}/{{version_id}}
/// ```
class FlexibleAppVersion extends pulumi.CustomResource {
  /// Serving configuration for Google Cloud Endpoints.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionApiConfig?> apiConfig;

  /// Automatic scaling is based on request rate, response latencies, and other application metrics.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionAutomaticScaling?>
  automaticScaling;

  /// Metadata settings that are supplied to this version to enable beta runtime features.
  late final pulumi.Output<Map<String, String>?> betaSettings;

  /// Duration that static files should be cached by web proxies and browsers.
  /// Only applicable if the corresponding StaticFilesHandler does not specify its own expiration time.
  late final pulumi.Output<String?> defaultExpiration;

  /// If set to `true`, the service will be deleted if it is the last version.
  late final pulumi.Output<bool?> deleteServiceOnDestroy;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionDeployment?> deployment;

  /// Code and application artifacts that make up this version.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionEndpointsApiService?>
  endpointsApiService;

  /// The entrypoint for the application.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionEntrypoint?> entrypoint;

  /// Environment variables available to the application.  As these are not returned in the API request, the provider will not detect any changes made outside of the config.
  late final pulumi.Output<Map<String, String>?> envVariables;

  /// Runtime settings for App Engine flexible environment.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionFlexibleRuntimeSettings?>
  flexibleRuntimeSettings;

  /// An ordered list of URL-matching patterns that should be applied to incoming requests.
  /// The first matching URL handles the request and other request handlers are not attempted.
  /// Structure is documented below.
  late final pulumi.Output<List<FlexibleAppVersionHandler>> handlers;

  /// A list of the types of messages that this application is able to receive.
  /// Each value may be one of: `INBOUND_SERVICE_MAIL`, `INBOUND_SERVICE_MAIL_BOUNCE`, `INBOUND_SERVICE_XMPP_ERROR`, `INBOUND_SERVICE_XMPP_MESSAGE`, `INBOUND_SERVICE_XMPP_SUBSCRIBE`, `INBOUND_SERVICE_XMPP_PRESENCE`, `INBOUND_SERVICE_CHANNEL_PRESENCE`, `INBOUND_SERVICE_WARMUP`.
  late final pulumi.Output<List<String>?> inboundServices;

  /// Instance class that is used to run this version. Valid values are
  /// AutomaticScaling: F1, F2, F4, F4_1G
  /// ManualScaling: B1, B2, B4, B8, B4_1G
  /// Defaults to F1 for AutomaticScaling and B1 for ManualScaling.
  late final pulumi.Output<String?> instanceClass;

  /// Health checking configuration for VM instances. Unhealthy instances are killed and replaced with new instances.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionLivenessCheck> livenessCheck;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionManualScaling?> manualScaling;

  /// Full path to the Version resource in the API. Example, "v1".
  late final pulumi.Output<String> name;

  /// Extra network settings
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionNetwork?> network;

  /// Files that match this pattern will not be built into this version. Only applicable for Go runtimes.
  late final pulumi.Output<String?> nobuildFilesRegex;

  /// If set to `true`, the application version will not be deleted.
  late final pulumi.Output<bool?> noopOnDestroy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Configures readiness health checking for instances. Unhealthy instances are not put into the backend traffic rotation.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionReadinessCheck> readinessCheck;

  /// Machine resources for a version.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionResources?> resources;

  /// Desired runtime. Example python27.
  late final pulumi.Output<String> runtime;

  /// The version of the API in the given runtime environment.
  /// Please see the app.yaml reference for valid values at `https://cloud.google.com/appengine/docs/standard/<language>/config/appref`\
  /// Substitute `<language>` with `python`, `java`, `php`, `ruby`, `go` or `nodejs`.
  late final pulumi.Output<String> runtimeApiVersion;

  /// The channel of the runtime to use. Only available for some runtimes.
  late final pulumi.Output<String?> runtimeChannel;

  /// The path or name of the app's main executable.
  late final pulumi.Output<String?> runtimeMainExecutablePath;

  /// AppEngine service resource. Can contain numbers, letters, and hyphens.
  late final pulumi.Output<String> service;

  /// The identity that the deployed version will run as. Admin API will use the App Engine Appspot service account as
  /// default if this field is neither provided in app.yaml file nor through CLI flag.
  late final pulumi.Output<String> serviceAccount;

  /// Current serving status of this version. Only the versions with a SERVING status create instances and can be billed.
  /// Default value is `SERVING`.
  /// Possible values are: `SERVING`, `STOPPED`.
  late final pulumi.Output<String?> servingStatus;

  /// Relative name of the version within the service. For example, `v1`. Version names can contain only lowercase letters, numbers, or hyphens.
  /// Reserved names,"default", "latest", and any name with the prefix "ah-".
  late final pulumi.Output<String?> versionId;

  /// Enables VPC connectivity for standard apps.
  /// Structure is documented below.
  late final pulumi.Output<FlexibleAppVersionVpcAccessConnector?>
  vpcAccessConnector;

  /// Creates a new [FlexibleAppVersion].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlexibleAppVersion]. {@macro pulumi_appengine_flexible_app_version_flexible_app_version_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlexibleAppVersion(
    String name, {
    FlexibleAppVersionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:appengine/flexibleAppVersion:FlexibleAppVersion',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.apiConfig = registerOutput<FlexibleAppVersionApiConfig?>('apiConfig');
    this.automaticScaling = registerOutput<FlexibleAppVersionAutomaticScaling?>(
      'automaticScaling',
    );
    this.betaSettings = registerOutput<Map<String, String>?>('betaSettings');
    this.defaultExpiration = registerOutput<String?>('defaultExpiration');
    this.deleteServiceOnDestroy = registerOutput<bool?>(
      'deleteServiceOnDestroy',
    );
    this.deployment = registerOutput<FlexibleAppVersionDeployment?>(
      'deployment',
    );
    this.endpointsApiService =
        registerOutput<FlexibleAppVersionEndpointsApiService?>(
          'endpointsApiService',
        );
    this.entrypoint = registerOutput<FlexibleAppVersionEntrypoint?>(
      'entrypoint',
    );
    this.envVariables = registerOutput<Map<String, String>?>('envVariables');
    this.flexibleRuntimeSettings =
        registerOutput<FlexibleAppVersionFlexibleRuntimeSettings?>(
          'flexibleRuntimeSettings',
        );
    this.handlers = registerOutput<List<FlexibleAppVersionHandler>>('handlers');
    this.inboundServices = registerOutput<List<String>?>('inboundServices');
    this.instanceClass = registerOutput<String?>('instanceClass');
    this.livenessCheck = registerOutput<FlexibleAppVersionLivenessCheck>(
      'livenessCheck',
    );
    this.manualScaling = registerOutput<FlexibleAppVersionManualScaling?>(
      'manualScaling',
    );
    this.name = registerOutput<String>('name');
    this.network = registerOutput<FlexibleAppVersionNetwork?>('network');
    this.nobuildFilesRegex = registerOutput<String?>('nobuildFilesRegex');
    this.noopOnDestroy = registerOutput<bool?>('noopOnDestroy');
    this.project = registerOutput<String>('project');
    this.readinessCheck = registerOutput<FlexibleAppVersionReadinessCheck>(
      'readinessCheck',
    );
    this.resources = registerOutput<FlexibleAppVersionResources?>('resources');
    this.runtime = registerOutput<String>('runtime');
    this.runtimeApiVersion = registerOutput<String>('runtimeApiVersion');
    this.runtimeChannel = registerOutput<String?>('runtimeChannel');
    this.runtimeMainExecutablePath = registerOutput<String?>(
      'runtimeMainExecutablePath',
    );
    this.service = registerOutput<String>('service');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.servingStatus = registerOutput<String?>('servingStatus');
    this.versionId = registerOutput<String?>('versionId');
    this.vpcAccessConnector =
        registerOutput<FlexibleAppVersionVpcAccessConnector?>(
          'vpcAccessConnector',
        );
  }
}
