// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_as2_config.dart';
import 'connector_egress_config.dart';
import 'connector_sftp_config.dart';

/// Input properties used for looking up and filtering Connector resources.
class ConnectorState {
  /// The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  final pulumi.Input<String>? accessRole;
  /// The ARN of the connector.
  final pulumi.Input<String>? arn;
  /// Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  final pulumi.Input<ConnectorAs2Config>? as2Config;
  /// The unique identifier for the AS2 profile or SFTP Profile.
  final pulumi.Input<String>? connectorId;
  /// Specifies the egress configuration for the connector. When set, enables routing through customer VPCs using VPC Lattice for private connectivity. Fields documented below.
  final pulumi.Input<ConnectorEgressConfig>? egressConfig;
  /// The IAM Role which is required for allowing the connector to turn on CloudWatch logging for Amazon S3 events.
  final pulumi.Input<String>? loggingRole;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Name of the security policy for the connector.
  final pulumi.Input<String>? securityPolicyName;
  /// Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  final pulumi.Input<ConnectorSftpConfig>? sftpConfig;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The URL of the partners AS2 endpoint or SFTP endpoint. Required for AS2 connectors and service-managed SFTP connectors. Must be null when using VPC Lattice egress configuration.
  final pulumi.Input<String>? url;

  /// Creates a new [ConnectorState].
  /// [accessRole] The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  /// [arn] The ARN of the connector.
  /// [as2Config] Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  /// [connectorId] The unique identifier for the AS2 profile or SFTP Profile.
  /// [egressConfig] Specifies the egress configuration for the connector. When set, enables routing through customer VPCs using VPC Lattice for private connectivity. Fields documented below.
  /// [loggingRole] The IAM Role which is required for allowing the connector to turn on CloudWatch logging for Amazon S3 events.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityPolicyName] Name of the security policy for the connector.
  /// [sftpConfig] Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  /// [url] The URL of the partners AS2 endpoint or SFTP endpoint. Required for AS2 connectors and service-managed SFTP connectors. Must be null when using VPC Lattice egress configuration.
  ConnectorState({
    this.accessRole,
    this.arn,
    this.as2Config,
    this.connectorId,
    this.egressConfig,
    this.loggingRole,
    this.region,
    this.securityPolicyName,
    this.sftpConfig,
    this.tags,
    this.tagsAll,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessRole': ?accessRole,
      'arn': ?arn,
      'as2Config': ?pulumi.Input.mapOptionalInputValue<ConnectorAs2Config, Map<String, dynamic>>(as2Config, (value) => value.toMap()),
      'connectorId': ?connectorId,
      'egressConfig': ?pulumi.Input.mapOptionalInputValue<ConnectorEgressConfig, Map<String, dynamic>>(egressConfig, (value) => value.toMap()),
      'loggingRole': ?loggingRole,
      'region': ?region,
      'securityPolicyName': ?securityPolicyName,
      'sftpConfig': ?pulumi.Input.mapOptionalInputValue<ConnectorSftpConfig, Map<String, dynamic>>(sftpConfig, (value) => value.toMap()),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'url': ?url,
    };
  }

  factory ConnectorState.fromMap(Map<String, dynamic> map) {
    return ConnectorState(
      accessRole: map['accessRole'] == null ? null : ((map['accessRole'] as String).input()).input(),
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      as2Config: map['as2Config'] == null ? null : ((ConnectorAs2Config.fromMap((map['as2Config']! as Map).cast<String, dynamic>())).input()).input(),
      connectorId: map['connectorId'] == null ? null : ((map['connectorId'] as String).input()).input(),
      egressConfig: map['egressConfig'] == null ? null : ((ConnectorEgressConfig.fromMap((map['egressConfig']! as Map).cast<String, dynamic>())).input()).input(),
      loggingRole: map['loggingRole'] == null ? null : ((map['loggingRole'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      securityPolicyName: map['securityPolicyName'] == null ? null : ((map['securityPolicyName'] as String).input()).input(),
      sftpConfig: map['sftpConfig'] == null ? null : ((ConnectorSftpConfig.fromMap((map['sftpConfig']! as Map).cast<String, dynamic>())).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
      url: map['url'] == null ? null : ((map['url'] as String).input()).input(),
    );
  }
}

