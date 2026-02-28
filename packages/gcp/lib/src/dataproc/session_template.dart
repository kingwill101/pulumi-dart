import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_template_args.dart';
import 'session_template_environment_config.dart';
import 'session_template_jupyter_session.dart';
import 'session_template_runtime_config.dart';

/// A Dataproc Serverless session template defines the configuration settings for
/// creating one or more Dataproc Serverless interactive sessions.
///
///
/// To get more information about SessionTemplate, see:
///
/// * [API documentation](https://cloud.google.com/dataproc-serverless/docs/reference/rest/v1/projects.locations.sessionTemplates)
/// * How-to Guides
/// * [Dataproc Serverless Session Templates](https://cloud.google.com/dataproc-serverless/docs/guides/create-serverless-sessions-templates#create-dataproc-serverless-session-template)
///
/// ## Example Usage
///
/// ### Dataproc Session Templates Jupyter
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleSessionTemplatesJupyter = new gcp.dataproc.SessionTemplate("example_session_templates_jupyter", {
///     name: "projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template",
///     location: "us-central1",
///     labels: {
///         session_template_test: "terraform",
///     },
///     runtimeConfig: {
///         properties: {
///             "spark.dynamicAllocation.enabled": "false",
///             "spark.executor.instances": "2",
///         },
///     },
///     environmentConfig: {
///         executionConfig: {
///             subnetworkUri: "default",
///             idleTtl: "3600s",
///             networkTags: ["tag1"],
///             authenticationConfig: {
///                 userWorkloadAuthenticationType: "END_USER_CREDENTIALS",
///             },
///         },
///     },
///     jupyterSession: {
///         kernel: "PYTHON",
///         displayName: "tf python kernel",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_session_templates_jupyter = gcp.dataproc.SessionTemplate("example_session_templates_jupyter",
///     name="projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template",
///     location="us-central1",
///     labels={
///         "session_template_test": "terraform",
///     },
///     runtime_config={
///         "properties": {
///             "spark.dynamicAllocation.enabled": "false",
///             "spark.executor.instances": "2",
///         },
///     },
///     environment_config={
///         "execution_config": {
///             "subnetwork_uri": "default",
///             "idle_ttl": "3600s",
///             "network_tags": ["tag1"],
///             "authentication_config": {
///                 "user_workload_authentication_type": "END_USER_CREDENTIALS",
///             },
///         },
///     },
///     jupyter_session={
///         "kernel": "PYTHON",
///         "display_name": "tf python kernel",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSessionTemplatesJupyter = new Gcp.Dataproc.SessionTemplate("example_session_templates_jupyter", new()
///     {
///         Name = "projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template",
///         Location = "us-central1",
///         Labels =
///         {
///             { "session_template_test", "terraform" },
///         },
///         RuntimeConfig = new Gcp.Dataproc.Inputs.SessionTemplateRuntimeConfigArgs
///         {
///             Properties =
///             {
///                 { "spark.dynamicAllocation.enabled", "false" },
///                 { "spark.executor.instances", "2" },
///             },
///         },
///         EnvironmentConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigArgs
///         {
///             ExecutionConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigExecutionConfigArgs
///             {
///                 SubnetworkUri = "default",
///                 IdleTtl = "3600s",
///                 NetworkTags = new[]
///                 {
///                     "tag1",
///                 },
///                 AuthenticationConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigArgs
///                 {
///                     UserWorkloadAuthenticationType = "END_USER_CREDENTIALS",
///                 },
///             },
///         },
///         JupyterSession = new Gcp.Dataproc.Inputs.SessionTemplateJupyterSessionArgs
///         {
///             Kernel = "PYTHON",
///             DisplayName = "tf python kernel",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewSessionTemplate(ctx, "example_session_templates_jupyter", &dataproc.SessionTemplateArgs{
/// 			Name:     pulumi.String("projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template"),
/// 			Location: pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"session_template_test": pulumi.String("terraform"),
/// 			},
/// 			RuntimeConfig: &dataproc.SessionTemplateRuntimeConfigArgs{
/// 				Properties: pulumi.StringMap{
/// 					"spark.dynamicAllocation.enabled": pulumi.String("false"),
/// 					"spark.executor.instances":        pulumi.String("2"),
/// 				},
/// 			},
/// 			EnvironmentConfig: &dataproc.SessionTemplateEnvironmentConfigArgs{
/// 				ExecutionConfig: &dataproc.SessionTemplateEnvironmentConfigExecutionConfigArgs{
/// 					SubnetworkUri: pulumi.String("default"),
/// 					IdleTtl:       pulumi.String("3600s"),
/// 					NetworkTags: pulumi.StringArray{
/// 						pulumi.String("tag1"),
/// 					},
/// 					AuthenticationConfig: &dataproc.SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigArgs{
/// 						UserWorkloadAuthenticationType: pulumi.String("END_USER_CREDENTIALS"),
/// 					},
/// 				},
/// 			},
/// 			JupyterSession: &dataproc.SessionTemplateJupyterSessionArgs{
/// 				Kernel:      pulumi.String("PYTHON"),
/// 				DisplayName: pulumi.String("tf python kernel"),
/// 			},
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
/// import com.pulumi.gcp.dataproc.SessionTemplate;
/// import com.pulumi.gcp.dataproc.SessionTemplateArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateRuntimeConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigExecutionConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateJupyterSessionArgs;
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
///         var exampleSessionTemplatesJupyter = new SessionTemplate("exampleSessionTemplatesJupyter", SessionTemplateArgs.builder()
///             .name("projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template")
///             .location("us-central1")
///             .labels(Map.of("session_template_test", "terraform"))
///             .runtimeConfig(SessionTemplateRuntimeConfigArgs.builder()
///                 .properties(Map.ofEntries(
///                     Map.entry("spark.dynamicAllocation.enabled", "false"),
///                     Map.entry("spark.executor.instances", "2")
///                 ))
///                 .build())
///             .environmentConfig(SessionTemplateEnvironmentConfigArgs.builder()
///                 .executionConfig(SessionTemplateEnvironmentConfigExecutionConfigArgs.builder()
///                     .subnetworkUri("default")
///                     .idleTtl("3600s")
///                     .networkTags("tag1")
///                     .authenticationConfig(SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigArgs.builder()
///                         .userWorkloadAuthenticationType("END_USER_CREDENTIALS")
///                         .build())
///                     .build())
///                 .build())
///             .jupyterSession(SessionTemplateJupyterSessionArgs.builder()
///                 .kernel("PYTHON")
///                 .displayName("tf python kernel")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSessionTemplatesJupyter:
///     type: gcp:dataproc:SessionTemplate
///     name: example_session_templates_jupyter
///     properties:
///       name: projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template
///       location: us-central1
///       labels:
///         session_template_test: terraform
///       runtimeConfig:
///         properties:
///           spark.dynamicAllocation.enabled: 'false'
///           spark.executor.instances: '2'
///       environmentConfig:
///         executionConfig:
///           subnetworkUri: default
///           idleTtl: 3600s
///           networkTags:
///             - tag1
///           authenticationConfig:
///             userWorkloadAuthenticationType: END_USER_CREDENTIALS
///       jupyterSession:
///         kernel: PYTHON
///         displayName: tf python kernel
/// ```
///
/// ### Dataproc Session Templates Jupyter Full
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const gcsAccount = gcp.storage.getProjectServiceAccount({});
/// const bucket = new gcp.storage.Bucket("bucket", {
///     uniformBucketLevelAccess: true,
///     name: "dataproc-bucket",
///     location: "US",
///     forceDestroy: true,
/// });
/// const cryptoKeyMember1 = new gcp.kms.CryptoKeyIAMMember("crypto_key_member_1", {
///     cryptoKeyId: "example-key",
///     role: "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member: project.then(project => `serviceAccount:service-${project.number}@dataproc-accounts.iam.gserviceaccount.com`),
/// });
/// const ms = new gcp.dataproc.MetastoreService("ms", {
///     serviceId: "jupyter-session-template",
///     location: "us-central1",
///     port: 9080,
///     tier: "DEVELOPER",
///     maintenanceWindow: {
///         hourOfDay: 2,
///         dayOfWeek: "SUNDAY",
///     },
///     hiveMetastoreConfig: {
///         version: "3.1.2",
///     },
///     networkConfig: {
///         consumers: [{
///             subnetwork: "projects/my-project-name/regions/us-central1/subnetworks/default",
///         }],
///     },
/// });
/// const basic = new gcp.dataproc.Cluster("basic", {
///     name: "jupyter-session-template",
///     region: "us-central1",
///     clusterConfig: {
///         softwareConfig: {
///             overrideProperties: {
///                 "dataproc:dataproc.allow.zero.workers": "true",
///                 "spark:spark.history.fs.logDirectory": pulumi.interpolate`gs://${bucket.name}/*/spark-job-history`,
///             },
///         },
///         gceClusterConfig: {
///             subnetwork: "default",
///         },
///         endpointConfig: {
///             enableHttpPortAccess: true,
///         },
///         masterConfig: {
///             numInstances: 1,
///             machineType: "e2-standard-2",
///             diskConfig: {
///                 bootDiskSizeGb: 35,
///             },
///         },
///         metastoreConfig: {
///             dataprocMetastoreService: ms.name,
///         },
///     },
/// });
/// const dataprocSessionTemplatesJupyterFull = new gcp.dataproc.SessionTemplate("dataproc_session_templates_jupyter_full", {
///     name: "projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template",
///     location: "us-central1",
///     labels: {
///         session_template_test: "terraform",
///     },
///     runtimeConfig: {
///         properties: {
///             "spark.dynamicAllocation.enabled": "false",
///             "spark.executor.instances": "2",
///         },
///         version: "2.2",
///         containerImage: "us-docker.pkg.dev/my-project-name/s8s-spark-test-images/s8s-spark:latest",
///     },
///     environmentConfig: {
///         executionConfig: {
///             ttl: "3600s",
///             networkTags: ["tag1"],
///             kmsKey: "example-key",
///             subnetworkUri: "default",
///             serviceAccount: project.then(project => `${project.number}-compute@developer.gserviceaccount.com`),
///             stagingBucket: bucket.name,
///             authenticationConfig: {
///                 userWorkloadAuthenticationType: "SERVICE_ACCOUNT",
///             },
///         },
///         peripheralsConfig: {
///             metastoreService: ms.name,
///             sparkHistoryServerConfig: {
///                 dataprocCluster: basic.id,
///             },
///         },
///     },
///     jupyterSession: {
///         kernel: "PYTHON",
///         displayName: "tf python kernel",
///     },
/// }, {
///     dependsOn: [cryptoKeyMember1],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// gcs_account = gcp.storage.get_project_service_account()
/// bucket = gcp.storage.Bucket("bucket",
///     uniform_bucket_level_access=True,
///     name="dataproc-bucket",
///     location="US",
///     force_destroy=True)
/// crypto_key_member1 = gcp.kms.CryptoKeyIAMMember("crypto_key_member_1",
///     crypto_key_id="example-key",
///     role="roles/cloudkms.cryptoKeyEncrypterDecrypter",
///     member=f"serviceAccount:service-{project.number}@dataproc-accounts.iam.gserviceaccount.com")
/// ms = gcp.dataproc.MetastoreService("ms",
///     service_id="jupyter-session-template",
///     location="us-central1",
///     port=9080,
///     tier="DEVELOPER",
///     maintenance_window={
///         "hour_of_day": 2,
///         "day_of_week": "SUNDAY",
///     },
///     hive_metastore_config={
///         "version": "3.1.2",
///     },
///     network_config={
///         "consumers": [{
///             "subnetwork": "projects/my-project-name/regions/us-central1/subnetworks/default",
///         }],
///     })
/// basic = gcp.dataproc.Cluster("basic",
///     name="jupyter-session-template",
///     region="us-central1",
///     cluster_config={
///         "software_config": {
///             "override_properties": {
///                 "dataproc:dataproc.allow.zero.workers": "true",
///                 "spark:spark.history.fs.logDirectory": bucket.name.apply(lambda name: f"gs://{name}/*/spark-job-history"),
///             },
///         },
///         "gce_cluster_config": {
///             "subnetwork": "default",
///         },
///         "endpoint_config": {
///             "enable_http_port_access": True,
///         },
///         "master_config": {
///             "num_instances": 1,
///             "machine_type": "e2-standard-2",
///             "disk_config": {
///                 "boot_disk_size_gb": 35,
///             },
///         },
///         "metastore_config": {
///             "dataproc_metastore_service": ms.name,
///         },
///     })
/// dataproc_session_templates_jupyter_full = gcp.dataproc.SessionTemplate("dataproc_session_templates_jupyter_full",
///     name="projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template",
///     location="us-central1",
///     labels={
///         "session_template_test": "terraform",
///     },
///     runtime_config={
///         "properties": {
///             "spark.dynamicAllocation.enabled": "false",
///             "spark.executor.instances": "2",
///         },
///         "version": "2.2",
///         "container_image": "us-docker.pkg.dev/my-project-name/s8s-spark-test-images/s8s-spark:latest",
///     },
///     environment_config={
///         "execution_config": {
///             "ttl": "3600s",
///             "network_tags": ["tag1"],
///             "kms_key": "example-key",
///             "subnetwork_uri": "default",
///             "service_account": f"{project.number}-compute@developer.gserviceaccount.com",
///             "staging_bucket": bucket.name,
///             "authentication_config": {
///                 "user_workload_authentication_type": "SERVICE_ACCOUNT",
///             },
///         },
///         "peripherals_config": {
///             "metastore_service": ms.name,
///             "spark_history_server_config": {
///                 "dataproc_cluster": basic.id,
///             },
///         },
///     },
///     jupyter_session={
///         "kernel": "PYTHON",
///         "display_name": "tf python kernel",
///     },
///     opts = pulumi.ResourceOptions(depends_on=[crypto_key_member1]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var gcsAccount = Gcp.Storage.GetProjectServiceAccount.Invoke();
///
///     var bucket = new Gcp.Storage.Bucket("bucket", new()
///     {
///         UniformBucketLevelAccess = true,
///         Name = "dataproc-bucket",
///         Location = "US",
///         ForceDestroy = true,
///     });
///
///     var cryptoKeyMember1 = new Gcp.Kms.CryptoKeyIAMMember("crypto_key_member_1", new()
///     {
///         CryptoKeyId = "example-key",
///         Role = "roles/cloudkms.cryptoKeyEncrypterDecrypter",
///         Member = $"serviceAccount:service-{project.Apply(getProjectResult => getProjectResult.Number)}@dataproc-accounts.iam.gserviceaccount.com",
///     });
///
///     var ms = new Gcp.Dataproc.MetastoreService("ms", new()
///     {
///         ServiceId = "jupyter-session-template",
///         Location = "us-central1",
///         Port = 9080,
///         Tier = "DEVELOPER",
///         MaintenanceWindow = new Gcp.Dataproc.Inputs.MetastoreServiceMaintenanceWindowArgs
///         {
///             HourOfDay = 2,
///             DayOfWeek = "SUNDAY",
///         },
///         HiveMetastoreConfig = new Gcp.Dataproc.Inputs.MetastoreServiceHiveMetastoreConfigArgs
///         {
///             Version = "3.1.2",
///         },
///         NetworkConfig = new Gcp.Dataproc.Inputs.MetastoreServiceNetworkConfigArgs
///         {
///             Consumers = new[]
///             {
///                 new Gcp.Dataproc.Inputs.MetastoreServiceNetworkConfigConsumerArgs
///                 {
///                     Subnetwork = "projects/my-project-name/regions/us-central1/subnetworks/default",
///                 },
///             },
///         },
///     });
///
///     var basic = new Gcp.Dataproc.Cluster("basic", new()
///     {
///         Name = "jupyter-session-template",
///         Region = "us-central1",
///         ClusterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigArgs
///         {
///             SoftwareConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigSoftwareConfigArgs
///             {
///                 OverrideProperties =
///                 {
///                     { "dataproc:dataproc.allow.zero.workers", "true" },
///                     { "spark:spark.history.fs.logDirectory", bucket.Name.Apply(name => $"gs://{name}/*/spark-job-history") },
///                 },
///             },
///             GceClusterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigGceClusterConfigArgs
///             {
///                 Subnetwork = "default",
///             },
///             EndpointConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigEndpointConfigArgs
///             {
///                 EnableHttpPortAccess = true,
///             },
///             MasterConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigArgs
///             {
///                 NumInstances = 1,
///                 MachineType = "e2-standard-2",
///                 DiskConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMasterConfigDiskConfigArgs
///                 {
///                     BootDiskSizeGb = 35,
///                 },
///             },
///             MetastoreConfig = new Gcp.Dataproc.Inputs.ClusterClusterConfigMetastoreConfigArgs
///             {
///                 DataprocMetastoreService = ms.Name,
///             },
///         },
///     });
///
///     var dataprocSessionTemplatesJupyterFull = new Gcp.Dataproc.SessionTemplate("dataproc_session_templates_jupyter_full", new()
///     {
///         Name = "projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template",
///         Location = "us-central1",
///         Labels =
///         {
///             { "session_template_test", "terraform" },
///         },
///         RuntimeConfig = new Gcp.Dataproc.Inputs.SessionTemplateRuntimeConfigArgs
///         {
///             Properties =
///             {
///                 { "spark.dynamicAllocation.enabled", "false" },
///                 { "spark.executor.instances", "2" },
///             },
///             Version = "2.2",
///             ContainerImage = "us-docker.pkg.dev/my-project-name/s8s-spark-test-images/s8s-spark:latest",
///         },
///         EnvironmentConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigArgs
///         {
///             ExecutionConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigExecutionConfigArgs
///             {
///                 Ttl = "3600s",
///                 NetworkTags = new[]
///                 {
///                     "tag1",
///                 },
///                 KmsKey = "example-key",
///                 SubnetworkUri = "default",
///                 ServiceAccount = $"{project.Apply(getProjectResult => getProjectResult.Number)}-compute@developer.gserviceaccount.com",
///                 StagingBucket = bucket.Name,
///                 AuthenticationConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigArgs
///                 {
///                     UserWorkloadAuthenticationType = "SERVICE_ACCOUNT",
///                 },
///             },
///             PeripheralsConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigPeripheralsConfigArgs
///             {
///                 MetastoreService = ms.Name,
///                 SparkHistoryServerConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfigArgs
///                 {
///                     DataprocCluster = basic.Id,
///                 },
///             },
///         },
///         JupyterSession = new Gcp.Dataproc.Inputs.SessionTemplateJupyterSessionArgs
///         {
///             Kernel = "PYTHON",
///             DisplayName = "tf python kernel",
///         },
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             cryptoKeyMember1,
///         },
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/storage"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = storage.GetProjectServiceAccount(ctx, &storage.GetProjectServiceAccountArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		bucket, err := storage.NewBucket(ctx, "bucket", &storage.BucketArgs{
/// 			UniformBucketLevelAccess: pulumi.Bool(true),
/// 			Name:                     pulumi.String("dataproc-bucket"),
/// 			Location:                 pulumi.String("US"),
/// 			ForceDestroy:             pulumi.Bool(true),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		cryptoKeyMember1, err := kms.NewCryptoKeyIAMMember(ctx, "crypto_key_member_1", &kms.CryptoKeyIAMMemberArgs{
/// 			CryptoKeyId: pulumi.String("example-key"),
/// 			Role:        pulumi.String("roles/cloudkms.cryptoKeyEncrypterDecrypter"),
/// 			Member:      pulumi.Sprintf("serviceAccount:service-%v@dataproc-accounts.iam.gserviceaccount.com", project.Number),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		ms, err := dataproc.NewMetastoreService(ctx, "ms", &dataproc.MetastoreServiceArgs{
/// 			ServiceId: pulumi.String("jupyter-session-template"),
/// 			Location:  pulumi.String("us-central1"),
/// 			Port:      pulumi.Int(9080),
/// 			Tier:      pulumi.String("DEVELOPER"),
/// 			MaintenanceWindow: &dataproc.MetastoreServiceMaintenanceWindowArgs{
/// 				HourOfDay: pulumi.Int(2),
/// 				DayOfWeek: pulumi.String("SUNDAY"),
/// 			},
/// 			HiveMetastoreConfig: &dataproc.MetastoreServiceHiveMetastoreConfigArgs{
/// 				Version: pulumi.String("3.1.2"),
/// 			},
/// 			NetworkConfig: &dataproc.MetastoreServiceNetworkConfigArgs{
/// 				Consumers: dataproc.MetastoreServiceNetworkConfigConsumerArray{
/// 					&dataproc.MetastoreServiceNetworkConfigConsumerArgs{
/// 						Subnetwork: pulumi.String("projects/my-project-name/regions/us-central1/subnetworks/default"),
/// 					},
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		basic, err := dataproc.NewCluster(ctx, "basic", &dataproc.ClusterArgs{
/// 			Name:   pulumi.String("jupyter-session-template"),
/// 			Region: pulumi.String("us-central1"),
/// 			ClusterConfig: &dataproc.ClusterClusterConfigArgs{
/// 				SoftwareConfig: &dataproc.ClusterClusterConfigSoftwareConfigArgs{
/// 					OverrideProperties: pulumi.StringMap{
/// 						"dataproc:dataproc.allow.zero.workers": pulumi.String("true"),
/// 						"spark:spark.history.fs.logDirectory": bucket.Name.ApplyT(func(name string) (string, error) {
/// 							return fmt.Sprintf("gs://%v/*/spark-job-history", name), nil
/// 						}).(pulumi.StringOutput),
/// 					},
/// 				},
/// 				GceClusterConfig: &dataproc.ClusterClusterConfigGceClusterConfigArgs{
/// 					Subnetwork: pulumi.String("default"),
/// 				},
/// 				EndpointConfig: &dataproc.ClusterClusterConfigEndpointConfigArgs{
/// 					EnableHttpPortAccess: pulumi.Bool(true),
/// 				},
/// 				MasterConfig: &dataproc.ClusterClusterConfigMasterConfigArgs{
/// 					NumInstances: pulumi.Int(1),
/// 					MachineType:  pulumi.String("e2-standard-2"),
/// 					DiskConfig: &dataproc.ClusterClusterConfigMasterConfigDiskConfigArgs{
/// 						BootDiskSizeGb: pulumi.Int(35),
/// 					},
/// 				},
/// 				MetastoreConfig: &dataproc.ClusterClusterConfigMetastoreConfigArgs{
/// 					DataprocMetastoreService: ms.Name,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dataproc.NewSessionTemplate(ctx, "dataproc_session_templates_jupyter_full", &dataproc.SessionTemplateArgs{
/// 			Name:     pulumi.String("projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template"),
/// 			Location: pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"session_template_test": pulumi.String("terraform"),
/// 			},
/// 			RuntimeConfig: &dataproc.SessionTemplateRuntimeConfigArgs{
/// 				Properties: pulumi.StringMap{
/// 					"spark.dynamicAllocation.enabled": pulumi.String("false"),
/// 					"spark.executor.instances":        pulumi.String("2"),
/// 				},
/// 				Version:        pulumi.String("2.2"),
/// 				ContainerImage: pulumi.String("us-docker.pkg.dev/my-project-name/s8s-spark-test-images/s8s-spark:latest"),
/// 			},
/// 			EnvironmentConfig: &dataproc.SessionTemplateEnvironmentConfigArgs{
/// 				ExecutionConfig: &dataproc.SessionTemplateEnvironmentConfigExecutionConfigArgs{
/// 					Ttl: pulumi.String("3600s"),
/// 					NetworkTags: pulumi.StringArray{
/// 						pulumi.String("tag1"),
/// 					},
/// 					KmsKey:         pulumi.String("example-key"),
/// 					SubnetworkUri:  pulumi.String("default"),
/// 					ServiceAccount: pulumi.Sprintf("%v-compute@developer.gserviceaccount.com", project.Number),
/// 					StagingBucket:  bucket.Name,
/// 					AuthenticationConfig: &dataproc.SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigArgs{
/// 						UserWorkloadAuthenticationType: pulumi.String("SERVICE_ACCOUNT"),
/// 					},
/// 				},
/// 				PeripheralsConfig: &dataproc.SessionTemplateEnvironmentConfigPeripheralsConfigArgs{
/// 					MetastoreService: ms.Name,
/// 					SparkHistoryServerConfig: &dataproc.SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfigArgs{
/// 						DataprocCluster: basic.ID(),
/// 					},
/// 				},
/// 			},
/// 			JupyterSession: &dataproc.SessionTemplateJupyterSessionArgs{
/// 				Kernel:      pulumi.String("PYTHON"),
/// 				DisplayName: pulumi.String("tf python kernel"),
/// 			},
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			cryptoKeyMember1,
/// 		}))
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.storage.StorageFunctions;
/// import com.pulumi.gcp.storage.inputs.GetProjectServiceAccountArgs;
/// import com.pulumi.gcp.storage.Bucket;
/// import com.pulumi.gcp.storage.BucketArgs;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMember;
/// import com.pulumi.gcp.kms.CryptoKeyIAMMemberArgs;
/// import com.pulumi.gcp.dataproc.MetastoreService;
/// import com.pulumi.gcp.dataproc.MetastoreServiceArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceMaintenanceWindowArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceHiveMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.MetastoreServiceNetworkConfigArgs;
/// import com.pulumi.gcp.dataproc.Cluster;
/// import com.pulumi.gcp.dataproc.ClusterArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigSoftwareConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigGceClusterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigEndpointConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMasterConfigDiskConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.ClusterClusterConfigMetastoreConfigArgs;
/// import com.pulumi.gcp.dataproc.SessionTemplate;
/// import com.pulumi.gcp.dataproc.SessionTemplateArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateRuntimeConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigExecutionConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigPeripheralsConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateJupyterSessionArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         final var gcsAccount = StorageFunctions.getProjectServiceAccount(GetProjectServiceAccountArgs.builder()
///             .build());
///
///         var bucket = new Bucket("bucket", BucketArgs.builder()
///             .uniformBucketLevelAccess(true)
///             .name("dataproc-bucket")
///             .location("US")
///             .forceDestroy(true)
///             .build());
///
///         var cryptoKeyMember1 = new CryptoKeyIAMMember("cryptoKeyMember1", CryptoKeyIAMMemberArgs.builder()
///             .cryptoKeyId("example-key")
///             .role("roles/cloudkms.cryptoKeyEncrypterDecrypter")
///             .member(String.format("serviceAccount:service-%s@dataproc-accounts.iam.gserviceaccount.com", project.number()))
///             .build());
///
///         var ms = new MetastoreService("ms", MetastoreServiceArgs.builder()
///             .serviceId("jupyter-session-template")
///             .location("us-central1")
///             .port(9080)
///             .tier("DEVELOPER")
///             .maintenanceWindow(MetastoreServiceMaintenanceWindowArgs.builder()
///                 .hourOfDay(2)
///                 .dayOfWeek("SUNDAY")
///                 .build())
///             .hiveMetastoreConfig(MetastoreServiceHiveMetastoreConfigArgs.builder()
///                 .version("3.1.2")
///                 .build())
///             .networkConfig(MetastoreServiceNetworkConfigArgs.builder()
///                 .consumers(MetastoreServiceNetworkConfigConsumerArgs.builder()
///                     .subnetwork("projects/my-project-name/regions/us-central1/subnetworks/default")
///                     .build())
///                 .build())
///             .build());
///
///         var basic = new Cluster("basic", ClusterArgs.builder()
///             .name("jupyter-session-template")
///             .region("us-central1")
///             .clusterConfig(ClusterClusterConfigArgs.builder()
///                 .softwareConfig(ClusterClusterConfigSoftwareConfigArgs.builder()
///                     .overrideProperties(Map.ofEntries(
///                         Map.entry("dataproc:dataproc.allow.zero.workers", "true"),
///                         Map.entry("spark:spark.history.fs.logDirectory", bucket.name().applyValue(_name -> String.format("gs://%s/*/spark-job-history", _name)))
///                     ))
///                     .build())
///                 .gceClusterConfig(ClusterClusterConfigGceClusterConfigArgs.builder()
///                     .subnetwork("default")
///                     .build())
///                 .endpointConfig(ClusterClusterConfigEndpointConfigArgs.builder()
///                     .enableHttpPortAccess(true)
///                     .build())
///                 .masterConfig(ClusterClusterConfigMasterConfigArgs.builder()
///                     .numInstances(1)
///                     .machineType("e2-standard-2")
///                     .diskConfig(ClusterClusterConfigMasterConfigDiskConfigArgs.builder()
///                         .bootDiskSizeGb(35)
///                         .build())
///                     .build())
///                 .metastoreConfig(ClusterClusterConfigMetastoreConfigArgs.builder()
///                     .dataprocMetastoreService(ms.name())
///                     .build())
///                 .build())
///             .build());
///
///         var dataprocSessionTemplatesJupyterFull = new SessionTemplate("dataprocSessionTemplatesJupyterFull", SessionTemplateArgs.builder()
///             .name("projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template")
///             .location("us-central1")
///             .labels(Map.of("session_template_test", "terraform"))
///             .runtimeConfig(SessionTemplateRuntimeConfigArgs.builder()
///                 .properties(Map.ofEntries(
///                     Map.entry("spark.dynamicAllocation.enabled", "false"),
///                     Map.entry("spark.executor.instances", "2")
///                 ))
///                 .version("2.2")
///                 .containerImage("us-docker.pkg.dev/my-project-name/s8s-spark-test-images/s8s-spark:latest")
///                 .build())
///             .environmentConfig(SessionTemplateEnvironmentConfigArgs.builder()
///                 .executionConfig(SessionTemplateEnvironmentConfigExecutionConfigArgs.builder()
///                     .ttl("3600s")
///                     .networkTags("tag1")
///                     .kmsKey("example-key")
///                     .subnetworkUri("default")
///                     .serviceAccount(String.format("%s-compute@developer.gserviceaccount.com", project.number()))
///                     .stagingBucket(bucket.name())
///                     .authenticationConfig(SessionTemplateEnvironmentConfigExecutionConfigAuthenticationConfigArgs.builder()
///                         .userWorkloadAuthenticationType("SERVICE_ACCOUNT")
///                         .build())
///                     .build())
///                 .peripheralsConfig(SessionTemplateEnvironmentConfigPeripheralsConfigArgs.builder()
///                     .metastoreService(ms.name())
///                     .sparkHistoryServerConfig(SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfigArgs.builder()
///                         .dataprocCluster(basic.id())
///                         .build())
///                     .build())
///                 .build())
///             .jupyterSession(SessionTemplateJupyterSessionArgs.builder()
///                 .kernel("PYTHON")
///                 .displayName("tf python kernel")
///                 .build())
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(cryptoKeyMember1)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   dataprocSessionTemplatesJupyterFull:
///     type: gcp:dataproc:SessionTemplate
///     name: dataproc_session_templates_jupyter_full
///     properties:
///       name: projects/my-project-name/locations/us-central1/sessionTemplates/jupyter-session-template
///       location: us-central1
///       labels:
///         session_template_test: terraform
///       runtimeConfig:
///         properties:
///           spark.dynamicAllocation.enabled: 'false'
///           spark.executor.instances: '2'
///         version: '2.2'
///         containerImage: us-docker.pkg.dev/my-project-name/s8s-spark-test-images/s8s-spark:latest
///       environmentConfig:
///         executionConfig:
///           ttl: 3600s
///           networkTags:
///             - tag1
///           kmsKey: example-key
///           subnetworkUri: default
///           serviceAccount: ${project.number}-compute@developer.gserviceaccount.com
///           stagingBucket: ${bucket.name}
///           authenticationConfig:
///             userWorkloadAuthenticationType: SERVICE_ACCOUNT
///         peripheralsConfig:
///           metastoreService: ${ms.name}
///           sparkHistoryServerConfig:
///             dataprocCluster: ${basic.id}
///       jupyterSession:
///         kernel: PYTHON
///         displayName: tf python kernel
///     options:
///       dependsOn:
///         - ${cryptoKeyMember1}
///   bucket:
///     type: gcp:storage:Bucket
///     properties:
///       uniformBucketLevelAccess: true
///       name: dataproc-bucket
///       location: US
///       forceDestroy: true
///   cryptoKeyMember1:
///     type: gcp:kms:CryptoKeyIAMMember
///     name: crypto_key_member_1
///     properties:
///       cryptoKeyId: example-key
///       role: roles/cloudkms.cryptoKeyEncrypterDecrypter
///       member: serviceAccount:service-${project.number}@dataproc-accounts.iam.gserviceaccount.com
///   basic:
///     type: gcp:dataproc:Cluster
///     properties:
///       name: jupyter-session-template
///       region: us-central1
///       clusterConfig:
///         softwareConfig:
///           overrideProperties:
///             dataproc:dataproc.allow.zero.workers: 'true'
///             spark:spark.history.fs.logDirectory: gs://${bucket.name}/*/spark-job-history
///         gceClusterConfig:
///           subnetwork: default
///         endpointConfig:
///           enableHttpPortAccess: true
///         masterConfig:
///           numInstances: 1
///           machineType: e2-standard-2
///           diskConfig:
///             bootDiskSizeGb: 35
///         metastoreConfig:
///           dataprocMetastoreService: ${ms.name}
///   ms:
///     type: gcp:dataproc:MetastoreService
///     properties:
///       serviceId: jupyter-session-template
///       location: us-central1
///       port: 9080
///       tier: DEVELOPER
///       maintenanceWindow:
///         hourOfDay: 2
///         dayOfWeek: SUNDAY
///       hiveMetastoreConfig:
///         version: 3.1.2
///       networkConfig:
///         consumers:
///           - subnetwork: projects/my-project-name/regions/us-central1/subnetworks/default
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
///   gcsAccount:
///     fn::invoke:
///       function: gcp:storage:getProjectServiceAccount
///       arguments: {}
/// ```
///
/// ### Dataproc Session Templates Spark Connect
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const exampleSessionTemplatesSparkConnect = new gcp.dataproc.SessionTemplate("example_session_templates_spark_connect", {
///     name: "projects/my-project-name/locations/us-central1/sessionTemplates/sc-session-template",
///     location: "us-central1",
///     labels: {
///         session_template_test: "terraform",
///     },
///     runtimeConfig: {
///         properties: {
///             "spark.dynamicAllocation.enabled": "false",
///             "spark.executor.instances": "2",
///         },
///     },
///     environmentConfig: {
///         executionConfig: {
///             subnetworkUri: "default",
///             ttl: "3600s",
///             networkTags: ["tag1"],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example_session_templates_spark_connect = gcp.dataproc.SessionTemplate("example_session_templates_spark_connect",
///     name="projects/my-project-name/locations/us-central1/sessionTemplates/sc-session-template",
///     location="us-central1",
///     labels={
///         "session_template_test": "terraform",
///     },
///     runtime_config={
///         "properties": {
///             "spark.dynamicAllocation.enabled": "false",
///             "spark.executor.instances": "2",
///         },
///     },
///     environment_config={
///         "execution_config": {
///             "subnetwork_uri": "default",
///             "ttl": "3600s",
///             "network_tags": ["tag1"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleSessionTemplatesSparkConnect = new Gcp.Dataproc.SessionTemplate("example_session_templates_spark_connect", new()
///     {
///         Name = "projects/my-project-name/locations/us-central1/sessionTemplates/sc-session-template",
///         Location = "us-central1",
///         Labels =
///         {
///             { "session_template_test", "terraform" },
///         },
///         RuntimeConfig = new Gcp.Dataproc.Inputs.SessionTemplateRuntimeConfigArgs
///         {
///             Properties =
///             {
///                 { "spark.dynamicAllocation.enabled", "false" },
///                 { "spark.executor.instances", "2" },
///             },
///         },
///         EnvironmentConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigArgs
///         {
///             ExecutionConfig = new Gcp.Dataproc.Inputs.SessionTemplateEnvironmentConfigExecutionConfigArgs
///             {
///                 SubnetworkUri = "default",
///                 Ttl = "3600s",
///                 NetworkTags = new[]
///                 {
///                     "tag1",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/dataproc"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := dataproc.NewSessionTemplate(ctx, "example_session_templates_spark_connect", &dataproc.SessionTemplateArgs{
/// 			Name:     pulumi.String("projects/my-project-name/locations/us-central1/sessionTemplates/sc-session-template"),
/// 			Location: pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"session_template_test": pulumi.String("terraform"),
/// 			},
/// 			RuntimeConfig: &dataproc.SessionTemplateRuntimeConfigArgs{
/// 				Properties: pulumi.StringMap{
/// 					"spark.dynamicAllocation.enabled": pulumi.String("false"),
/// 					"spark.executor.instances":        pulumi.String("2"),
/// 				},
/// 			},
/// 			EnvironmentConfig: &dataproc.SessionTemplateEnvironmentConfigArgs{
/// 				ExecutionConfig: &dataproc.SessionTemplateEnvironmentConfigExecutionConfigArgs{
/// 					SubnetworkUri: pulumi.String("default"),
/// 					Ttl:           pulumi.String("3600s"),
/// 					NetworkTags: pulumi.StringArray{
/// 						pulumi.String("tag1"),
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.gcp.dataproc.SessionTemplate;
/// import com.pulumi.gcp.dataproc.SessionTemplateArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateRuntimeConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigArgs;
/// import com.pulumi.gcp.dataproc.inputs.SessionTemplateEnvironmentConfigExecutionConfigArgs;
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
///         var exampleSessionTemplatesSparkConnect = new SessionTemplate("exampleSessionTemplatesSparkConnect", SessionTemplateArgs.builder()
///             .name("projects/my-project-name/locations/us-central1/sessionTemplates/sc-session-template")
///             .location("us-central1")
///             .labels(Map.of("session_template_test", "terraform"))
///             .runtimeConfig(SessionTemplateRuntimeConfigArgs.builder()
///                 .properties(Map.ofEntries(
///                     Map.entry("spark.dynamicAllocation.enabled", "false"),
///                     Map.entry("spark.executor.instances", "2")
///                 ))
///                 .build())
///             .environmentConfig(SessionTemplateEnvironmentConfigArgs.builder()
///                 .executionConfig(SessionTemplateEnvironmentConfigExecutionConfigArgs.builder()
///                     .subnetworkUri("default")
///                     .ttl("3600s")
///                     .networkTags("tag1")
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleSessionTemplatesSparkConnect:
///     type: gcp:dataproc:SessionTemplate
///     name: example_session_templates_spark_connect
///     properties:
///       name: projects/my-project-name/locations/us-central1/sessionTemplates/sc-session-template
///       location: us-central1
///       labels:
///         session_template_test: terraform
///       runtimeConfig:
///         properties:
///           spark.dynamicAllocation.enabled: 'false'
///           spark.executor.instances: '2'
///       environmentConfig:
///         executionConfig:
///           subnetworkUri: default
///           ttl: 3600s
///           networkTags:
///             - tag1
/// ```
///
///
/// ## Import
///
/// SessionTemplate can be imported using any of these accepted formats:
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, SessionTemplate can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataproc/sessionTemplate:SessionTemplate default {{name}}
/// ```
class SessionTemplate extends pulumi.CustomResource {
  /// The time when the session template was created.
  late final pulumi.Output<String> createTime;

  /// The email address of the user who created the session template.
  late final pulumi.Output<String> creator;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// Environment configuration for the session execution.
  /// Structure is documented below.
  late final pulumi.Output<SessionTemplateEnvironmentConfig?> environmentConfig;

  /// Jupyter configuration for an interactive session.
  /// Structure is documented below.
  late final pulumi.Output<SessionTemplateJupyterSession?> jupyterSession;

  /// The labels to associate with this session template.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location in which the session template will be created in.
  late final pulumi.Output<String?> location;

  /// The resource name of the session template in the following format:
  /// projects/{project}/locations/{location}/sessionTemplates/{template_id}
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Runtime configuration for the session template.
  /// Structure is documented below.
  late final pulumi.Output<SessionTemplateRuntimeConfig?> runtimeConfig;

  /// Spark connect configuration for an interactive session.
  late final pulumi.Output<Map<String, dynamic>?> sparkConnectSession;

  /// The time when the session template was updated.
  late final pulumi.Output<String> updateTime;

  /// A session template UUID (Unique Universal Identifier). The service generates this value when it creates the session template.
  late final pulumi.Output<String> uuid;

  /// Creates a new [SessionTemplate].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SessionTemplate]. {@macro pulumi_dataproc_session_template_session_template_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SessionTemplate(
    String name, {
    SessionTemplateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:dataproc/sessionTemplate:SessionTemplate',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.creator = registerOutput<String>('creator');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.environmentConfig =
        registerOutput<SessionTemplateEnvironmentConfig?>('environmentConfig');
    this.jupyterSession =
        registerOutput<SessionTemplateJupyterSession?>('jupyterSession');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.runtimeConfig =
        registerOutput<SessionTemplateRuntimeConfig?>('runtimeConfig');
    this.sparkConnectSession =
        registerOutput<Map<String, dynamic>?>('sparkConnectSession');
    this.updateTime = registerOutput<String>('updateTime');
    this.uuid = registerOutput<String>('uuid');
  }
}
