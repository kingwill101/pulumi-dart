// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeMonitoringDataResponse {
  /// Unmatched properties from the message are deserialized in this collection.
  final pulumi.Input<Map<String, dynamic>> additionalProperties;
  /// Available memory (MB) on the integration runtime node.
  final pulumi.Input<int> availableMemoryInMB;
  /// Maximum concurrent jobs on the integration runtime node.
  final pulumi.Input<int> concurrentJobsLimit;
  /// The number of jobs currently running on the integration runtime node.
  final pulumi.Input<int> concurrentJobsRunning;
  /// CPU percentage on the integration runtime node.
  final pulumi.Input<int> cpuUtilization;
  /// The maximum concurrent jobs in this integration runtime.
  final pulumi.Input<int> maxConcurrentJobs;
  /// Name of the integration runtime node.
  final pulumi.Input<String> nodeName;
  /// Received bytes on the integration runtime node.
  final pulumi.Input<double> receivedBytes;
  /// Sent bytes on the integration runtime node.
  final pulumi.Input<double> sentBytes;

  /// Creates a new [NodeMonitoringDataResponse].
  /// [additionalProperties] Unmatched properties from the message are deserialized in this collection.
  /// [availableMemoryInMB] Available memory (MB) on the integration runtime node.
  /// [concurrentJobsLimit] Maximum concurrent jobs on the integration runtime node.
  /// [concurrentJobsRunning] The number of jobs currently running on the integration runtime node.
  /// [cpuUtilization] CPU percentage on the integration runtime node.
  /// [maxConcurrentJobs] The maximum concurrent jobs in this integration runtime.
  /// [nodeName] Name of the integration runtime node.
  /// [receivedBytes] Received bytes on the integration runtime node.
  /// [sentBytes] Sent bytes on the integration runtime node.
  const NodeMonitoringDataResponse({
    required this.additionalProperties,
    required this.availableMemoryInMB,
    required this.concurrentJobsLimit,
    required this.concurrentJobsRunning,
    required this.cpuUtilization,
    required this.maxConcurrentJobs,
    required this.nodeName,
    required this.receivedBytes,
    required this.sentBytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalProperties': additionalProperties,
      'availableMemoryInMB': availableMemoryInMB,
      'concurrentJobsLimit': concurrentJobsLimit,
      'concurrentJobsRunning': concurrentJobsRunning,
      'cpuUtilization': cpuUtilization,
      'maxConcurrentJobs': maxConcurrentJobs,
      'nodeName': nodeName,
      'receivedBytes': receivedBytes,
      'sentBytes': sentBytes,
    };
  }

  factory NodeMonitoringDataResponse.fromMap(Map<String, dynamic> map) {
    return NodeMonitoringDataResponse(
      additionalProperties: pulumi.Input.fromValue((map['additionalProperties'] as Map).cast<String, dynamic>()),
      availableMemoryInMB: pulumi.Input.fromValue(map['availableMemoryInMB'] as int),
      concurrentJobsLimit: pulumi.Input.fromValue(map['concurrentJobsLimit'] as int),
      concurrentJobsRunning: pulumi.Input.fromValue(map['concurrentJobsRunning'] as int),
      cpuUtilization: pulumi.Input.fromValue(map['cpuUtilization'] as int),
      maxConcurrentJobs: pulumi.Input.fromValue(map['maxConcurrentJobs'] as int),
      nodeName: pulumi.Input.fromValue(map['nodeName'] as String),
      receivedBytes: pulumi.Input.fromValue(map['receivedBytes'] as double),
      sentBytes: pulumi.Input.fromValue(map['sentBytes'] as double),
    );
  }
}

