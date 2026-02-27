import 'package:pulumi/pulumi.dart';
import '../place_index_data_source_configuration/place_index_data_source_configuration.dart';
import 'place_index_args.dart';

/// Provides a Location Service Place Index.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.location.PlaceIndex` resources using the place index name. For example:
///
/// ```sh
/// $ pulumi import aws:location/placeIndex:PlaceIndex example example
/// ```
class PlaceIndex extends CustomResource {
  /// The timestamp for when the place index resource was created in ISO 8601 format.
  late final Output<String> createTime;

  /// Specifies the geospatial data provider for the new place index.
  late final Output<String> dataSource;

  /// Configuration block with the data storage option chosen for requesting Places. Detailed below.
  late final Output<PlaceIndexDataSourceConfiguration> dataSourceConfiguration;

  /// The optional description for the place index resource.
  late final Output<String?> description;

  /// The Amazon Resource Name (ARN) for the place index resource. Used to specify a resource across AWS.
  late final Output<String> indexArn;

  /// The name of the place index resource.
  ///
  /// The following arguments are optional:
  late final Output<String> indexName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the place index. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The timestamp for when the place index resource was last update in ISO 8601.
  late final Output<String> updateTime;

  PlaceIndex(
    String name, {
    PlaceIndexArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:location/placeIndex:PlaceIndex',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.dataSource = registerOutput<String>('dataSource');
    this.dataSourceConfiguration =
        registerOutput<PlaceIndexDataSourceConfiguration>(
            'dataSourceConfiguration');
    this.description = registerOutput<String?>('description');
    this.indexArn = registerOutput<String>('indexArn');
    this.indexName = registerOutput<String>('indexName');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
