import 'package:pulumi/pulumi.dart';
import 'data_set_args.dart';

/// Provides a resource to manage AWS Data Exchange DataSets.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataExchange DataSets using their `id`. For example:
///
/// ```sh
/// $ pulumi import aws:dataexchange/dataSet:DataSet example 4fa784c7-ccb4-4dbf-ba4f-02198320daa1
/// ```
class DataSet extends CustomResource {
  /// The Amazon Resource Name of this data set.
  late final Output<String> arn;

  /// The type of asset that is added to a data set. Valid values include `API_GATEWAY_API`, `LAKE_FORMATION_DATA_PERMISSION`, `REDSHIFT_DATA_SHARE`, `S3_DATA_ACCESS`, `S3_SNAPSHOT`.
  late final Output<String> assetType;

  /// A description for the data set.
  late final Output<String> description;

  /// The name of the data set.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  DataSet(
    String name, {
    DataSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:dataexchange/dataSet:DataSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assetType = registerOutput<String>('assetType');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
