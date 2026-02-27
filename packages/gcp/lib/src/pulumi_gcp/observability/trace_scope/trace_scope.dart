import 'package:pulumi/pulumi.dart';
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
class TraceScope extends CustomResource {
  /// The creation timestamp of the trace scope.
  late final Output<String> createTime;

  /// Describes this trace scope.
  /// The maximum length of the description is 8000 characters.
  late final Output<String?> description;

  /// GCP region the TraceScope is stored in. Only `global` is supported.
  late final Output<String> location;

  /// Identifier. The resource name of the trace scope.
  /// For example:
  /// projects/my-project/locations/global/traceScopes/my-trace-scope
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Names of the projects that are included in this trace scope.
  /// *  `projects/[PROJECT_ID]`
  /// A trace scope can include a maximum of 20 projects.
  late final Output<List<String>> resourceNames;

  /// A client-assigned identifier for the trace scope.
  late final Output<String> traceScopeId;

  /// The last update timestamp of the trace scope.
  late final Output<String> updateTime;

  TraceScope(
    String name, {
    TraceScopeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:observability/traceScope:TraceScope',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
