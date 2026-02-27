// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../data_source_credentials/data_source_credentials.dart';
import '../data_source_parameters/data_source_parameters.dart';
import '../data_source_permission/data_source_permission.dart';
import '../data_source_ssl_properties/data_source_ssl_properties.dart';
import '../data_source_vpc_connection_properties/data_source_vpc_connection_properties.dart';

/// The set of arguments for DataSource.
class DataSourceQuicksightArgs {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;

  /// The credentials Amazon QuickSight uses to connect to your underlying source. See Credentials below for more details.
  final pulumi.Input<DataSourceCredentials>? credentials;

  /// An identifier for the data source.
  final pulumi.Input<String> dataSourceId;

  /// A name for the data source, maximum of 128 characters.
  final pulumi.Input<String>? name;

  /// The parameters used to connect to this data source (exactly one).
  final pulumi.Input<DataSourceParameters> parameters;

  /// A set of resource permissions on the data source. Maximum of 64 items. See Permission below for more details.
  final pulumi.Input<List<DataSourcePermission>>? permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source. See SSL Properties below for more details.
  final pulumi.Input<DataSourceSslProperties>? sslProperties;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// The type of the data source. See the [AWS Documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSource.html#QS-CreateDataSource-request-Type) for the complete list of valid values.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> type;

  /// Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to your underlying source. See VPC Connection Properties below for more details.
  final pulumi.Input<DataSourceVpcConnectionProperties>?
      vpcConnectionProperties;

  DataSourceQuicksightArgs({
    this.awsAccountId,
    this.credentials,
    required this.dataSourceId,
    this.name,
    required this.parameters,
    this.permissions,
    this.region,
    this.sslProperties,
    this.tags,
    required this.type,
    this.vpcConnectionProperties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final awsAccountIdValue = awsAccountId;
    if (awsAccountIdValue != null) {
      map['awsAccountId'] = awsAccountIdValue;
    }
    final credentialsValue = credentials;
    if (credentialsValue != null) {
      map['credentials'] = pulumi.Input.mapOptionalInputValue<
          DataSourceCredentials,
          Map<String, dynamic>>(credentialsValue, (value) => value.toMap());
    }
    map['dataSourceId'] = dataSourceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parameters'] =
        pulumi.Input.mapInputValue<DataSourceParameters, Map<String, dynamic>>(
            parameters, (value) => value.toMap());
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = pulumi.Input.mapOptionalInputValue<
              List<DataSourcePermission>, List<Map<String, dynamic>>>(
          permissionsValue,
          (value) => pulumi.Input.encodeList<DataSourcePermission,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sslPropertiesValue = sslProperties;
    if (sslPropertiesValue != null) {
      map['sslProperties'] = pulumi.Input.mapOptionalInputValue<
          DataSourceSslProperties,
          Map<String, dynamic>>(sslPropertiesValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    map['type'] = type;
    final vpcConnectionPropertiesValue = vpcConnectionProperties;
    if (vpcConnectionPropertiesValue != null) {
      map['vpcConnectionProperties'] = pulumi.Input.mapOptionalInputValue<
              DataSourceVpcConnectionProperties, Map<String, dynamic>>(
          vpcConnectionPropertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DataSourceQuicksightArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceQuicksightArgs(
      awsAccountId: pulumi.Input.asOptionalInput<String>(map['awsAccountId']),
      credentials: pulumi.Input.asOptionalInput<DataSourceCredentials>(
          map['credentials']),
      dataSourceId: pulumi.Input.asInput<String>(map['dataSourceId']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parameters: pulumi.Input.asInput<DataSourceParameters>(map['parameters']),
      permissions: pulumi.Input.asOptionalInput<List<DataSourcePermission>>(
          map['permissions']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      sslProperties: pulumi.Input.asOptionalInput<DataSourceSslProperties>(
          map['sslProperties']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: pulumi.Input.asInput<String>(map['type']),
      vpcConnectionProperties:
          pulumi.Input.asOptionalInput<DataSourceVpcConnectionProperties>(
              map['vpcConnectionProperties']),
    );
  }
}
