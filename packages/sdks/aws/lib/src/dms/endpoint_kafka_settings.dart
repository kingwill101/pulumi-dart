// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EndpointKafkaSettings {
  /// Kafka broker location. Specify in the form broker-hostname-or-ip:port.
  final pulumi.Input<String> broker;
  /// Shows detailed control information for table definition, column definition, and table and column changes in the Kafka message output. Default is `false`.
  final pulumi.Input<bool>? includeControlDetails;
  /// Include NULL and empty columns for records migrated to the endpoint. Default is `false`.
  final pulumi.Input<bool>? includeNullAndEmpty;
  /// Shows the partition value within the Kafka message output unless the partition type is `schema-table-type`. Default is `false`.
  final pulumi.Input<bool>? includePartitionValue;
  /// Includes any data definition language (DDL) operations that change the table in the control data, such as `rename-table`, `drop-table`, `add-column`, `drop-column`, and `rename-column`. Default is `false`.
  final pulumi.Input<bool>? includeTableAlterOperations;
  /// Provides detailed transaction information from the source database. This information includes a commit timestamp, a log position, and values for `transaction_id`, previous `transaction_id`, and `transaction_record_id` (the record offset within a transaction). Default is `false`.
  final pulumi.Input<bool>? includeTransactionDetails;
  /// Output format for the records created on the endpoint. Message format is `JSON` (default) or `JSON_UNFORMATTED` (a single line with no tab).
  final pulumi.Input<String>? messageFormat;
  /// Maximum size in bytes for records created on the endpoint Default is `1,000,000`.
  final pulumi.Input<int>? messageMaxBytes;
  /// Set this optional parameter to true to avoid adding a '0x' prefix to raw data in hexadecimal format. For example, by default, AWS DMS adds a '0x' prefix to the LOB column type in hexadecimal format moving from an Oracle source to a Kafka target. Use the `no_hex_prefix` endpoint setting to enable migration of RAW data type columns without adding the `'0x'` prefix.
  final pulumi.Input<bool>? noHexPrefix;
  /// Prefixes schema and table names to partition values, when the partition type is `primary-key-type`. Doing this increases data distribution among Kafka partitions. For example, suppose that a SysBench schema has thousands of tables and each table has only limited range for a primary key. In this case, the same primary key is sent from thousands of tables to the same partition, which causes throttling. Default is `false`.
  final pulumi.Input<bool>? partitionIncludeSchemaTable;
  /// For SASL/SSL authentication, AWS DMS supports the `scram-sha-512` mechanism by default. AWS DMS versions 3.5.0 and later also support the PLAIN mechanism. To use the PLAIN mechanism, set this parameter to `plain`.
  final pulumi.Input<String>? saslMechanism;
  /// Secure password you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication.
  final pulumi.Input<String>? saslPassword;
  /// Secure user name you created when you first set up your MSK cluster to validate a client identity and make an encrypted connection between server and client using SASL-SSL authentication.
  final pulumi.Input<String>? saslUsername;
  /// Set secure connection to a Kafka target endpoint using Transport Layer Security (TLS). Options include `ssl-encryption`, `ssl-authentication`, and `sasl-ssl`. `sasl-ssl` requires `sasl_username` and `sasl_password`.
  final pulumi.Input<String>? securityProtocol;
  /// ARN for the private certificate authority (CA) cert that AWS DMS uses to securely connect to your Kafka target endpoint.
  final pulumi.Input<String>? sslCaCertificateArn;
  /// ARN of the client certificate used to securely connect to a Kafka target endpoint.
  final pulumi.Input<String>? sslClientCertificateArn;
  /// ARN for the client private key used to securely connect to a Kafka target endpoint.
  final pulumi.Input<String>? sslClientKeyArn;
  /// Password for the client private key used to securely connect to a Kafka target endpoint.
  final pulumi.Input<String>? sslClientKeyPassword;
  /// Kafka topic for migration. Default is `kafka-default-topic`.
  final pulumi.Input<String>? topic;

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
  const EndpointKafkaSettings({
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
    return <String, dynamic>{
      'broker': broker,
      'includeControlDetails': ?includeControlDetails,
      'includeNullAndEmpty': ?includeNullAndEmpty,
      'includePartitionValue': ?includePartitionValue,
      'includeTableAlterOperations': ?includeTableAlterOperations,
      'includeTransactionDetails': ?includeTransactionDetails,
      'messageFormat': ?messageFormat,
      'messageMaxBytes': ?messageMaxBytes,
      'noHexPrefix': ?noHexPrefix,
      'partitionIncludeSchemaTable': ?partitionIncludeSchemaTable,
      'saslMechanism': ?saslMechanism,
      'saslPassword': ?saslPassword,
      'saslUsername': ?saslUsername,
      'securityProtocol': ?securityProtocol,
      'sslCaCertificateArn': ?sslCaCertificateArn,
      'sslClientCertificateArn': ?sslClientCertificateArn,
      'sslClientKeyArn': ?sslClientKeyArn,
      'sslClientKeyPassword': ?sslClientKeyPassword,
      'topic': ?topic,
    };
  }

  factory EndpointKafkaSettings.fromMap(Map<String, dynamic> map) {
    return EndpointKafkaSettings(
      broker: pulumi.Input.fromValue(map['broker'] as String),
      includeControlDetails: (() { final guardedValue = map['includeControlDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeNullAndEmpty: (() { final guardedValue = map['includeNullAndEmpty']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includePartitionValue: (() { final guardedValue = map['includePartitionValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeTableAlterOperations: (() { final guardedValue = map['includeTableAlterOperations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      includeTransactionDetails: (() { final guardedValue = map['includeTransactionDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      messageFormat: (() { final guardedValue = map['messageFormat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      messageMaxBytes: (() { final guardedValue = map['messageMaxBytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      noHexPrefix: (() { final guardedValue = map['noHexPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      partitionIncludeSchemaTable: (() { final guardedValue = map['partitionIncludeSchemaTable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      saslMechanism: (() { final guardedValue = map['saslMechanism']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saslPassword: (() { final guardedValue = map['saslPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      saslUsername: (() { final guardedValue = map['saslUsername']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityProtocol: (() { final guardedValue = map['securityProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslCaCertificateArn: (() { final guardedValue = map['sslCaCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslClientCertificateArn: (() { final guardedValue = map['sslClientCertificateArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslClientKeyArn: (() { final guardedValue = map['sslClientKeyArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sslClientKeyPassword: (() { final guardedValue = map['sslClientKeyPassword']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      topic: (() { final guardedValue = map['topic']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

