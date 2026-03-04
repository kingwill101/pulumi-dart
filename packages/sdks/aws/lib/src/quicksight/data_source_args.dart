// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_source_credentials.dart';
import 'data_source_parameters.dart';
import 'data_source_permission.dart';
import 'data_source_ssl_properties.dart';
import 'data_source_vpc_connection_properties.dart';

/// {@template pulumi_quicksight_data_source_data_source_args_doc}
/// The set of arguments for DataSource.
/// {@endtemplate}
/// {@macro pulumi_quicksight_data_source_data_source_args_doc}
class DataSourceArgs {
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

  /// Creates a new [DataSourceArgs].
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [credentials] The credentials Amazon QuickSight uses to connect to your underlying source. See Credentials below for more details.
  /// [dataSourceId] An identifier for the data source.
  /// [name] A name for the data source, maximum of 128 characters.
  /// [parameters] The parameters used to connect to this data source (exactly one).
  /// [permissions] A set of resource permissions on the data source. Maximum of 64 items. See Permission below for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [sslProperties] Secure Socket Layer (SSL) properties that apply when Amazon QuickSight connects to your underlying source. See SSL Properties below for more details.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [type] The type of the data source. See the [AWS Documentation](https://docs.aws.amazon.com/quicksight/latest/APIReference/API_CreateDataSource.html#QS-CreateDataSource-request-Type) for the complete list of valid values.
  /// [vpcConnectionProperties] Use this parameter only when you want Amazon QuickSight to use a VPC connection when connecting to your underlying source. See VPC Connection Properties below for more details.
  DataSourceArgs({
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
    return <String, dynamic>{
      'awsAccountId': ?awsAccountId,
      'credentials':
          ?pulumi.Input.mapOptionalInputValue<
            DataSourceCredentials,
            Map<String, dynamic>
          >(credentials, (value) => value.toMap()),
      'dataSourceId': dataSourceId,
      'name': ?name,
      'parameters':
          pulumi.Input.mapInputValue<
            DataSourceParameters,
            Map<String, dynamic>
          >(parameters, (value) => value.toMap()),
      'permissions':
          ?pulumi.Input.mapOptionalInputValue<
            List<DataSourcePermission>,
            List<Map<String, dynamic>>
          >(
            permissions,
            (value) =>
                pulumi.Input.encodeList<
                  DataSourcePermission,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'sslProperties':
          ?pulumi.Input.mapOptionalInputValue<
            DataSourceSslProperties,
            Map<String, dynamic>
          >(sslProperties, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
      'vpcConnectionProperties':
          ?pulumi.Input.mapOptionalInputValue<
            DataSourceVpcConnectionProperties,
            Map<String, dynamic>
          >(vpcConnectionProperties, (value) => value.toMap()),
    };
  }

  factory DataSourceArgs.fromMap(Map<String, dynamic> map) {
    return DataSourceArgs(
      awsAccountId: (() {
        final guardedValue = map['awsAccountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentials: (() {
        final guardedValue = map['credentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataSourceCredentials.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      dataSourceId: pulumi.Input.fromValue(map['dataSourceId'] as String),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameters: pulumi.Input.fromValue(
        DataSourceParameters.fromMap(
          (map['parameters']! as Map).cast<String, dynamic>(),
        ),
      ),
      permissions: (() {
        final guardedValue = map['permissions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<DataSourcePermission>(
            guardedValue,
            (value) => DataSourcePermission.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslProperties: (() {
        final guardedValue = map['sslProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataSourceSslProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      vpcConnectionProperties: (() {
        final guardedValue = map['vpcConnectionProperties'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          DataSourceVpcConnectionProperties.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
