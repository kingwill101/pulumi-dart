// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_credentials.dart';
import 'data_source_parameters.dart';
import 'data_source_permission.dart';
import 'data_source_ssl_properties.dart';
import 'data_source_vpc_connection_properties.dart';

/// Input properties used for looking up and filtering DataSource resources.
class DataSourceState {
  /// Amazon Resource Name (ARN) of the data source
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// The credentials Amazon QuickSight uses to connect to your underlying source. See Credentials below for more details.
  final pulumi.Input<DataSourceCredentials>? credentials;
  /// An identifier for the data source.
  final pulumi.Input<String>? dataSourceId;
  /// A name for the data source, maximum of 128 characters.
  final pulumi.Input<String>? name;
  /// The parameters used to connect to this data source (exactly one).
  final pulumi.Input<DataSourceParameters>? parameters;
  /// A set of resource permissions on the data source. Maximum of 64 items. See Permission below for more details.
  final pulumi.Input<List<DataSourcePermission>>? permissions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source. See SSL Properties below for more details.
  final pulumi.Input<DataSourceSslProperties>? sslProperties;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The type of the data source. See the [AWS Documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSource.html#QS-CreateDataSource-request-Type) for the complete list of valid values.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? type;
  /// Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to your underlying source. See VPC Connection Properties below for more details.
  final pulumi.Input<DataSourceVpcConnectionProperties>? vpcConnectionProperties;

  /// Creates a new [DataSourceState].
  /// [arn] Amazon Resource Name (ARN) of the data source
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [credentials] The credentials Amazon QuickSight uses to connect to your underlying source. See Credentials below for more details.
  /// [dataSourceId] An identifier for the data source.
  /// [name] A name for the data source, maximum of 128 characters.
  /// [parameters] The parameters used to connect to this data source (exactly one).
  /// [permissions] A set of resource permissions on the data source. Maximum of 64 items. See Permission below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sslProperties] Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source. See SSL Properties below for more details.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] The type of the data source. See the [AWS Documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSource.html#QS-CreateDataSource-request-Type) for the complete list of valid values.
  /// [vpcConnectionProperties] Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to your underlying source. See VPC Connection Properties below for more details.
  DataSourceState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<DataSourceCredentials>? credentials,
    pulumi.Output<String>? dataSourceId,
    pulumi.Output<String>? name,
    pulumi.Output<DataSourceParameters>? parameters,
    pulumi.Output<List<DataSourcePermission>>? permissions,
    pulumi.Output<String>? region,
    pulumi.Output<DataSourceSslProperties>? sslProperties,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
    pulumi.Output<DataSourceVpcConnectionProperties>? vpcConnectionProperties,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      credentials = pulumi.Input.asOptionalInput<DataSourceCredentials>(credentials),
      dataSourceId = pulumi.Input.asOptionalInput<String>(dataSourceId),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameters = pulumi.Input.asOptionalInput<DataSourceParameters>(parameters),
      permissions = pulumi.Input.asOptionalInput<List<DataSourcePermission>>(permissions),
      region = pulumi.Input.asOptionalInput<String>(region),
      sslProperties = pulumi.Input.asOptionalInput<DataSourceSslProperties>(sslProperties),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type),
      vpcConnectionProperties = pulumi.Input.asOptionalInput<DataSourceVpcConnectionProperties>(vpcConnectionProperties);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'credentials': ?pulumi.Input.mapOptionalInputValue<DataSourceCredentials, Map<String, dynamic>>(credentials, (value) => value.toMap()),
      'dataSourceId': ?dataSourceId,
      'name': ?name,
      'parameters': ?pulumi.Input.mapOptionalInputValue<DataSourceParameters, Map<String, dynamic>>(parameters, (value) => value.toMap()),
      'permissions': ?pulumi.Input.mapOptionalInputValue<List<DataSourcePermission>, List<Map<String, dynamic>>>(permissions, (value) => pulumi.Input.encodeList<DataSourcePermission, Map<String, dynamic>>(value, (value) => value.toMap())),
      'region': ?region,
      'sslProperties': ?pulumi.Input.mapOptionalInputValue<DataSourceSslProperties, Map<String, dynamic>>(sslProperties, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
      'vpcConnectionProperties': ?pulumi.Input.mapOptionalInputValue<DataSourceVpcConnectionProperties, Map<String, dynamic>>(vpcConnectionProperties, (value) => value.toMap()),
    };
  }

  factory DataSourceState.fromMap(Map<String, dynamic> map) {
    return DataSourceState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      credentials: map['credentials'] == null ? null : pulumi.Output.create<DataSourceCredentials>(DataSourceCredentials.fromMap((map['credentials'] as Map).cast<String, dynamic>())),
      dataSourceId: map['dataSourceId'] == null ? null : pulumi.Output.create<String>(map['dataSourceId'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      parameters: map['parameters'] == null ? null : pulumi.Output.create<DataSourceParameters>(DataSourceParameters.fromMap((map['parameters'] as Map).cast<String, dynamic>())),
      permissions: map['permissions'] == null ? null : pulumi.Output.create<List<DataSourcePermission>>(pulumi.Input.decodeList<DataSourcePermission>(map['permissions'], (value) => DataSourcePermission.fromMap((value as Map).cast<String, dynamic>()))),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      sslProperties: map['sslProperties'] == null ? null : pulumi.Output.create<DataSourceSslProperties>(DataSourceSslProperties.fromMap((map['sslProperties'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      vpcConnectionProperties: map['vpcConnectionProperties'] == null ? null : pulumi.Output.create<DataSourceVpcConnectionProperties>(DataSourceVpcConnectionProperties.fromMap((map['vpcConnectionProperties'] as Map).cast<String, dynamic>())),
    );
  }
}

