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
    pulumi.Output<String>? accessRole,
    pulumi.Output<String>? arn,
    pulumi.Output<ConnectorAs2Config>? as2Config,
    pulumi.Output<String>? connectorId,
    pulumi.Output<ConnectorEgressConfig>? egressConfig,
    pulumi.Output<String>? loggingRole,
    pulumi.Output<String>? region,
    pulumi.Output<String>? securityPolicyName,
    pulumi.Output<ConnectorSftpConfig>? sftpConfig,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? url,
  }) :
      accessRole = pulumi.Input.asOptionalInput<String>(accessRole),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      as2Config = pulumi.Input.asOptionalInput<ConnectorAs2Config>(as2Config),
      connectorId = pulumi.Input.asOptionalInput<String>(connectorId),
      egressConfig = pulumi.Input.asOptionalInput<ConnectorEgressConfig>(egressConfig),
      loggingRole = pulumi.Input.asOptionalInput<String>(loggingRole),
      region = pulumi.Input.asOptionalInput<String>(region),
      securityPolicyName = pulumi.Input.asOptionalInput<String>(securityPolicyName),
      sftpConfig = pulumi.Input.asOptionalInput<ConnectorSftpConfig>(sftpConfig),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      accessRole: map['accessRole'] == null ? null : pulumi.Output.create<String>(map['accessRole'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      as2Config: map['as2Config'] == null ? null : pulumi.Output.create<ConnectorAs2Config>(ConnectorAs2Config.fromMap((map['as2Config'] as Map).cast<String, dynamic>())),
      connectorId: map['connectorId'] == null ? null : pulumi.Output.create<String>(map['connectorId'] as String),
      egressConfig: map['egressConfig'] == null ? null : pulumi.Output.create<ConnectorEgressConfig>(ConnectorEgressConfig.fromMap((map['egressConfig'] as Map).cast<String, dynamic>())),
      loggingRole: map['loggingRole'] == null ? null : pulumi.Output.create<String>(map['loggingRole'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      securityPolicyName: map['securityPolicyName'] == null ? null : pulumi.Output.create<String>(map['securityPolicyName'] as String),
      sftpConfig: map['sftpConfig'] == null ? null : pulumi.Output.create<ConnectorSftpConfig>(ConnectorSftpConfig.fromMap((map['sftpConfig'] as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

