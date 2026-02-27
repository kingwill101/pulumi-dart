// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../connector_as2_config/connector_as2_config.dart';
import '../connector_egress_config/connector_egress_config.dart';
import '../connector_sftp_config/connector_sftp_config.dart';

/// The set of arguments for Connector.
class ConnectorArgs2 {
  /// The IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  final Input<String> accessRole;

  /// Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  final Input<ConnectorAs2Config>? as2Config;

  /// Specifies the egress configuration for the connector. When set, enables routing through customer VPCs using VPC Lattice for private connectivity. Fields documented below.
  final Input<ConnectorEgressConfig>? egressConfig;

  /// The IAM Role which is required for allowing the connector to turn on CloudWatch logging for Amazon S3 events.
  final Input<String>? loggingRole;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Name of the security policy for the connector.
  final Input<String>? securityPolicyName;

  /// Either SFTP or AS2 is configured.The parameters to configure for the connector object. Fields documented below.
  final Input<ConnectorSftpConfig>? sftpConfig;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  /// The URL of the partners AS2 endpoint or SFTP endpoint. Required for AS2 connectors and service-managed SFTP connectors. Must be null when using VPC Lattice egress configuration.
  final Input<String>? url;

  ConnectorArgs2({
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
    final map = <String, dynamic>{};
    map['accessRole'] = accessRole;
    final as2ConfigValue = as2Config;
    if (as2ConfigValue != null) {
      map['as2Config'] =
          Input.mapOptionalInputValue<ConnectorAs2Config, Map<String, dynamic>>(
              as2ConfigValue, (value) => value.toMap());
    }
    final egressConfigValue = egressConfig;
    if (egressConfigValue != null) {
      map['egressConfig'] = Input.mapOptionalInputValue<ConnectorEgressConfig,
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
      map['sftpConfig'] = Input.mapOptionalInputValue<ConnectorSftpConfig,
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

  factory ConnectorArgs2.fromMap(Map<String, dynamic> map) {
    return ConnectorArgs2(
      accessRole: Input.asInput<String>(map['accessRole']),
      as2Config: Input.asOptionalInput<ConnectorAs2Config>(map['as2Config']),
      egressConfig:
          Input.asOptionalInput<ConnectorEgressConfig>(map['egressConfig']),
      loggingRole: Input.asOptionalInput<String>(map['loggingRole']),
      region: Input.asOptionalInput<String>(map['region']),
      securityPolicyName:
          Input.asOptionalInput<String>(map['securityPolicyName']),
      sftpConfig: Input.asOptionalInput<ConnectorSftpConfig>(map['sftpConfig']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      url: Input.asOptionalInput<String>(map['url']),
    );
  }
}
