// ignore_for_file: unused_element, unnecessary_cast


/// Represents the properties of an HCI Collect Log job.
class HciCollectLogJobProperties {
  /// Deployment mode to trigger job.
  final String? deploymentMode;
  /// From date for log collection.
  final String fromDate;
  /// Job Type supported.
  /// Expected value is 'CollectLog'.
  final String jobType;
  /// To date for log collection.
  final String toDate;

  /// Creates a new [HciCollectLogJobProperties].
  /// [deploymentMode] Deployment mode to trigger job.
  /// [fromDate] From date for log collection.
  /// [jobType] Job Type supported.
  /// [toDate] To date for log collection.
  HciCollectLogJobProperties({
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

  factory HciCollectLogJobProperties.fromMap(Map<String, dynamic> map) {
    return HciCollectLogJobProperties(
      deploymentMode: map['deploymentMode'] == null ? null : map['deploymentMode'] as String,
      fromDate: map['fromDate'] as String,
      jobType: map['jobType'] as String,
      toDate: map['toDate'] as String,
    );
  }
}

