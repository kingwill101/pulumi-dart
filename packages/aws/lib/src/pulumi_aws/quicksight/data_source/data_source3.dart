import 'package:pulumi/pulumi.dart';
import '../data_source_credentials/data_source_credentials.dart';
import '../data_source_parameters/data_source_parameters.dart';
import '../data_source_permission/data_source_permission.dart';
import '../data_source_ssl_properties/data_source_ssl_properties.dart';
import '../data_source_vpc_connection_properties/data_source_vpc_connection_properties.dart';
import 'data_source_args3.dart';

/// Resource for managing QuickSight Data Source
///
/// ## Example Usage
///
/// ### S3 Data Source
///
///
///
/// ### S3 Data Source with IAM Role ARN
///
///
///
/// ## Import
///
/// Using `pulumi import`, import a QuickSight data source using the AWS account ID, and data source ID separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:quicksight/dataSource:DataSource example 123456789123/my-data-source-id
/// ```
class DataSource3 extends CustomResource {
  /// Amazon Resource Name (ARN) of the data source
  late final Output<String> arn;

  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  late final Output<String> awsAccountId;

  /// The credentials Amazon QuickSight uses to connect to your underlying source. See Credentials below for more details.
  late final Output<DataSourceCredentials?> credentials;

  /// An identifier for the data source.
  late final Output<String> dataSourceId;

  /// A name for the data source, maximum of 128 characters.
  late final Output<String> name;

  /// The parameters used to connect to this data source (exactly one).
  late final Output<DataSourceParameters> parameters;

  /// A set of resource permissions on the data source. Maximum of 64 items. See Permission below for more details.
  late final Output<List<DataSourcePermission>?> permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source. See SSL Properties below for more details.
  late final Output<DataSourceSslProperties> sslProperties;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The type of the data source. See the [AWS Documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSource.html#QS-CreateDataSource-request-Type) for the complete list of valid values.
  ///
  /// The following arguments are optional:
  late final Output<String> type;

  /// Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to your underlying source. See VPC Connection Properties below for more details.
  late final Output<DataSourceVpcConnectionProperties?> vpcConnectionProperties;

  DataSource3(
    String name, {
    DataSourceArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:quicksight/dataSource:DataSource',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.credentials = registerOutput<DataSourceCredentials?>('credentials');
    this.dataSourceId = registerOutput<String>('dataSourceId');
    this.name = registerOutput<String>('name');
    this.parameters = registerOutput<DataSourceParameters>('parameters');
    this.permissions =
        registerOutput<List<DataSourcePermission>?>('permissions');
    this.region = registerOutput<String>('region');
    this.sslProperties =
        registerOutput<DataSourceSslProperties>('sslProperties');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.type = registerOutput<String>('type');
    this.vpcConnectionProperties =
        registerOutput<DataSourceVpcConnectionProperties?>(
            'vpcConnectionProperties');
  }
}
