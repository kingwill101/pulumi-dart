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
  /// The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  final pulumi.Input<String> accessRole;

  /// Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  final pulumi.Input<ConnectorAs2Config>? as2Config;

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

  /// The URL of the partners AS2 endpoint or SFTP endpoint. Required for AS2 connectors and service-managed SFTP connectors. Must be null when using VPC Lattice egress configuration.
  final pulumi.Input<String>? url;

  /// Creates a new [ConnectorArgs].
  /// [accessRole] The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  /// [as2Config] Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  /// [egressConfig] Specifies the egress configuration for the connector. When set, enables routing through customer VPCs using VPC Lattice for private connectivity. Fields documented below.
  /// [loggingRole] The IAM Role which is required for allowing the connector to turn on CloudWatch logging for Amazon S3 events.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [securityPolicyName] Name of the security policy for the connector.
  /// [sftpConfig] Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [url] The URL of the partners AS2 endpoint or SFTP endpoint. Required for AS2 connectors and service-managed SFTP connectors. Must be null when using VPC Lattice egress configuration.
  ConnectorArgs({
    required String accessRole,
    ConnectorAs2Config? as2Config,
    ConnectorEgressConfig? egressConfig,
    String? loggingRole,
    String? region,
    String? securityPolicyName,
    ConnectorSftpConfig? sftpConfig,
    Map<String, String>? tags,
    String? url,
  })  : accessRole = pulumi.Input.asInput<String>(accessRole),
        as2Config = pulumi.Input.asOptionalInput<ConnectorAs2Config>(as2Config),
        egressConfig =
            pulumi.Input.asOptionalInput<ConnectorEgressConfig>(egressConfig),
        loggingRole = pulumi.Input.asOptionalInput<String>(loggingRole),
        region = pulumi.Input.asOptionalInput<String>(region),
        securityPolicyName =
            pulumi.Input.asOptionalInput<String>(securityPolicyName),
        sftpConfig =
            pulumi.Input.asOptionalInput<ConnectorSftpConfig>(sftpConfig),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
        url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['accessRole'] = accessRole;
    final as2ConfigValue = as2Config;
    if (as2ConfigValue != null) {
      map['as2Config'] = pulumi.Input.mapOptionalInputValue<ConnectorAs2Config,
          Map<String, dynamic>>(as2ConfigValue, (value) => value.toMap());
    }
    final egressConfigValue = egressConfig;
    if (egressConfigValue != null) {
      map['egressConfig'] = pulumi.Input.mapOptionalInputValue<
          ConnectorEgressConfig,
          Map<String, dynamic>>(egressConfigValue, (value) => value.toMap());
    }
    final loggingRoleValue = loggingRole;
    if (loggingRoleValue != null) {
      map['loggingRole'] = loggingRoleValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final securityPolicyNameValue = securityPolicyName;
    if (securityPolicyNameValue != null) {
      map['securityPolicyName'] = securityPolicyNameValue;
    }
    final sftpConfigValue = sftpConfig;
    if (sftpConfigValue != null) {
      map['sftpConfig'] = pulumi.Input.mapOptionalInputValue<
          ConnectorSftpConfig,
          Map<String, dynamic>>(sftpConfigValue, (value) => value.toMap());
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final urlValue = url;
    if (urlValue != null) {
      map['url'] = urlValue;
    }
    return map;
  }

  factory ConnectorArgs.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs(
      accessRole: map['accessRole'] as String,
      as2Config: map['as2Config'] == null
          ? null
          : ConnectorAs2Config.fromMap(
              (map['as2Config'] as Map).cast<String, dynamic>()),
      egressConfig: map['egressConfig'] == null
          ? null
          : ConnectorEgressConfig.fromMap(
              (map['egressConfig'] as Map).cast<String, dynamic>()),
      loggingRole:
          map['loggingRole'] == null ? null : map['loggingRole'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      securityPolicyName: map['securityPolicyName'] == null
          ? null
          : map['securityPolicyName'] as String,
      sftpConfig: map['sftpConfig'] == null
          ? null
          : ConnectorSftpConfig.fromMap(
              (map['sftpConfig'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}
