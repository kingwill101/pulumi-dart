// ignore_for_file: unused_element, unnecessary_cast

class EndpointKafkaSettings {
  /// Kafka broker location. Specify in the form broker-hostname-or-ip:port.
  final String broker;

  /// Shows detailed control information for table definition, column definition, and table and column changes in the Kafka message output. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includeControlDetails;

  /// Include NULL and empty columns for records migrated to the endpoint. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includeNullAndEmpty;

  /// Shows the partition value within the Kafka message output unless the partition type is `schema-table-type`. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includePartitionValue;

  /// Includes any data definition language (DDL) operations that change the table in the control data, such as `rename-table`, `drop-table`, `add-column`, `drop-column`, and `rename-column`. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includeTableAlterOperations;

  /// Provides detailed transaction information from the source database. This information includes a commit timestamp, a log position, and values for <span pulumi-lang-nodejs="`transactionId`" pulumi-lang-dotnet="`TransactionId`" pulumi-lang-go="`transactionId`" pulumi-lang-python="`transaction_id`" pulumi-lang-yaml="`transactionId`" pulumi-lang-java="`transactionId`">`transaction_id`</span>, previous <span pulumi-lang-nodejs="`transactionId`" pulumi-lang-dotnet="`TransactionId`" pulumi-lang-go="`transactionId`" pulumi-lang-python="`transaction_id`" pulumi-lang-yaml="`transactionId`" pulumi-lang-java="`transactionId`">`transaction_id`</span>, and <span pulumi-lang-nodejs="`transactionRecordId`" pulumi-lang-dotnet="`TransactionRecordId`" pulumi-lang-go="`transactionRecordId`" pulumi-lang-python="`transaction_record_id`" pulumi-lang-yaml="`transactionRecordId`" pulumi-lang-java="`transactionRecordId`">`transaction_record_id`</span> (the record offset within a transaction). Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? includeTransactionDetails;

  /// Output format for the records created on the endpoint. Message format is `JSON` (default) or `JSON_UNFORMATTED` (a single line with no tab).
  final String? messageFormat;

  /// Maximum size in bytes for records created on the endpoint Default is `1,000,000`.
  final int? messageMaxBytes;

  /// Set this optional parameter to true to avoid adding a '0x' prefix to raw data in hexadecimal format. For example, by default, AWS DMS adds a '0x' prefix to the LOB column type in hexadecimal format moving from an Oracle source to a Kafka target. Use the <span pulumi-lang-nodejs="`noHexPrefix`" pulumi-lang-dotnet="`NoHexPrefix`" pulumi-lang-go="`noHexPrefix`" pulumi-lang-python="`no_hex_prefix`" pulumi-lang-yaml="`noHexPrefix`" pulumi-lang-java="`noHexPrefix`">`no_hex_prefix`</span> endpoint setting to enable migration of RAW data type columns without adding the `'0x'` prefix.
  final bool? noHexPrefix;

  /// Prefixes schema and table names to partition values, when the partition type is `primary-key-type`. Doing this increases data distribution among Kafka partitions. For example, suppose that a SysBench schema has thousands of tables and each table has only limited range for a primary key. In this case, the same primary key is sent from thousands of tables to the same partition, which causes throttling. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? partitionIncludeSchemaTable;

  /// For SASL/SSL authentication, AWS DMS supports the `scram-sha-512` mechanism by default. AWS DMS versions 3.5.0 and later also support the PLAIN mechanism. To use the PLAIN mechanism, set this parameter to <span pulumi-lang-nodejs="`plain`" pulumi-lang-dotnet="`Plain`" pulumi-lang-go="`plain`" pulumi-lang-python="`plain`" pulumi-lang-yaml="`plain`" pulumi-lang-java="`plain`">`plain`</span>.
  final String? saslMechanism;

  /// Secure password you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication.
  final String? saslPassword;

  /// Secure user name you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication.
  final String? saslUsername;

  /// Set secure connection to a Kafka target endpoint using Transport Layer Security (TLS). Options include `ssl-encryption`, `ssl-authentication`, and `sasl-ssl`. `sasl-ssl` requires <span pulumi-lang-nodejs="`saslUsername`" pulumi-lang-dotnet="`SaslUsername`" pulumi-lang-go="`saslUsername`" pulumi-lang-python="`sasl_username`" pulumi-lang-yaml="`saslUsername`" pulumi-lang-java="`saslUsername`">`sasl_username`</span> and <span pulumi-lang-nodejs="`saslPassword`" pulumi-lang-dotnet="`SaslPassword`" pulumi-lang-go="`saslPassword`" pulumi-lang-python="`sasl_password`" pulumi-lang-yaml="`saslPassword`" pulumi-lang-java="`saslPassword`">`sasl_password`</span>.
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
