// ignore_for_file: unused_element, unnecessary_cast


/// Profile for how to handle networking for Lab Plans.
class LabPlanNetworkProfile {
  /// The external subnet resource id
  final String? subnetId;

  /// Creates a new [LabPlanNetworkProfile].
  /// [subnetId] The external subnet resource id
  LabPlanNetworkProfile({
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subnetId': ?subnetId,
    };
  }

  factory LabPlanNetworkProfile.fromMap(Map<String, dynamic> map) {
    return LabPlanNetworkProfile(
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

