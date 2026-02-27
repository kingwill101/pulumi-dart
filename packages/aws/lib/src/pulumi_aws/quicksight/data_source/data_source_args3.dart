// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../data_source_credentials/data_source_credentials.dart';
import '../data_source_parameters/data_source_parameters.dart';
import '../data_source_permission/data_source_permission.dart';
import '../data_source_ssl_properties/data_source_ssl_properties.dart';
import '../data_source_vpc_connection_properties/data_source_vpc_connection_properties.dart';

/// The set of arguments for DataSource.
class DataSourceArgs3 {
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final Input<String>? awsAccountId;

  /// The credentials Amazon QuickSight uses to connect to your underlying source. See Credentials below for more details.
  final Input<DataSourceCredentials>? credentials;

  /// An identifier for the data source.
  final Input<String> dataSourceId;

  /// A name for the data source, maximum of 128 characters.
  final Input<String>? name;

  /// The parameters used to connect to this data source (exactly one).
  final Input<DataSourceParameters> parameters;

  /// A set of resource permissions on the data source. Maximum of 64 items. See Permission below for more details.
  final Input<List<DataSourcePermission>>? permissions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source. See SSL Properties below for more details.
  final Input<DataSourceSslProperties>? sslProperties;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The type of the data source. See the [AWS Documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSource.html#QS-CreateDataSource-request-Type) for the complete list of valid values.
  ///
  /// The following arguments are optional:
  final Input<String> type;

  /// Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to your underlying source. See VPC Connection Properties below for more details.
  final Input<DataSourceVpcConnectionProperties>? vpcConnectionProperties;

  DataSourceArgs3({
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
      map['credentials'] = Input.mapOptionalInputValue<DataSourceCredentials,
          Map<String, dynamic>>(credentialsValue, (value) => value.toMap());
    }
    map['dataSourceId'] = dataSourceId;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['parameters'] =
        Input.mapInputValue<DataSourceParameters, Map<String, dynamic>>(
            parameters, (value) => value.toMap());
    final permissionsValue = permissions;
    if (permissionsValue != null) {
      map['permissions'] = Input.mapOptionalInputValue<
              List<DataSourcePermission>, List<Map<String, dynamic>>>(
          permissionsValue,
          (value) =>
              Input.encodeList<DataSourcePermission, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final sslPropertiesValue = sslProperties;
    if (sslPropertiesValue != null) {
      map['sslProperties'] = Input.mapOptionalInputValue<
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
      map['vpcConnectionProperties'] = Input.mapOptionalInputValue<
              DataSourceVpcConnectionProperties, Map<String, dynamic>>(
          vpcConnectionPropertiesValue, (value) => value.toMap());
    }
    return map;
  }

  factory DataSourceArgs3.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs3(
      awsAccountId: Input.asOptionalInput<String>(map['awsAccountId']),
      credentials:
          Input.asOptionalInput<DataSourceCredentials>(map['credentials']),
      dataSourceId: Input.asInput<String>(map['dataSourceId']),
      name: Input.asOptionalInput<String>(map['name']),
      parameters: Input.asInput<DataSourceParameters>(map['parameters']),
      permissions:
          Input.asOptionalInput<List<DataSourcePermission>>(map['permissions']),
      region: Input.asOptionalInput<String>(map['region']),
      sslProperties:
          Input.asOptionalInput<DataSourceSslProperties>(map['sslProperties']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asInput<String>(map['type']),
      vpcConnectionProperties:
          Input.asOptionalInput<DataSourceVpcConnectionProperties>(
              map['vpcConnectionProperties']),
    );
  }
}
