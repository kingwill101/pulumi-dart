import 'package:pulumi/pulumi.dart';
import 'data_catalog_args.dart';

/// Provides an Athena data catalog.
///
/// More information about Athena and Athena data catalogs can be found in the [Athena User Guide](https://docs.aws.amazon.com/athena/latest/ug/what-is.html).
///
/// > **Tip:** for a more detailed explanation on the usage of `parameters`, see the [DataCatalog API documentation](https://docs.aws.amazon.com/athena/latest/APIReference/API_DataCatalog.html)
///
/// ## Example Usage
///
///
///
/// ### Hive based Data Catalog
///
///
///
/// ### Glue based Data Catalog
///
///
///
/// ### Lambda based Data Catalog
///
///
///
/// ## Import
///
/// Using `pulumi import`, import data catalogs using their `name`. For example:
///
/// ```sh
/// $ pulumi import aws:athena/dataCatalog:DataCatalog example example-data-catalog
/// ```
class DataCatalog extends CustomResource {
  /// ARN of the data catalog.
  late final Output<String> arn;

  /// Description of the data catalog.
  late final Output<String> description;

  /// Name of the data catalog. The catalog name must be unique for the AWS account and can use a maximum of 128 alphanumeric, underscore, at sign, or hyphen characters.
  late final Output<String> name;

  /// Key value pairs that specifies the Lambda function or functions to use for the data catalog. The mapping used depends on the catalog type.
  late final Output<Map<String, String>> parameters;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Type of data catalog: `LAMBDA` for a federated catalog, `GLUE` for AWS Glue Catalog, or `HIVE` for an external hive metastore.
  late final Output<String> type;

  DataCatalog(
    String name, {
    DataCatalogArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:athena/dataCatalog:DataCatalog',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.description = registerOutput<String>('description');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<Map<String, String>>('parameters');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
  }
}
