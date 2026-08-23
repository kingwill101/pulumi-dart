// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_as2_config.dart';
import 'get_connector_egress_config.dart';
import 'get_connector_sftp_config.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// ARN of the AWS Identity and Access Management role.
  final String accessRole;
  /// ARN of the Connector.
  final String arn;
  /// Structure containing the parameters for an AS2 connector object. Contains the following attributes:
  final List<GetConnectorAs2Config> as2Configs;
  /// Egress configuration for the connector. Contains the following attributes:
  final List<GetConnectorEgressConfig> egressConfigs;
  final String id;
  /// ARN of the IAM role that allows a connector to turn on CLoudwatch logging for Amazon S3 events.
  final String loggingRole;
  final String region;
  /// Name of security policy.
  final String securityPolicyName;
  /// List of egress Ip addresses.
  final List<String> serviceManagedEgressIpAddresses;
  /// Object containing the following attributes:
  final List<GetConnectorSftpConfig> sftpConfigs;
  /// Map of tags assigned to the resource.
  final Map<String, String> tags;
  /// URL of the partner's AS2 or SFTP endpoint.
  final String url;

  /// Creates a new [GetConnectorResult].
  /// [accessRole] ARN of the AWS Identity and Access Management role.
  /// [arn] ARN of the Connector.
  /// [as2Configs] Structure containing the parameters for an AS2 connector object. Contains the following attributes:
  /// [egressConfigs] Egress configuration for the connector. Contains the following attributes:
  /// [id] Required.
  /// [loggingRole] ARN of the IAM role that allows a connector to turn on CLoudwatch logging for Amazon S3 events.
  /// [region] Required.
  /// [securityPolicyName] Name of security policy.
  /// [serviceManagedEgressIpAddresses] List of egress Ip addresses.
  /// [sftpConfigs] Object containing the following attributes:
  /// [tags] Map of tags assigned to the resource.
  /// [url] URL of the partner's AS2 or SFTP endpoint.
  const GetConnectorResult({
    required this.accessRole,
    required this.arn,
    required this.as2Configs,
    required this.egressConfigs,
    required this.id,
    required this.loggingRole,
    required this.region,
    required this.securityPolicyName,
    required this.serviceManagedEgressIpAddresses,
    required this.sftpConfigs,
    required this.tags,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRole': accessRole,
      'arn': arn,
      'as2Configs': pulumi.Input.encodeList<GetConnectorAs2Config, Map<String, dynamic>>(as2Configs, (value) => value.toMap()),
      'egressConfigs': pulumi.Input.encodeList<GetConnectorEgressConfig, Map<String, dynamic>>(egressConfigs, (value) => value.toMap()),
      'id': id,
      'loggingRole': loggingRole,
      'region': region,
      'securityPolicyName': securityPolicyName,
      'serviceManagedEgressIpAddresses': serviceManagedEgressIpAddresses,
      'sftpConfigs': pulumi.Input.encodeList<GetConnectorSftpConfig, Map<String, dynamic>>(sftpConfigs, (value) => value.toMap()),
      'tags': tags,
      'url': url,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      accessRole: map['accessRole'] as String,
      arn: map['arn'] as String,
      as2Configs: pulumi.Input.decodeList<GetConnectorAs2Config>(map['as2Configs']!, (value) => GetConnectorAs2Config.fromMap((value as Map).cast<String, dynamic>())),
      egressConfigs: pulumi.Input.decodeList<GetConnectorEgressConfig>(map['egressConfigs']!, (value) => GetConnectorEgressConfig.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      loggingRole: map['loggingRole'] as String,
      region: map['region'] as String,
      securityPolicyName: map['securityPolicyName'] as String,
      serviceManagedEgressIpAddresses: (map['serviceManagedEgressIpAddresses'] as List).cast<String>(),
      sftpConfigs: pulumi.Input.decodeList<GetConnectorSftpConfig>(map['sftpConfigs']!, (value) => GetConnectorSftpConfig.fromMap((value as Map).cast<String, dynamic>())),
      tags: (map['tags'] as Map).cast<String, String>(),
      url: map['url'] as String,
    );
  }
}
