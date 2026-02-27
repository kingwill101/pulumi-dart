import 'package:pulumi/pulumi.dart' as pulumi;
import '../linked_dataset_bigquery_dataset/linked_dataset_bigquery_dataset.dart';
import 'linked_dataset_args.dart';

/// Describes a BigQuery linked dataset
///
///
/// To get more information about LinkedDataset, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/locations.buckets.links)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/logging/docs/apis)
///
/// ## Example Usage
///
/// ### Logging Linked Dataset Basic
///
///
///
/// ### Logging Linked Dataset All Params
///
///
///
///
/// ## Import
///
/// LinkedDataset can be imported using any of these accepted formats:
///
/// * `{{parent}}/locations/{{location}}/buckets/{{bucket}}/links/{{link_id}}`
///
/// When using the `pulumi import` command, LinkedDataset can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/linkedDataset:LinkedDataset default {{parent}}/locations/{{location}}/buckets/{{bucket}}/links/{{link_id}}
/// ```
class LinkedDataset extends pulumi.CustomResource {
  /// The information of a BigQuery Dataset. When a link is created, a BigQuery dataset is created along
  /// with it, in the same project as the LogBucket it's linked to. This dataset will also have BigQuery
  /// Views corresponding to the LogViews in the bucket.
  /// Structure is documented below.
  late final pulumi.Output<List<LinkedDatasetBigqueryDataset>> bigqueryDatasets;

  /// The bucket to which the linked dataset is attached.
  late final pulumi.Output<String> bucket;

  /// Output only. The creation timestamp of the link. A timestamp in RFC3339 UTC "Zulu" format,
  /// with nanosecond resolution and up to nine fractional digits. Examples: "2014-10-02T15:01:23Z"
  /// and "2014-10-02T15:01:23.045123456Z".
  late final pulumi.Output<String> createTime;

  /// Describes this link. The maximum length of the description is 8000 characters.
  late final pulumi.Output<String?> description;

  /// Output only. The linked dataset lifecycle state.
  late final pulumi.Output<String> lifecycleState;

  /// The id of the linked dataset.
  late final pulumi.Output<String> linkId;

  /// The location of the linked dataset.
  late final pulumi.Output<String> location;

  /// The resource name of the linked dataset. The name can have up to 100 characters. A valid link id
  /// (at the end of the link name) must only have alphanumeric characters and underscores within it.
  late final pulumi.Output<String> name;

  /// The parent of the linked dataset.
  late final pulumi.Output<String> parent;

  LinkedDataset(
    String name, {
    LinkedDatasetArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:logging/linkedDataset:LinkedDataset',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.bigqueryDatasets =
        registerOutput<List<LinkedDatasetBigqueryDataset>>('bigqueryDatasets');
    this.bucket = registerOutput<String>('bucket');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.lifecycleState = registerOutput<String>('lifecycleState');
    this.linkId = registerOutput<String>('linkId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
  }
}
