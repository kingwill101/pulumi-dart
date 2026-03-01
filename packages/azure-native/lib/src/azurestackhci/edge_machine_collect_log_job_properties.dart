// ignore_for_file: unused_element, unnecessary_cast


/// Properties for pausing a server in the cluster.
class EdgeMachineCollectLogJobProperties {
  /// Deployment mode to trigger job.
  final String? deploymentMode;
  /// From date for log collection.
  final String fromDate;
  /// Job Type supported.
  /// Expected value is 'CollectLog'.
  final String jobType;
  /// To date for log collection.
  final String toDate;

  /// Creates a new [EdgeMachineCollectLogJobProperties].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [fromDate] From date for log collection.
  /// [jobType] Job Type supported.
  /// [toDate] To date for log collection.
  EdgeMachineCollectLogJobProperties({
    this.deploymentMode,
    required this.fromDate,
    required this.jobType,
    required this.toDate,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deploymentMode': ?deploymentMode,
      'fromDate': fromDate,
      'jobType': jobType,
      'toDate': toDate,
    };
  }

  factory EdgeMachineCollectLogJobProperties.fromMap(Map<String, dynamic> map) {
    return EdgeMachineCollectLogJobProperties(
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode'] as String,
      fromDate: map['fromDate'] as String,
      jobType: map['jobType'] as String,
      toDate: map['toDate'] as String,
    );
  }
}

