import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_view_args.dart';

/// Describes a view over log entries in a bucket.
///
///
/// To get more information about LogView, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/projects.locations.buckets.views)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/logging/docs/apis)
///
/// ## Example Usage
///
/// ### Logging Log View Basic
///
///
///
///
/// ## Import
///
/// LogView can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/buckets/{{bucket}}/views/{{name}}`
///
/// When using the `pulumi import` command, LogView can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/logView:LogView default {{parent}}/locations/{{location}}/buckets/{{bucket}}/views/{{name}}
/// ```
class LogView extends pulumi.CustomResource {
  /// The bucket of the resource
  late final pulumi.Output<String> bucket;

  /// Output only. The creation timestamp of the view.
  late final pulumi.Output<String> createTime;

  /// Describes this view.
  late final pulumi.Output<String?> description;

  /// Filter that restricts which log entries in a bucket are visible in this view. Filters are restricted to be a logical AND of ==/!= of any of the following: - originating project/folder/organization/billing account. - resource type - log id For example: SOURCE("projects/myproject") AND resource.type = "gce_instance" AND LOG_ID("stdout")
  late final pulumi.Output<String?> filter;

  /// The location of the resource. The supported locations are: global, us-central1, us-east1, us-west1, asia-east1, europe-west1.
  late final pulumi.Output<String> location;

  /// The resource name of the view. For example: \`projects/my-project/locations/global/buckets/my-bucket/views/my-view\`
  late final pulumi.Output<String> name;

  /// The parent of the resource.
  late final pulumi.Output<String> parent;

  /// Output only. The last update timestamp of the view.
  late final pulumi.Output<String> updateTime;

  LogView(
    String name, {
    LogViewArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/logView:LogView',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.filter = registerOutput<String?>('filter');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
