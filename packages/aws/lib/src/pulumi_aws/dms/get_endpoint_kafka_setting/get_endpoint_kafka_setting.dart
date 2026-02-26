// ignore_for_file: unused_element, unnecessary_cast

class GetEndpointKafkaSetting {
  final String broker;
  final bool includeControlDetails;
  final bool includeNullAndEmpty;
  final bool includePartitionValue;
  final bool includeTableAlterOperations;
  final bool includeTransactionDetails;
  final String messageFormat;
  final int messageMaxBytes;
  final bool noHexPrefix;
  final bool partitionIncludeSchemaTable;
  final String saslMechanism;
  final String saslPassword;
  final String saslUsername;
  final String securityProtocol;
  final String sslCaCertificateArn;
  final String sslClientCertificateArn;
  final String sslClientKeyArn;
  final String sslClientKeyPassword;
  final String topic;

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
    final map = <String, dynamic>{};
    map['broker'] = broker;
    map['includeControlDetails'] = includeControlDetails;
    map['includeNullAndEmpty'] = includeNullAndEmpty;
    map['includePartitionValue'] = includePartitionValue;
    map['includeTableAlterOperations'] = includeTableAlterOperations;
    map['includeTransactionDetails'] = includeTransactionDetails;
    map['messageFormat'] = messageFormat;
    map['messageMaxBytes'] = messageMaxBytes;
    map['noHexPrefix'] = noHexPrefix;
    map['partitionIncludeSchemaTable'] = partitionIncludeSchemaTable;
    map['saslMechanism'] = saslMechanism;
    map['saslPassword'] = saslPassword;
    map['saslUsername'] = saslUsername;
    map['securityProtocol'] = securityProtocol;
    map['sslCaCertificateArn'] = sslCaCertificateArn;
    map['sslClientCertificateArn'] = sslClientCertificateArn;
    map['sslClientKeyArn'] = sslClientKeyArn;
    map['sslClientKeyPassword'] = sslClientKeyPassword;
    map['topic'] = topic;
    return map;
  }

  factory GetEndpointKafkaSetting.fromMap(Map<String, dynamic> map) {
    return GetEndpointKafkaSetting(
      broker: map['broker'] as String,
      includeControlDetails: map['includeControlDetails'] as bool,
      includeNullAndEmpty: map['includeNullAndEmpty'] as bool,
      includePartitionValue: map['includePartitionValue'] as bool,
      includeTableAlterOperations: map['includeTableAlterOperations'] as bool,
      includeTransactionDetails: map['includeTransactionDetails'] as bool,
      messageFormat: map['messageFormat'] as String,
      messageMaxBytes: map['messageMaxBytes'] as int,
      noHexPrefix: map['noHexPrefix'] as bool,
      partitionIncludeSchemaTable: map['partitionIncludeSchemaTable'] as bool,
      saslMechanism: map['saslMechanism'] as String,
      saslPassword: map['saslPassword'] as String,
      saslUsername: map['saslUsername'] as String,
      securityProtocol: map['securityProtocol'] as String,
      sslCaCertificateArn: map['sslCaCertificateArn'] as String,
      sslClientCertificateArn: map['sslClientCertificateArn'] as String,
      sslClientKeyArn: map['sslClientKeyArn'] as String,
      sslClientKeyPassword: map['sslClientKeyPassword'] as String,
      topic: map['topic'] as String,
    );
  }
}
