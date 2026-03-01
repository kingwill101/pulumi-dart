// ignore_for_file: unused_element, unnecessary_cast


class NodeMonitoringDataResponse {
  /// Unmatched properties from the message are deserialized in this collection.
  final Map<String, dynamic> additionalProperties;
  /// Available memory (MB) on the integration runtime node.
  final int availableMemoryInMB;
  /// Maximum concurrent jobs on the integration runtime node.
  final int concurrentJobsLimit;
  /// The number of jobs currently running on the integration runtime node.
  final int concurrentJobsRunning;
  /// CPU percentage on the integration runtime node.
  final int cpuUtilization;
  /// The maximum concurrent jobs in this integration runtime.
  final int maxConcurrentJobs;
  /// Name of the integration runtime node.
  final String nodeName;
  /// Received bytes on the integration runtime node.
  final double receivedBytes;
  /// Sent bytes on the integration runtime node.
  final double sentBytes;

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
  NodeMonitoringDataResponse({
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
      additionalProperties: (map['additionalProperties'] as Map).cast<String, dynamic>(),
      availableMemoryInMB: map['availableMemoryInMB'] as int,
      concurrentJobsLimit: map['concurrentJobsLimit'] as int,
      concurrentJobsRunning: map['concurrentJobsRunning'] as int,
      cpuUtilization: map['cpuUtilization'] as int,
      maxConcurrentJobs: map['maxConcurrentJobs'] as int,
      nodeName: map['nodeName'] as String,
      receivedBytes: map['receivedBytes'] as double,
      sentBytes: map['sentBytes'] as double,
    );
  }
}

