// ignore_for_file: unused_element, unnecessary_cast


/// KPI Resource Health Details
class KPIResourceHealthDetails {
  /// Resource Health Status
  final String? resourceHealthStatus;

  /// Creates a new [KPIResourceHealthDetails].
  /// [resourceHealthStatus] Resource Health Status
  KPIResourceHealthDetails({
    this.resourceHealthStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceHealthStatus': ?resourceHealthStatus,
    };
  }

  factory KPIResourceHealthDetails.fromMap(Map<String, dynamic> map) {
    return KPIResourceHealthDetails(
      resourceHealthStatus: map['resourceHealthStatus'] == null ? null : map['resourceHealthStatus'] as String,
    );
  }
}

