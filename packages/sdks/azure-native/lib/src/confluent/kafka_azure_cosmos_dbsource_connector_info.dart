// ignore_for_file: unused_element, unnecessary_cast


/// The partner connector type is KafkaAzureCosmosDBSource
class KafkaAzureCosmosDBSourceConnectorInfo {
  /// Kafka API Key
  final String? apiKey;
  /// Kafka API Secret
  final String? apiSecret;
  /// Kafka Auth Type
  final String? authType;
  /// Kafka Input Data Format Type
  final String? inputFormat;
  /// Maximum Tasks
  final String? maxTasks;
  /// Kafka Output Data Format Type
  final String? outputFormat;
  /// Partner Connector type.
  /// Expected value is 'KafkaAzureCosmosDBSource'.
  final String partnerConnectorType;
  /// Kafka Service Account Id
  final String? serviceAccountId;
  /// Kafka topics Regex pattern
  final String? topicRegex;
  /// Kafka topics directory
  final String? topicsDir;

  /// Creates a new [KafkaAzureCosmosDBSourceConnectorInfo].
  /// [apiKey] Kafka API Key
  /// [apiSecret] Kafka API Secret
  /// [authType] Kafka Auth Type
  /// [inputFormat] Kafka Input Data Format Type
  /// [maxTasks] Maximum Tasks
  /// [outputFormat] Kafka Output Data Format Type
  /// [partnerConnectorType] Partner Connector type.
  /// [serviceAccountId] Kafka Service Account Id
  /// [topicRegex] Kafka topics Regex pattern
  /// [topicsDir] Kafka topics directory
  KafkaAzureCosmosDBSourceConnectorInfo({
    this.apiKey,
    this.apiSecret,
    this.authType,
    this.inputFormat,
    this.maxTasks,
    this.outputFormat,
    required this.partnerConnectorType,
    this.serviceAccountId,
    this.topicRegex,
    this.topicsDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiSecret': ?apiSecret,
      'authType': ?authType,
      'inputFormat': ?inputFormat,
      'maxTasks': ?maxTasks,
      'outputFormat': ?outputFormat,
      'partnerConnectorType': partnerConnectorType,
      'serviceAccountId': ?serviceAccountId,
      'topicRegex': ?topicRegex,
      'topicsDir': ?topicsDir,
    };
  }

  factory KafkaAzureCosmosDBSourceConnectorInfo.fromMap(Map<String, dynamic> map) {
    return KafkaAzureCosmosDBSourceConnectorInfo(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      apiSecret: map['apiSecret'] == null ? null : map['apiSecret'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
      inputFormat: map['inputFormat'] == null ? null : map['inputFormat'] as String,
      maxTasks: map['maxTasks'] == null ? null : map['maxTasks'] as String,
      outputFormat: map['outputFormat'] == null ? null : map['outputFormat'] as String,
      partnerConnectorType: map['partnerConnectorType'] as String,
      serviceAccountId: map['serviceAccountId'] == null ? null : map['serviceAccountId'] as String,
      topicRegex: map['topicRegex'] == null ? null : map['topicRegex'] as String,
      topicsDir: map['topicsDir'] == null ? null : map['topicsDir'] as String,
    );
  }
}

