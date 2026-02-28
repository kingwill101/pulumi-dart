import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_scope_args.dart';

/// Describes a group of resources to read log entries from
///
///
/// To get more information about LogScope, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.locations.logScopes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/logging/docs/apis)
///
/// ## Example Usage
///
/// ### Logging Log Scope Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const loggingLogScope = new gcp.logging.LogScope("logging_log_scope", {
///     parent: "projects/my-project-name",
///     location: "global",
///     name: "projects/my-project-name/locations/global/logScopes/my-log-scope",
///     resourceNames: [
///         "projects/my-project-name",
///         "projects/my-project-name/locations/global/buckets/_Default/views/view1",
///         "projects/my-project-name/locations/global/buckets/_Default/views/view2",
///     ],
///     description: "A log scope configured with Terraform",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// logging_log_scope = gcp.logging.LogScope("logging_log_scope",
///     parent="projects/my-project-name",
///     location="global",
///     name="projects/my-project-name/locations/global/logScopes/my-log-scope",
///     resource_names=[
///         "projects/my-project-name",
///         "projects/my-project-name/locations/global/buckets/_Default/views/view1",
///         "projects/my-project-name/locations/global/buckets/_Default/views/view2",
///     ],
///     description="A log scope configured with Terraform")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var loggingLogScope = new Gcp.Logging.LogScope("logging_log_scope", new()
///     {
///         Parent = "projects/my-project-name",
///         Location = "global",
///         Name = "projects/my-project-name/locations/global/logScopes/my-log-scope",
///         ResourceNames = new[]
///         {
///             "projects/my-project-name",
///             "projects/my-project-name/locations/global/buckets/_Default/views/view1",
///             "projects/my-project-name/locations/global/buckets/_Default/views/view2",
///         },
///         Description = "A log scope configured with Terraform",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := logging.NewLogScope(ctx, "logging_log_scope", &logging.LogScopeArgs{
/// 			Parent:   pulumi.String("projects/my-project-name"),
/// 			Location: pulumi.String("global"),
/// 			Name:     pulumi.String("projects/my-project-name/locations/global/logScopes/my-log-scope"),
/// 			ResourceNames: pulumi.StringArray{
/// 				pulumi.String("projects/my-project-name"),
/// 				pulumi.String("projects/my-project-name/locations/global/buckets/_Default/views/view1"),
/// 				pulumi.String("projects/my-project-name/locations/global/buckets/_Default/views/view2"),
/// 			},
/// 			Description: pulumi.String("A log scope configured with Terraform"),
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
/// import com.pulumi.gcp.logging.LogScope;
/// import com.pulumi.gcp.logging.LogScopeArgs;
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
///         var loggingLogScope = new LogScope("loggingLogScope", LogScopeArgs.builder()
///             .parent("projects/my-project-name")
///             .location("global")
///             .name("projects/my-project-name/locations/global/logScopes/my-log-scope")
///             .resourceNames(
///                 "projects/my-project-name",
///                 "projects/my-project-name/locations/global/buckets/_Default/views/view1",
///                 "projects/my-project-name/locations/global/buckets/_Default/views/view2")
///             .description("A log scope configured with Terraform")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   loggingLogScope:
///     type: gcp:logging:LogScope
///     name: logging_log_scope
///     properties:
///       parent: projects/my-project-name
///       location: global
///       name: projects/my-project-name/locations/global/logScopes/my-log-scope
///       resourceNames:
///         - projects/my-project-name
///         - projects/my-project-name/locations/global/buckets/_Default/views/view1
///         - projects/my-project-name/locations/global/buckets/_Default/views/view2
///       description: A log scope configured with Terraform
/// ```
///
///
/// ## Import
///
/// LogScope can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/logScopes/{{name}}`
///
/// When using the `pulumi import` command, LogScope can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/logScope:LogScope default {{parent}}/locations/{{location}}/logScopes/{{name}}
/// ```
class LogScope extends pulumi.CustomResource {
  /// Output only. The creation timestamp of the log scopes.
  late final pulumi.Output<String> createTime;
  /// Describes this log scopes.
  late final pulumi.Output<String?> description;
  /// The location of the resource. The only supported location is global so far.
  late final pulumi.Output<String> location;
  /// The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  late final pulumi.Output<String> name;
  /// The parent of the resource.
  late final pulumi.Output<String> parent;
  /// Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  late final pulumi.Output<List<String>> resourceNames;
  /// Output only. The last update timestamp of the log scopes.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [LogScope].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LogScope]. {@macro pulumi_logging_log_scope_log_scope_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LogScope(
    String name, {
    LogScopeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/logScope:LogScope',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.resourceNames = registerOutput<List<String>>('resourceNames');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
