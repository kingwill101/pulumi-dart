// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_connector_as2_config.dart';
import 'get_connector_egress_config.dart';
import 'get_connector_sftp_config.dart';

/// Result data returned by getConnector.
class GetConnectorResult {
  /// ARN of the AWS Identity and Access Management role.
  final String? accessRole;
  /// ARN of the Connector.
  final String? arn;
  /// Structure containing the parameters for an AS2 connector object. Contains the following attributes:
  final List<GetConnectorAs2Config>? as2Configs;
  /// Egress configuration for the connector. Contains the following attributes:
  final List<GetConnectorEgressConfig>? egressConfigs;
  final String? id;
  /// ARN of the IAM role that allows a connector to turn on CLoudwatch logging for Amazon S3 events.
  final String? loggingRole;
  final String? region;
  /// Name of security policy.
  final String? securityPolicyName;
  /// List of egress Ip addresses.
  final List<String>? serviceManagedEgressIpAddresses;
  /// Object containing the following attributes:
  final List<GetConnectorSftpConfig>? sftpConfigs;
  /// Map of tags assigned to the resource.
  final Map<String, String>? tags;
  /// URL of the partner's AS2 or SFTP endpoint.
  final String? url;

  /// Creates a new [GetConnectorResult].
  /// [accessRole] ARN of the AWS Identity and Access Management role.
  /// [arn] ARN of the Connector.
  /// [as2Configs] Structure containing the parameters for an AS2 connector object. Contains the following attributes:
  /// [egressConfigs] Egress configuration for the connector. Contains the following attributes:
  /// [id] Optional.
  /// [loggingRole] ARN of the IAM role that allows a connector to turn on CLoudwatch logging for Amazon S3 events.
  /// [region] Optional.
  /// [securityPolicyName] Name of security policy.
  /// [serviceManagedEgressIpAddresses] List of egress Ip addresses.
  /// [sftpConfigs] Object containing the following attributes:
  /// [tags] Map of tags assigned to the resource.
  /// [url] URL of the partner's AS2 or SFTP endpoint.
  const GetConnectorResult({
    this.accessRole,
    this.arn,
    this.as2Configs,
    this.egressConfigs,
    this.id,
    this.loggingRole,
    this.region,
    this.securityPolicyName,
    this.serviceManagedEgressIpAddresses,
    this.sftpConfigs,
    this.tags,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRole': ?accessRole,
      'arn': ?arn,
      'as2Configs': ?(() { final guardedValue = as2Configs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectorAs2Config, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'egressConfigs': ?(() { final guardedValue = egressConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectorEgressConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'id': ?id,
      'loggingRole': ?loggingRole,
      'region': ?region,
      'securityPolicyName': ?securityPolicyName,
      'serviceManagedEgressIpAddresses': ?serviceManagedEgressIpAddresses,
      'sftpConfigs': ?(() { final guardedValue = sftpConfigs; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetConnectorSftpConfig, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'tags': ?tags,
      'url': ?url,
    };
  }

  factory GetConnectorResult.fromMap(Map<String, dynamic> map) {
    return GetConnectorResult(
      accessRole: (() { final guardedValue = map['accessRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      as2Configs: (() { final guardedValue = map['as2Configs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectorAs2Config>(guardedValue, (value) => GetConnectorAs2Config.fromMap((value as Map).cast<String, dynamic>())); })(),
      egressConfigs: (() { final guardedValue = map['egressConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectorEgressConfig>(guardedValue, (value) => GetConnectorEgressConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      loggingRole: (() { final guardedValue = map['loggingRole']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      securityPolicyName: (() { final guardedValue = map['securityPolicyName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceManagedEgressIpAddresses: (() { final guardedValue = map['serviceManagedEgressIpAddresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      sftpConfigs: (() { final guardedValue = map['sftpConfigs']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetConnectorSftpConfig>(guardedValue, (value) => GetConnectorSftpConfig.fromMap((value as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
