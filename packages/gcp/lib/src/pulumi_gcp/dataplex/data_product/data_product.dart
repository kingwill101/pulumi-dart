import 'package:pulumi/pulumi.dart';
import '../data_product_access_group/data_product_access_group.dart';
import 'data_product_args.dart';

/// A data product is a curated collection of data assets, packaged to address
/// specific use cases.
///
/// To get more information about DataProduct, see:
///
/// * [API documentation](https://cloud.google.com/dataplex/docs/reference/rest/v1/projects.locations.dataProducts)
/// * How-to Guides
/// * [Introduction to Data Products](https://cloud.google.com/dataplex/docs/data-products-overview)
///
/// ## Example Usage
///
/// ### Dataplex Data Product Basic
///
///
///
/// ### Dataplex Data Product Full
///
///
///
///
/// ## Import
///
/// DataProduct can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}`
///
/// * `{{project}}/{{location}}/{{data_product_id}}`
///
/// * `{{location}}/{{data_product_id}}`
///
/// * `{{data_product_id}}`
///
/// When using the `pulumi import` command, DataProduct can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default projects/{{project}}/locations/{{location}}/dataProducts/{{data_product_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default {{project}}/{{location}}/{{data_product_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default {{location}}/{{data_product_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:dataplex/dataProduct:DataProduct default {{data_product_id}}
/// ```
class DataProduct extends CustomResource {
  /// Custom user defined access groups at the data product level.
  /// Structure is documented below.
  late final Output<List<DataProductAccessGroup>?> accessGroups;

  /// Number of associated data assets.
  late final Output<int> assetCount;

  /// Creation timestamp.
  late final Output<String> createTime;

  /// The ID of the data product.
  late final Output<String> dataProductId;

  /// Description of the data product.
  late final Output<String?> description;

  /// User-friendly display name.
  late final Output<String> displayName;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Checksum for concurrency control.
  late final Output<String> etag;

  /// User-defined labels.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// The location for the data product.
  late final Output<String> location;

  /// Emails of the owners.
  late final Output<List<String>> ownerEmails;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// System generated unique ID.
  late final Output<String> uid;

  /// Last update timestamp.
  late final Output<String> updateTime;

  DataProduct(
    String name, {
    DataProductArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:dataplex/dataProduct:DataProduct',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessGroups =
        registerOutput<List<DataProductAccessGroup>?>('accessGroups');
    this.assetCount = registerOutput<int>('assetCount');
    this.createTime = registerOutput<String>('createTime');
    this.dataProductId = registerOutput<String>('dataProductId');
    this.description = registerOutput<String?>('description');
    this.displayName = registerOutput<String>('displayName');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.ownerEmails = registerOutput<List<String>>('ownerEmails');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
