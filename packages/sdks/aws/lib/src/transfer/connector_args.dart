// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_as2_config.dart';
import 'connector_egress_config.dart';
import 'connector_sftp_config.dart';

/// {@template pulumi_transfer_connector_connector_args_doc}
/// The set of arguments for Connector.
/// {@endtemplate}
/// {@macro pulumi_transfer_connector_connector_args_doc}
class ConnectorArgs {
  /// IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  final pulumi.Input<String> accessRole;
  /// Either SFTP or AS2 is configured. Parameters to configure for the connector object. See `as2Config` Block below.
  final pulumi.Input<ConnectorAs2Config>? as2Config;
  /// Egress configuration for the connector. When set, enables routing through customer VPCs using VPC Lattice for private connectivity. See `egressConfig` Block below.
  final pulumi.Input<ConnectorEgressConfig>? egressConfig;
  /// IAM Role which is required for allowing the connector to turn on CloudWatch logging for Amazon S3 events.
  final pulumi.Input<String>? loggingRole;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the security policy for the connector.
  final pulumi.Input<String>? securityPolicyName;
  /// Either SFTP or AS2 is configured. Parameters to configure for the connector object. See `sftpConfig` Block below.
  final pulumi.Input<ConnectorSftpConfig>? sftpConfig;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// URL of the partners AS2 endpoint or SFTP endpoint. Required for AS2 connectors and service-managed SFTP connectors. Must be null when using VPC Lattice egress configuration.
  final pulumi.Input<String>? url;

  /// Creates a new [ConnectorArgs].
  /// [accessRole] IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  /// [as2Config] Either SFTP or AS2 is configured. Parameters to configure for the connector object. See `as2Config` Block below.
  /// [egressConfig] Egress configuration for the connector. When set, enables routing through customer VPCs using VPC Lattice for private connectivity. See `egressConfig` Block below.
  /// [loggingRole] IAM Role which is required for allowing the connector to turn on CloudWatch logging for Amazon S3 events.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityPolicyName] Name of the security policy for the connector.
  /// [sftpConfig] Either SFTP or AS2 is configured. Parameters to configure for the connector object. See `sftpConfig` Block below.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [url] URL of the partners AS2 endpoint or SFTP endpoint. Required for AS2 connectors and service-managed SFTP connectors. Must be null when using VPC Lattice egress configuration.
  const ConnectorArgs({
    required this.accessRole,
    this.as2Config,
    this.egressConfig,
    this.loggingRole,
    this.region,
    this.securityPolicyName,
    this.sftpConfig,
    this.tags,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRole': accessRole,
      'as2Config': ?pulumi.Input.mapOptionalInputValue<ConnectorAs2Config, Map<String, dynamic>>(as2Config, (value) => value.toMap()),
      'egressConfig': ?pulumi.Input.mapOptionalInputValue<ConnectorEgressConfig, Map<String, dynamic>>(egressConfig, (value) => value.toMap()),
      'loggingRole': ?loggingRole,
      'region': ?region,
      'securityPolicyName': ?securityPolicyName,
      'sftpConfig': ?pulumi.Input.mapOptionalInputValue<ConnectorSftpConfig, Map<String, dynamic>>(sftpConfig, (value) => value.toMap()),
      'tags': ?tags,
      'url': ?url,
    };
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      accessRole: pulumi.Input.fromValue(map['accessRole'] as String),
      as2Config: (() { final guardedValue = map['as2Config']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorAs2Config.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      egressConfig: (() { final guardedValue = map['egressConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorEgressConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      loggingRole: (() { final guardedValue = map['loggingRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityPolicyName: (() { final guardedValue = map['securityPolicyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sftpConfig: (() { final guardedValue = map['sftpConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ConnectorSftpConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      url: (() { final guardedValue = map['url']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
