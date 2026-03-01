// ignore_for_file: unused_element, unnecessary_cast


/// The partner connector type is KafkaAzureCosmosDBSink
class KafkaAzureCosmosDBSinkConnectorInfo {
  /// Kafka API Key
  final String? apiKey;
  /// Kafka API Key Secret
  final String? apiSecret;
  /// Kafka Auth Type
  final String? authType;
  /// Flush size
  final String? flushSize;
  /// Kafka Input Data Format Type
  final String? inputFormat;
  /// Maximum Tasks
  final String? maxTasks;
  /// Kafka Output Data Format Type
  final String? outputFormat;
  /// Partner Connector type.
  /// Expected value is 'KafkaAzureCosmosDBSink'.
  final String partnerConnectorType;
  /// Kafka Service Account Id
  final String? serviceAccountId;
  /// Time Interval
  final String? timeInterval;
  /// Kafka topics list
  final List<String>? topics;
  /// Kafka topics directory
  final String? topicsDir;

  /// Creates a new [KafkaAzureCosmosDBSinkConnectorInfo].
  /// [apiKey] Kafka API Key
  /// [apiSecret] Kafka API Key Secret
  /// [authType] Kafka Auth Type
  /// [flushSize] Flush size
  /// [inputFormat] Kafka Input Data Format Type
  /// [maxTasks] Maximum Tasks
  /// [outputFormat] Kafka Output Data Format Type
  /// [partnerConnectorType] Partner Connector type.
  /// [serviceAccountId] Kafka Service Account Id
  /// [timeInterval] Time Interval
  /// [topics] Kafka topics list
  /// [topicsDir] Kafka topics directory
  KafkaAzureCosmosDBSinkConnectorInfo({
    this.apiKey,
    this.apiSecret,
    this.authType,
    this.flushSize,
    this.inputFormat,
    this.maxTasks,
    this.outputFormat,
    required this.partnerConnectorType,
    this.serviceAccountId,
    this.timeInterval,
    this.topics,
    this.topicsDir,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': ?apiKey,
      'apiSecret': ?apiSecret,
      'authType': ?authType,
      'flushSize': ?flushSize,
      'inputFormat': ?inputFormat,
      'maxTasks': ?maxTasks,
      'outputFormat': ?outputFormat,
      'partnerConnectorType': partnerConnectorType,
      'serviceAccountId': ?serviceAccountId,
      'timeInterval': ?timeInterval,
      'topics': ?topics,
      'topicsDir': ?topicsDir,
    };
  }

  factory KafkaAzureCosmosDBSinkConnectorInfo.fromMap(Map<String, dynamic> map) {
    return KafkaAzureCosmosDBSinkConnectorInfo(
      apiKey: map['apiKey'] == null ? null : map['apiKey'] as String,
      apiSecret: map['apiSecret'] == null ? null : map['apiSecret'] as String,
      authType: map['authType'] == null ? null : map['authType'] as String,
      flushSize: map['flushSize'] == null ? null : map['flushSize'] as String,
      inputFormat: map['inputFormat'] == null ? null : map['inputFormat'] as String,
      maxTasks: map['maxTasks'] == null ? null : map['maxTasks'] as String,
      outputFormat: map['outputFormat'] == null ? null : map['outputFormat'] as String,
      partnerConnectorType: map['partnerConnectorType'] as String,
      serviceAccountId: map['serviceAccountId'] == null ? null : map['serviceAccountId'] as String,
      timeInterval: map['timeInterval'] == null ? null : map['timeInterval'] as String,
      topics: map['topics'] == null ? null : (map['topics'] as List).cast<String>(),
      topicsDir: map['topicsDir'] == null ? null : map['topicsDir'] as String,
    );
  }
}

