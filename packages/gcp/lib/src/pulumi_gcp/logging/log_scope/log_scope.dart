import 'package:pulumi/pulumi.dart';
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
class LogScope extends CustomResource {
  /// Output only. The creation timestamp of the log scopes.
  late final Output<String> createTime;

  /// Describes this log scopes.
  late final Output<String?> description;

  /// The location of the resource. The only supported location is global so far.
  late final Output<String> location;

  /// The resource name of the log scope. For example: \`projects/my-project/locations/global/logScopes/my-log-scope\`
  late final Output<String> name;

  /// The parent of the resource.
  late final Output<String> parent;

  /// Names of one or more parent resources : *  \`projects/[PROJECT_ID]\` May alternatively be one or more views : * \`projects/[PROJECT_ID]/locations/[LOCATION_ID]/buckets/[BUCKET_ID]/views/[VIEW_ID]\` A log scope can include a maximum of 50 projects and a maximum of 100 resources in total.
  late final Output<List<String>> resourceNames;

  /// Output only. The last update timestamp of the log scopes.
  late final Output<String> updateTime;

  LogScope(
    String name, {
    LogScopeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:logging/logScope:LogScope',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
