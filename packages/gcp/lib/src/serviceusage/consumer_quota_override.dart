import 'package:pulumi/pulumi.dart' as pulumi;
import 'consumer_quota_override_args.dart';

/// A consumer override is applied to the consumer on its own authority to limit its own quota usage.
/// Consumer overrides cannot be used to grant more quota than would be allowed by admin overrides,
/// producer overrides, or the default limit of the service.
///
/// To get more information about ConsumerQuotaOverride, see:
/// * How-to Guides
/// * [Managing Service Quota](https://cloud.google.com/service-usage/docs/manage-quota )
/// * [REST API documentation](https://cloud.google.com/service-usage/docs/reference/rest/v1beta1/services.consumerQuotaMetrics.limits.consumerOverrides)
///
/// ## Example Usage
///
/// ### Consumer Quota Override
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const myProject = new gcp.organizations.Project("my_project", {
///     name: "tf-test-project",
///     projectId: "quota",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const override = new gcp.serviceusage.ConsumerQuotaOverride("override", {
///     project: myProject.projectId,
///     service: "servicemanagement.googleapis.com",
///     metric: std.urlencode({
///         input: "servicemanagement.googleapis.com/default_requests",
///     }).then(invoke => invoke.result),
///     limit: std.urlencode({
///         input: "/min/project",
///     }).then(invoke => invoke.result),
///     overrideValue: "95",
///     force: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_project = gcp.organizations.Project("my_project",
///     name="tf-test-project",
///     project_id="quota",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// override = gcp.serviceusage.ConsumerQuotaOverride("override",
///     project=my_project.project_id,
///     service="servicemanagement.googleapis.com",
///     metric=std.urlencode(input="servicemanagement.googleapis.com/default_requests").result,
///     limit=std.urlencode(input="/min/project").result,
///     override_value="95",
///     force=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myProject = new Gcp.Organizations.Project("my_project", new()
///     {
///         Name = "tf-test-project",
///         ProjectId = "quota",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var @override = new Gcp.ServiceUsage.ConsumerQuotaOverride("override", new()
///     {
///         Project = myProject.ProjectId,
///         Service = "servicemanagement.googleapis.com",
///         Metric = Std.Urlencode.Invoke(new()
///         {
///             Input = "servicemanagement.googleapis.com/default_requests",
///         }).Apply(invoke => invoke.Result),
///         Limit = Std.Urlencode.Invoke(new()
///         {
///             Input = "/min/project",
///         }).Apply(invoke => invoke.Result),
///         OverrideValue = "95",
///         Force = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceusage"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myProject, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("tf-test-project"),
/// 			ProjectId:      pulumi.String("quota"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeUrlencode, err := std.Urlencode(ctx, &std.UrlencodeArgs{
/// 			Input: "servicemanagement.googleapis.com/default_requests",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeUrlencode1, err := std.Urlencode(ctx, &std.UrlencodeArgs{
/// 			Input: "/min/project",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceusage.NewConsumerQuotaOverride(ctx, "override", &serviceusage.ConsumerQuotaOverrideArgs{
/// 			Project:       myProject.ProjectId,
/// 			Service:       pulumi.String("servicemanagement.googleapis.com"),
/// 			Metric:        pulumi.String(invokeUrlencode.Result),
/// 			Limit:         pulumi.String(invokeUrlencode1.Result),
/// 			OverrideValue: pulumi.String("95"),
/// 			Force:         pulumi.Bool(true),
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
/// import com.pulumi.gcp.serviceusage.ConsumerQuotaOverride;
/// import com.pulumi.gcp.serviceusage.ConsumerQuotaOverrideArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.UrlencodeArgs;
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
///             .name("tf-test-project")
///             .projectId("quota")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var override = new ConsumerQuotaOverride("override", ConsumerQuotaOverrideArgs.builder()
///             .project(myProject.projectId())
///             .service("servicemanagement.googleapis.com")
///             .metric(StdFunctions.urlencode(UrlencodeArgs.builder()
///                 .input("servicemanagement.googleapis.com/default_requests")
///                 .build()).result())
///             .limit(StdFunctions.urlencode(UrlencodeArgs.builder()
///                 .input("/min/project")
///                 .build()).result())
///             .overrideValue("95")
///             .force(true)
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
///       name: tf-test-project
///       projectId: quota
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   override:
///     type: gcp:serviceusage:ConsumerQuotaOverride
///     properties:
///       project: ${myProject.projectId}
///       service: servicemanagement.googleapis.com
///       metric:
///         fn::invoke:
///           function: std:urlencode
///           arguments:
///             input: servicemanagement.googleapis.com/default_requests
///           return: result
///       limit:
///         fn::invoke:
///           function: std:urlencode
///           arguments:
///             input: /min/project
///           return: result
///       overrideValue: '95'
///       force: true
/// ```
///
/// ### Region Consumer Quota Override
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const myProject = new gcp.organizations.Project("my_project", {
///     name: "tf-test-project",
///     projectId: "quota",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const override = new gcp.serviceusage.ConsumerQuotaOverride("override", {
///     dimensions: {
///         region: "us-central1",
///     },
///     project: myProject.projectId,
///     service: "compute.googleapis.com",
///     metric: std.urlencode({
///         input: "compute.googleapis.com/n2_cpus",
///     }).then(invoke => invoke.result),
///     limit: std.urlencode({
///         input: "/project/region",
///     }).then(invoke => invoke.result),
///     overrideValue: "8",
///     force: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_project = gcp.organizations.Project("my_project",
///     name="tf-test-project",
///     project_id="quota",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// override = gcp.serviceusage.ConsumerQuotaOverride("override",
///     dimensions={
///         "region": "us-central1",
///     },
///     project=my_project.project_id,
///     service="compute.googleapis.com",
///     metric=std.urlencode(input="compute.googleapis.com/n2_cpus").result,
///     limit=std.urlencode(input="/project/region").result,
///     override_value="8",
///     force=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myProject = new Gcp.Organizations.Project("my_project", new()
///     {
///         Name = "tf-test-project",
///         ProjectId = "quota",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var @override = new Gcp.ServiceUsage.ConsumerQuotaOverride("override", new()
///     {
///         Dimensions =
///         {
///             { "region", "us-central1" },
///         },
///         Project = myProject.ProjectId,
///         Service = "compute.googleapis.com",
///         Metric = Std.Urlencode.Invoke(new()
///         {
///             Input = "compute.googleapis.com/n2_cpus",
///         }).Apply(invoke => invoke.Result),
///         Limit = Std.Urlencode.Invoke(new()
///         {
///             Input = "/project/region",
///         }).Apply(invoke => invoke.Result),
///         OverrideValue = "8",
///         Force = true,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceusage"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myProject, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("tf-test-project"),
/// 			ProjectId:      pulumi.String("quota"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeUrlencode, err := std.Urlencode(ctx, &std.UrlencodeArgs{
/// 			Input: "compute.googleapis.com/n2_cpus",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeUrlencode1, err := std.Urlencode(ctx, &std.UrlencodeArgs{
/// 			Input: "/project/region",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceusage.NewConsumerQuotaOverride(ctx, "override", &serviceusage.ConsumerQuotaOverrideArgs{
/// 			Dimensions: pulumi.StringMap{
/// 				"region": pulumi.String("us-central1"),
/// 			},
/// 			Project:       myProject.ProjectId,
/// 			Service:       pulumi.String("compute.googleapis.com"),
/// 			Metric:        pulumi.String(invokeUrlencode.Result),
/// 			Limit:         pulumi.String(invokeUrlencode1.Result),
/// 			OverrideValue: pulumi.String("8"),
/// 			Force:         pulumi.Bool(true),
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
/// import com.pulumi.gcp.serviceusage.ConsumerQuotaOverride;
/// import com.pulumi.gcp.serviceusage.ConsumerQuotaOverrideArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.UrlencodeArgs;
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
///             .name("tf-test-project")
///             .projectId("quota")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var override = new ConsumerQuotaOverride("override", ConsumerQuotaOverrideArgs.builder()
///             .dimensions(Map.of("region", "us-central1"))
///             .project(myProject.projectId())
///             .service("compute.googleapis.com")
///             .metric(StdFunctions.urlencode(UrlencodeArgs.builder()
///                 .input("compute.googleapis.com/n2_cpus")
///                 .build()).result())
///             .limit(StdFunctions.urlencode(UrlencodeArgs.builder()
///                 .input("/project/region")
///                 .build()).result())
///             .overrideValue("8")
///             .force(true)
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
///       name: tf-test-project
///       projectId: quota
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   override:
///     type: gcp:serviceusage:ConsumerQuotaOverride
///     properties:
///       dimensions:
///         region: us-central1
///       project: ${myProject.projectId}
///       service: compute.googleapis.com
///       metric:
///         fn::invoke:
///           function: std:urlencode
///           arguments:
///             input: compute.googleapis.com/n2_cpus
///           return: result
///       limit:
///         fn::invoke:
///           function: std:urlencode
///           arguments:
///             input: /project/region
///           return: result
///       overrideValue: '8'
///       force: true
/// ```
///
/// ### Consumer Quota Override Custom Dimension
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const myProject = new gcp.organizations.Project("my_project", {
///     name: "tf-test-project",
///     projectId: "quota",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const override = new gcp.serviceusage.ConsumerQuotaOverride("override", {
///     project: myProject.projectId,
///     service: "libraryagent.googleapis.com",
///     metric: std.urlencode({
///         input: "libraryagent.googleapis.com/borrows",
///     }).then(invoke => invoke.result),
///     limit: std.urlencode({
///         input: "/author/project",
///     }).then(invoke => invoke.result),
///     overrideValue: "1",
///     force: true,
///     dimensions: {
///         author: "larry",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// my_project = gcp.organizations.Project("my_project",
///     name="tf-test-project",
///     project_id="quota",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// override = gcp.serviceusage.ConsumerQuotaOverride("override",
///     project=my_project.project_id,
///     service="libraryagent.googleapis.com",
///     metric=std.urlencode(input="libraryagent.googleapis.com/borrows").result,
///     limit=std.urlencode(input="/author/project").result,
///     override_value="1",
///     force=True,
///     dimensions={
///         "author": "larry",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var myProject = new Gcp.Organizations.Project("my_project", new()
///     {
///         Name = "tf-test-project",
///         ProjectId = "quota",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var @override = new Gcp.ServiceUsage.ConsumerQuotaOverride("override", new()
///     {
///         Project = myProject.ProjectId,
///         Service = "libraryagent.googleapis.com",
///         Metric = Std.Urlencode.Invoke(new()
///         {
///             Input = "libraryagent.googleapis.com/borrows",
///         }).Apply(invoke => invoke.Result),
///         Limit = Std.Urlencode.Invoke(new()
///         {
///             Input = "/author/project",
///         }).Apply(invoke => invoke.Result),
///         OverrideValue = "1",
///         Force = true,
///         Dimensions =
///         {
///             { "author", "larry" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/serviceusage"
/// 	"github.com/pulumi/pulumi-std/sdk/go/std"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		myProject, err := organizations.NewProject(ctx, "my_project", &organizations.ProjectArgs{
/// 			Name:           pulumi.String("tf-test-project"),
/// 			ProjectId:      pulumi.String("quota"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeUrlencode, err := std.Urlencode(ctx, &std.UrlencodeArgs{
/// 			Input: "libraryagent.googleapis.com/borrows",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		invokeUrlencode1, err := std.Urlencode(ctx, &std.UrlencodeArgs{
/// 			Input: "/author/project",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = serviceusage.NewConsumerQuotaOverride(ctx, "override", &serviceusage.ConsumerQuotaOverrideArgs{
/// 			Project:       myProject.ProjectId,
/// 			Service:       pulumi.String("libraryagent.googleapis.com"),
/// 			Metric:        pulumi.String(invokeUrlencode.Result),
/// 			Limit:         pulumi.String(invokeUrlencode1.Result),
/// 			OverrideValue: pulumi.String("1"),
/// 			Force:         pulumi.Bool(true),
/// 			Dimensions: pulumi.StringMap{
/// 				"author": pulumi.String("larry"),
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.serviceusage.ConsumerQuotaOverride;
/// import com.pulumi.gcp.serviceusage.ConsumerQuotaOverrideArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.UrlencodeArgs;
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
///             .name("tf-test-project")
///             .projectId("quota")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var override = new ConsumerQuotaOverride("override", ConsumerQuotaOverrideArgs.builder()
///             .project(myProject.projectId())
///             .service("libraryagent.googleapis.com")
///             .metric(StdFunctions.urlencode(UrlencodeArgs.builder()
///                 .input("libraryagent.googleapis.com/borrows")
///                 .build()).result())
///             .limit(StdFunctions.urlencode(UrlencodeArgs.builder()
///                 .input("/author/project")
///                 .build()).result())
///             .overrideValue("1")
///             .force(true)
///             .dimensions(Map.of("author", "larry"))
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
///       name: tf-test-project
///       projectId: quota
///       orgId: '123456789'
///       deletionPolicy: DELETE
///   override:
///     type: gcp:serviceusage:ConsumerQuotaOverride
///     properties:
///       project: ${myProject.projectId}
///       service: libraryagent.googleapis.com
///       metric:
///         fn::invoke:
///           function: std:urlencode
///           arguments:
///             input: libraryagent.googleapis.com/borrows
///           return: result
///       limit:
///         fn::invoke:
///           function: std:urlencode
///           arguments:
///             input: /author/project
///           return: result
///       overrideValue: '1'
///       force: true
///       dimensions:
///         author: larry
/// ```
///
///
/// ## Import
///
/// ConsumerQuotaOverride can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/services/{{service}}/consumerQuotaMetrics/{{metric}}/limits/{{limit}}/consumerOverrides/{{name}}`
///
/// * `services/{{service}}/consumerQuotaMetrics/{{metric}}/limits/{{limit}}/consumerOverrides/{{name}}`
///
/// * `{{service}}/{{metric}}/{{limit}}/{{name}}`
///
/// When using the `pulumi import` command, ConsumerQuotaOverride can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:serviceusage/consumerQuotaOverride:ConsumerQuotaOverride default projects/{{project}}/services/{{service}}/consumerQuotaMetrics/{{metric}}/limits/{{limit}}/consumerOverrides/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:serviceusage/consumerQuotaOverride:ConsumerQuotaOverride default services/{{service}}/consumerQuotaMetrics/{{metric}}/limits/{{limit}}/consumerOverrides/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:serviceusage/consumerQuotaOverride:ConsumerQuotaOverride default {{service}}/{{metric}}/{{limit}}/{{name}}
/// ```
class ConsumerQuotaOverride extends pulumi.CustomResource {
  /// If this map is nonempty, then this override applies only to specific values for dimensions defined in the limit unit.
  late final pulumi.Output<Map<String, String>?> dimensions;
  /// If the new quota would decrease the existing quota by more than 10%, the request is rejected.
  /// If `force` is `true`, that safety check is ignored.
  late final pulumi.Output<bool?> force;
  /// The limit on the metric, e.g. `/project/region`.
  /// > Make sure that `limit` is in a format that doesn't start with `1/` or contain curly braces.
  /// E.g. use `/project/user` instead of `1/{project}/{user}`.
  late final pulumi.Output<String> limit;
  /// The metric that should be limited, e.g. `compute.googleapis.com/cpus`.
  late final pulumi.Output<String> metric;
  /// The server-generated name of the quota override.
  late final pulumi.Output<String> name;
  /// The overriding quota limit value. Can be any nonnegative integer, or -1 (unlimited quota).
  late final pulumi.Output<String> overrideValue;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// The service that the metrics belong to, e.g. `compute.googleapis.com`.
  late final pulumi.Output<String> service;

  /// Creates a new [ConsumerQuotaOverride].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConsumerQuotaOverride]. {@macro pulumi_serviceusage_consumer_quota_override_consumer_quota_override_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConsumerQuotaOverride(
    String name, {
    ConsumerQuotaOverrideArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:serviceusage/consumerQuotaOverride:ConsumerQuotaOverride',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.dimensions = registerOutput<Map<String, String>?>('dimensions');
    this.force = registerOutput<bool?>('force');
    this.limit = registerOutput<String>('limit');
    this.metric = registerOutput<String>('metric');
    this.name = registerOutput<String>('name');
    this.overrideValue = registerOutput<String>('overrideValue');
    this.project = registerOutput<String>('project');
    this.service = registerOutput<String>('service');
  }
}
