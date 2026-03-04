// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetEndpointKafkaSetting {
  final pulumi.Input<String> broker;
  final pulumi.Input<bool> includeControlDetails;
  final pulumi.Input<bool> includeNullAndEmpty;
  final pulumi.Input<bool> includePartitionValue;
  final pulumi.Input<bool> includeTableAlterOperations;
  final pulumi.Input<bool> includeTransactionDetails;
  final pulumi.Input<String> messageFormat;
  final pulumi.Input<int> messageMaxBytes;
  final pulumi.Input<bool> noHexPrefix;
  final pulumi.Input<bool> partitionIncludeSchemaTable;
  final pulumi.Input<String> saslMechanism;
  final pulumi.Input<String> saslPassword;
  final pulumi.Input<String> saslUsername;
  final pulumi.Input<String> securityProtocol;
  final pulumi.Input<String> sslCaCertificateArn;
  final pulumi.Input<String> sslClientCertificateArn;
  final pulumi.Input<String> sslClientKeyArn;
  final pulumi.Input<String> sslClientKeyPassword;
  final pulumi.Input<String> topic;

  /// Creates a new [GetEndpointKafkaSetting].
  /// [broker] Required.
  /// [includeControlDetails] Required.
  /// [includeNullAndEmpty] Required.
  /// [includePartitionValue] Required.
  /// [includeTableAlterOperations] Required.
  /// [includeTransactionDetails] Required.
  /// [messageFormat] Required.
  /// [messageMaxBytes] Required.
  /// [noHexPrefix] Required.
  /// [partitionIncludeSchemaTable] Required.
  /// [saslMechanism] Required.
  /// [saslPassword] Required.
  /// [saslUsername] Required.
  /// [securityProtocol] Required.
  /// [sslCaCertificateArn] Required.
  /// [sslClientCertificateArn] Required.
  /// [sslClientKeyArn] Required.
  /// [sslClientKeyPassword] Required.
  /// [topic] Required.
  GetEndpointKafkaSetting({
    required this.broker,
    required this.includeControlDetails,
    required this.includeNullAndEmpty,
    required this.includePartitionValue,
    required this.includeTableAlterOperations,
    required this.includeTransactionDetails,
    required this.messageFormat,
    required this.messageMaxBytes,
    required this.noHexPrefix,
    required this.partitionIncludeSchemaTable,
    required this.saslMechanism,
    required this.saslPassword,
    required this.saslUsername,
    required this.securityProtocol,
    required this.sslCaCertificateArn,
    required this.sslClientCertificateArn,
    required this.sslClientKeyArn,
    required this.sslClientKeyPassword,
    required this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'broker': broker,
      'includeControlDetails': includeControlDetails,
      'includeNullAndEmpty': includeNullAndEmpty,
      'includePartitionValue': includePartitionValue,
      'includeTableAlterOperations': includeTableAlterOperations,
      'includeTransactionDetails': includeTransactionDetails,
      'messageFormat': messageFormat,
      'messageMaxBytes': messageMaxBytes,
      'noHexPrefix': noHexPrefix,
      'partitionIncludeSchemaTable': partitionIncludeSchemaTable,
      'saslMechanism': saslMechanism,
      'saslPassword': saslPassword,
      'saslUsername': saslUsername,
      'securityProtocol': securityProtocol,
      'sslCaCertificateArn': sslCaCertificateArn,
      'sslClientCertificateArn': sslClientCertificateArn,
      'sslClientKeyArn': sslClientKeyArn,
      'sslClientKeyPassword': sslClientKeyPassword,
      'topic': topic,
    };
  }

  factory GetEndpointKafkaSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointKafkaSetting(
      broker: pulumi.Input.fromValue(map['broker'] as String),
      includeControlDetails: pulumi.Input.fromValue(
        map['includeControlDetails'] as bool,
      ),
      includeNullAndEmpty: pulumi.Input.fromValue(
        map['includeNullAndEmpty'] as bool,
      ),
      includePartitionValue: pulumi.Input.fromValue(
        map['includePartitionValue'] as bool,
      ),
      includeTableAlterOperations: pulumi.Input.fromValue(
        map['includeTableAlterOperations'] as bool,
      ),
      includeTransactionDetails: pulumi.Input.fromValue(
        map['includeTransactionDetails'] as bool,
      ),
      messageFormat: pulumi.Input.fromValue(map['messageFormat'] as String),
      messageMaxBytes: pulumi.Input.fromValue(map['messageMaxBytes'] as int),
      noHexPrefix: pulumi.Input.fromValue(map['noHexPrefix'] as bool),
      partitionIncludeSchemaTable: pulumi.Input.fromValue(
        map['partitionIncludeSchemaTable'] as bool,
      ),
      saslMechanism: pulumi.Input.fromValue(map['saslMechanism'] as String),
      saslPassword: pulumi.Input.fromValue(map['saslPassword'] as String),
      saslUsername: pulumi.Input.fromValue(map['saslUsername'] as String),
      securityProtocol: pulumi.Input.fromValue(
        map['securityProtocol'] as String,
      ),
      sslCaCertificateArn: pulumi.Input.fromValue(
        map['sslCaCertificateArn'] as String,
      ),
      sslClientCertificateArn: pulumi.Input.fromValue(
        map['sslClientCertificateArn'] as String,
      ),
      sslClientKeyArn: pulumi.Input.fromValue(map['sslClientKeyArn'] as String),
      sslClientKeyPassword: pulumi.Input.fromValue(
        map['sslClientKeyPassword'] as String,
      ),
      topic: pulumi.Input.fromValue(map['topic'] as String),
    );
  }
}
