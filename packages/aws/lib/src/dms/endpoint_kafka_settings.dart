// ignore_for_file: unused_element, unnecessary_cast

class EndpointKafkaSettings {
  /// Kafka broker location. Specify in the form broker-hostname-or-ip:port.
  final String broker;

  /// Shows detailed control information for table definition, column definition, and table and column changes in the Kafka message output. Default is `false`.
  final bool? includeControlDetails;

  /// Include NULL and empty columns for records migrated to the endpoint. Default is `false`.
  final bool? includeNullAndEmpty;

  /// Shows the partition value within the Kafka message output unless the partition type is `schema-table-type`. Default is `false`.
  final bool? includePartitionValue;

  /// Includes any data definition language (DDL) operations that change the table in the control data, such as `rename-table`, `drop-table`, `add-column`, `drop-column`, and `rename-column`. Default is `false`.
  final bool? includeTableAlterOperations;

  /// Provides detailed transaction information from the source database. This information includes a commit timestamp, a log position, and values for `transaction_id`, previous `transaction_id`, and `transaction_record_id` (the record offset within a transaction). Default is `false`.
  final bool? includeTransactionDetails;

  /// Output format for the records created on the endpoint. Message format is `JSON` (default) or `JSON_UNFORMATTED` (a single line with no tab).
  final String? messageFormat;

  /// Maximum size in bytes for records created on the endpoint Default is `1,000,000`.
  final int? messageMaxBytes;

  /// Set this optional parameter to true to avoid adding a '0x' prefix to raw data in hexadecimal format. For example, by default, AWS DMS adds a '0x' prefix to the LOB column type in hexadecimal format moving from an Oracle source to a Kafka target. Use the `no_hex_prefix` endpoint setting to enable migration of RAW data type columns without adding the `'0x'` prefix.
  final bool? noHexPrefix;

  /// Prefixes schema and table names to partition values, when the partition type is `primary-key-type`. Doing this increases data distribution among Kafka partitions. For example, suppose that a SysBench schema has thousands of tables and each table has only limited range for a primary key. In this case, the same primary key is sent from thousands of tables to the same partition, which causes throttling. Default is `false`.
  final bool? partitionIncludeSchemaTable;

  /// For SASL/SSL authentication, AWS DMS supports the `scram-sha-512` mechanism by default. AWS DMS versions 3.5.0 and later also support the PLAIN mechanism. To use the PLAIN mechanism, set this parameter to `plain`.
  final String? saslMechanism;

  /// Secure password you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication.
  final String? saslPassword;

  /// Secure user name you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication.
  final String? saslUsername;

  /// Set secure connection to a Kafka target endpoint using Transport Layer Security (TLS). Options include `ssl-encryption`, `ssl-authentication`, and `sasl-ssl`. `sasl-ssl` requires `sasl_username` and `sasl_password`.
  final String? securityProtocol;

  /// ARN for the private certificate authority (CA) cert that AWS DMS uses to securely connect to your Kafka target endpoint.
  final String? sslCaCertificateArn;

  /// ARN of the client certificate used to securely connect to a Kafka target endpoint.
  final String? sslClientCertificateArn;

  /// ARN for the client private key used to securely connect to a Kafka target endpoint.
  final String? sslClientKeyArn;

  /// Password for the client private key used to securely connect to a Kafka target endpoint.
  final String? sslClientKeyPassword;

  /// Kafka topic for migration. Default is `kafka-default-topic`.
  final String? topic;

  /// Creates a new [EndpointKafkaSettings].
  /// [broker] Kafka broker location. Specify in the form broker-hostname-or-ip:port.
  /// [includeControlDetails] Shows detailed control information for table definition, column definition, and table and column changes in the Kafka message output. Default is `false`.
  /// [includeNullAndEmpty] Include NULL and empty columns for records migrated to the endpoint. Default is `false`.
  /// [includePartitionValue] Shows the partition value within the Kafka message output unless the partition type is `schema-table-type`. Default is `false`.
  /// [includeTableAlterOperations] Includes any data definition language (DDL) operations that change the table in the control data, such as `rename-table`, `drop-table`, `add-column`, `drop-column`, and `rename-column`. Default is `false`.
  /// [includeTransactionDetails] Provides detailed transaction information from the source database. This information includes a commit timestamp, a log position, and values for `transaction_id`, previous `transaction_id`, and `transaction_record_id` (the record offset within a transaction). Default is `false`.
  /// [messageFormat] Output format for the records created on the endpoint. Message format is `JSON` (default) or `JSON_UNFORMATTED` (a single line with no tab).
  /// [messageMaxBytes] Maximum size in bytes for records created on the endpoint Default is `1,000,000`.
  /// [noHexPrefix] Set this optional parameter to true to avoid adding a '0x' prefix to raw data in hexadecimal format. For example, by default, AWS DMS adds a '0x' prefix to the LOB column type in hexadecimal format moving from an Oracle source to a Kafka target. Use the `no_hex_prefix` endpoint setting to enable migration of RAW data type columns without adding the `'0x'` prefix.
  /// [partitionIncludeSchemaTable] Prefixes schema and table names to partition values, when the partition type is `primary-key-type`. Doing this increases data distribution among Kafka partitions. For example, suppose that a SysBench schema has thousands of tables and each table has only limited range for a primary key. In this case, the same primary key is sent from thousands of tables to the same partition, which causes throttling. Default is `false`.
  /// [saslMechanism] For SASL/SSL authentication, AWS DMS supports the `scram-sha-512` mechanism by default. AWS DMS versions 3.5.0 and later also support the PLAIN mechanism. To use the PLAIN mechanism, set this parameter to `plain`.
  /// [saslPassword] Secure password you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication.
  /// [saslUsername] Secure user name you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication.
  /// [securityProtocol] Set secure connection to a Kafka target endpoint using Transport Layer Security (TLS). Options include `ssl-encryption`, `ssl-authentication`, and `sasl-ssl`. `sasl-ssl` requires `sasl_username` and `sasl_password`.
  /// [sslCaCertificateArn] ARN for the private certificate authority (CA) cert that AWS DMS uses to securely connect to your Kafka target endpoint.
  /// [sslClientCertificateArn] ARN of the client certificate used to securely connect to a Kafka target endpoint.
  /// [sslClientKeyArn] ARN for the client private key used to securely connect to a Kafka target endpoint.
  /// [sslClientKeyPassword] Password for the client private key used to securely connect to a Kafka target endpoint.
  /// [topic] Kafka topic for migration. Default is `kafka-default-topic`.
  EndpointKafkaSettings({
    required this.broker,
    this.includeControlDetails,
    this.includeNullAndEmpty,
    this.includePartitionValue,
    this.includeTableAlterOperations,
    this.includeTransactionDetails,
    this.messageFormat,
    this.messageMaxBytes,
    this.noHexPrefix,
    this.partitionIncludeSchemaTable,
    this.saslMechanism,
    this.saslPassword,
    this.saslUsername,
    this.securityProtocol,
    this.sslCaCertificateArn,
    this.sslClientCertificateArn,
    this.sslClientKeyArn,
    this.sslClientKeyPassword,
    this.topic,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['broker'] = broker;
    final includeControlDetailsValue = includeControlDetails;
    if (includeControlDetailsValue != null) {
      map['includeControlDetails'] = includeControlDetailsValue;
    }
    final includeNullAndEmptyValue = includeNullAndEmpty;
    if (includeNullAndEmptyValue != null) {
      map['includeNullAndEmpty'] = includeNullAndEmptyValue;
    }
    final includePartitionValueValue = includePartitionValue;
    if (includePartitionValueValue != null) {
      map['includePartitionValue'] = includePartitionValueValue;
    }
    final includeTableAlterOperationsValue = includeTableAlterOperations;
    if (includeTableAlterOperationsValue != null) {
      map['includeTableAlterOperations'] = includeTableAlterOperationsValue;
    }
    final includeTransactionDetailsValue = includeTransactionDetails;
    if (includeTransactionDetailsValue != null) {
      map['includeTransactionDetails'] = includeTransactionDetailsValue;
    }
    final messageFormatValue = messageFormat;
    if (messageFormatValue != null) {
      map['messageFormat'] = messageFormatValue;
    }
    final messageMaxBytesValue = messageMaxBytes;
    if (messageMaxBytesValue != null) {
      map['messageMaxBytes'] = messageMaxBytesValue;
    }
    final noHexPrefixValue = noHexPrefix;
    if (noHexPrefixValue != null) {
      map['noHexPrefix'] = noHexPrefixValue;
    }
    final partitionIncludeSchemaTableValue = partitionIncludeSchemaTable;
    if (partitionIncludeSchemaTableValue != null) {
      map['partitionIncludeSchemaTable'] = partitionIncludeSchemaTableValue;
    }
    final saslMechanismValue = saslMechanism;
    if (saslMechanismValue != null) {
      map['saslMechanism'] = saslMechanismValue;
    }
    final saslPasswordValue = saslPassword;
    if (saslPasswordValue != null) {
      map['saslPassword'] = saslPasswordValue;
    }
    final saslUsernameValue = saslUsername;
    if (saslUsernameValue != null) {
      map['saslUsername'] = saslUsernameValue;
    }
    final securityProtocolValue = securityProtocol;
    if (securityProtocolValue != null) {
      map['securityProtocol'] = securityProtocolValue;
    }
    final sslCaCertificateArnValue = sslCaCertificateArn;
    if (sslCaCertificateArnValue != null) {
      map['sslCaCertificateArn'] = sslCaCertificateArnValue;
    }
    final sslClientCertificateArnValue = sslClientCertificateArn;
    if (sslClientCertificateArnValue != null) {
      map['sslClientCertificateArn'] = sslClientCertificateArnValue;
    }
    final sslClientKeyArnValue = sslClientKeyArn;
    if (sslClientKeyArnValue != null) {
      map['sslClientKeyArn'] = sslClientKeyArnValue;
    }
    final sslClientKeyPasswordValue = sslClientKeyPassword;
    if (sslClientKeyPasswordValue != null) {
      map['sslClientKeyPassword'] = sslClientKeyPasswordValue;
    }
    final topicValue = topic;
    if (topicValue != null) {
      map['topic'] = topicValue;
    }
    return map;
  }

  factory EndpointKafkaSettings.fromMap(Map<String, dynamic> map) {
    return EndpointKafkaSettings(
      broker: map['broker'] as String,
      includeControlDetails: map['includeControlDetails'] == null
          ? null
          : map['includeControlDetails'] as bool,
      includeNullAndEmpty: map['includeNullAndEmpty'] == null
          ? null
          : map['includeNullAndEmpty'] as bool,
      includePartitionValue: map['includePartitionValue'] == null
          ? null
          : map['includePartitionValue'] as bool,
      includeTableAlterOperations: map['includeTableAlterOperations'] == null
          ? null
          : map['includeTableAlterOperations'] as bool,
      includeTransactionDetails: map['includeTransactionDetails'] == null
          ? null
          : map['includeTransactionDetails'] as bool,
      messageFormat:
          map['messageFormat'] == null ? null : map['messageFormat'] as String,
      messageMaxBytes:
          map['messageMaxBytes'] == null ? null : map['messageMaxBytes'] as int,
      noHexPrefix:
          map['noHexPrefix'] == null ? null : map['noHexPrefix'] as bool,
      partitionIncludeSchemaTable: map['partitionIncludeSchemaTable'] == null
          ? null
          : map['partitionIncludeSchemaTable'] as bool,
      saslMechanism:
          map['saslMechanism'] == null ? null : map['saslMechanism'] as String,
      saslPassword:
          map['saslPassword'] == null ? null : map['saslPassword'] as String,
      saslUsername:
          map['saslUsername'] == null ? null : map['saslUsername'] as String,
      securityProtocol: map['securityProtocol'] == null
          ? null
          : map['securityProtocol'] as String,
      sslCaCertificateArn: map['sslCaCertificateArn'] == null
          ? null
          : map['sslCaCertificateArn'] as String,
      sslClientCertificateArn: map['sslClientCertificateArn'] == null
          ? null
          : map['sslClientCertificateArn'] as String,
      sslClientKeyArn: map['sslClientKeyArn'] == null
          ? null
          : map['sslClientKeyArn'] as String,
      sslClientKeyPassword: map['sslClientKeyPassword'] == null
          ? null
          : map['sslClientKeyPassword'] as String,
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
