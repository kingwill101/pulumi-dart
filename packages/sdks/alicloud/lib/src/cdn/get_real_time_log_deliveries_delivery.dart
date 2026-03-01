// ignore_for_file: unused_element, unnecessary_cast


class GetRealTimeLogDeliveriesDelivery {
  /// Real-Time Log Service Domain.
  final String domain;
  /// The ID of the Real Time Log Delivery.
  final String id;
  /// The name of the Logstore that collects log data from Alibaba Cloud Content Delivery Network (CDN) in real time.
  final String logstore;
  /// The name of the Log Service project that is used for real-time log delivery.
  final String project;
  /// The region where the Log Service project is deployed.
  final String slsRegion;
  /// The status of the real-time log delivery feature. Valid Values: `online` and `offline`.
  final String status;

  /// Creates a new [GetRealTimeLogDeliveriesDelivery].
  /// [domain] Real-Time Log Service Domain.
  /// [id] The ID of the Real Time Log Delivery.
  /// [logstore] The name of the Logstore that collects log data from Alibaba Cloud Content Delivery Network (CDN) in real time.
  /// [project] The name of the Log Service project that is used for real-time log delivery.
  /// [slsRegion] The region where the Log Service project is deployed.
  /// [status] The status of the real-time log delivery feature. Valid Values: `online` and `offline`.
  GetRealTimeLogDeliveriesDelivery({
    required this.domain,
    required this.id,
    required this.logstore,
    required this.project,
    required this.slsRegion,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domain': domain,
      'id': id,
      'logstore': logstore,
      'project': project,
      'slsRegion': slsRegion,
      'status': status,
    };
  }

  factory GetRealTimeLogDeliveriesDelivery.fromMap(Map<String, dynamic> map) {
    return GetRealTimeLogDeliveriesDelivery(
      domain: map['domain'] as String,
      id: map['id'] as String,
      logstore: map['logstore'] as String,
      project: map['project'] as String,
      slsRegion: map['slsRegion'] as String,
      status: map['status'] as String,
    );
  }
}

