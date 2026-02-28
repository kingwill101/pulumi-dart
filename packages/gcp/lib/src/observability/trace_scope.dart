import 'package:pulumi/pulumi.dart' as pulumi;
import 'trace_scope_args.dart';

/// A trace scope is a collection of resources whose traces are queried together
///
///
/// ## Example Usage
///
/// ### Observability Trace Scope Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const project_2 = new gcp.organizations.Project("project-2", {
///     projectId: "tf-test_12125",
///     name: "tf-test_82749",
///     orgId: "123456789",
///     deletionPolicy: "DELETE",
/// });
/// const observabilityTraceScope = new gcp.observability.TraceScope("observability_trace_scope", {
///     traceScopeId: "test-scope",
///     location: "global",
///     resourceNames: [
///         project.then(project => `projects/${project.projectId}`),
///         pulumi.interpolate`projects/${project_2.projectId}`,
///     ],
///     description: "A trace scope configured with Terraform",
/// }, {
///     dependsOn: [project_2],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// project_2 = gcp.organizations.Project("project-2",
///     project_id="tf-test_12125",
///     name="tf-test_82749",
///     org_id="123456789",
///     deletion_policy="DELETE")
/// observability_trace_scope = gcp.observability.TraceScope("observability_trace_scope",
///     trace_scope_id="test-scope",
///     location="global",
///     resource_names=[
///         f"projects/{project.project_id}",
///         project_2.project_id.apply(lambda project_id: f"projects/{project_id}"),
///     ],
///     description="A trace scope configured with Terraform",
///     opts = pulumi.ResourceOptions(depends_on=[project_2]))
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
///     var project_2 = new Gcp.Organizations.Project("project-2", new()
///     {
///         ProjectId = "tf-test_12125",
///         Name = "tf-test_82749",
///         OrgId = "123456789",
///         DeletionPolicy = "DELETE",
///     });
///
///     var observabilityTraceScope = new Gcp.Observability.TraceScope("observability_trace_scope", new()
///     {
///         TraceScopeId = "test-scope",
///         Location = "global",
///         ResourceNames = new[]
///         {
///             $"projects/{project.Apply(getProjectResult => getProjectResult.ProjectId)}",
///             project_2.ProjectId.Apply(projectId => $"projects/{projectId}"),
///         },
///         Description = "A trace scope configured with Terraform",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             project_2,
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
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/observability"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		project, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		project_2, err := organizations.NewProject(ctx, "project-2", &organizations.ProjectArgs{
/// 			ProjectId:      pulumi.String("tf-test_12125"),
/// 			Name:           pulumi.String("tf-test_82749"),
/// 			OrgId:          pulumi.String("123456789"),
/// 			DeletionPolicy: pulumi.String("DELETE"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = observability.NewTraceScope(ctx, "observability_trace_scope", &observability.TraceScopeArgs{
/// 			TraceScopeId: pulumi.String("test-scope"),
/// 			Location:     pulumi.String("global"),
/// 			ResourceNames: pulumi.StringArray{
/// 				pulumi.Sprintf("projects/%v", project.ProjectId),
/// 				project_2.ProjectId.ApplyT(func(projectId string) (string, error) {
/// 					return fmt.Sprintf("projects/%v", projectId), nil
/// 				}).(pulumi.StringOutput),
/// 			},
/// 			Description: pulumi.String("A trace scope configured with Terraform"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			project_2,
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
/// import com.pulumi.gcp.organizations.Project;
/// import com.pulumi.gcp.organizations.ProjectArgs;
/// import com.pulumi.gcp.observability.TraceScope;
/// import com.pulumi.gcp.observability.TraceScopeArgs;
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
///         var project_2 = new Project("project-2", ProjectArgs.builder()
///             .projectId("tf-test_12125")
///             .name("tf-test_82749")
///             .orgId("123456789")
///             .deletionPolicy("DELETE")
///             .build());
///
///         var observabilityTraceScope = new TraceScope("observabilityTraceScope", TraceScopeArgs.builder()
///             .traceScopeId("test-scope")
///             .location("global")
///             .resourceNames(
///                 String.format("projects/%s", project.projectId()),
///                 project_2.projectId().applyValue(_projectId -> String.format("projects/%s", _projectId)))
///             .description("A trace scope configured with Terraform")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(project_2)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   observabilityTraceScope:
///     type: gcp:observability:TraceScope
///     name: observability_trace_scope
///     properties:
///       traceScopeId: test-scope
///       location: global
///       resourceNames:
///         - projects/${project.projectId}
///         - projects/${["project-2"].projectId}
///       description: A trace scope configured with Terraform
///     options:
///       dependsOn:
///         - ${["project-2"]}
///   project-2:
///     type: gcp:organizations:Project
///     properties:
///       projectId: tf-test_12125
///       name: tf-test_82749
///       orgId: '123456789'
///       deletionPolicy: DELETE
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// TraceScope can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/traceScopes/{{trace_scope_id}}`
///
/// * `{{project}}/{{location}}/{{trace_scope_id}}`
///
/// * `{{location}}/{{trace_scope_id}}`
///
/// When using the `pulumi import` command, TraceScope can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:observability/traceScope:TraceScope default projects/{{project}}/locations/{{location}}/traceScopes/{{trace_scope_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:observability/traceScope:TraceScope default {{project}}/{{location}}/{{trace_scope_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:observability/traceScope:TraceScope default {{location}}/{{trace_scope_id}}
/// ```
class TraceScope extends pulumi.CustomResource {
  /// The creation timestamp of the trace scope.
  late final pulumi.Output<String> createTime;
  /// Describes this trace scope.
  /// The maximum length of the description is 8000 characters.
  late final pulumi.Output<String?> description;
  /// GCP region the TraceScope is stored in. Only `global` is supported.
  late final pulumi.Output<String> location;
  /// Identifier. The resource name of the trace scope.
  /// For example:
  /// projects/my-project/locations/global/traceScopes/my-trace-scope
  late final pulumi.Output<String> name;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;
  /// Names of the projects that are included in this trace scope.
  /// *  `projects/[PROJECT_ID]`
  /// A trace scope can include a maximum of 20 projects.
  late final pulumi.Output<List<String>> resourceNames;
  /// A client-assigned identifier for the trace scope.
  late final pulumi.Output<String> traceScopeId;
  /// The last update timestamp of the trace scope.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [TraceScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TraceScope]. {@macro pulumi_observability_trace_scope_trace_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TraceScope(
    String name, {
    TraceScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:observability/traceScope:TraceScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resourceNames = registerOutput<List<String>>('resourceNames');
    this.traceScopeId = registerOutput<String>('traceScopeId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
