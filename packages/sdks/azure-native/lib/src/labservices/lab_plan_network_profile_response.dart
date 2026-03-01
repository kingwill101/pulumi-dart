// ignore_for_file: unused_element, unnecessary_cast


/// Profile for how to handle networking for Lab Plans.
class LabPlanNetworkProfileResponse {
  /// The external subnet resource id
  final String? subnetId;

  /// Creates a new [LabPlanNetworkProfileResponse].
  /// [subnetId] The external subnet resource id
  LabPlanNetworkProfileResponse({
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': ?subnetId,
    };
  }

  factory LabPlanNetworkProfileResponse.fromMap(Map<String, dynamic> map) {
    return LabPlanNetworkProfileResponse(
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

