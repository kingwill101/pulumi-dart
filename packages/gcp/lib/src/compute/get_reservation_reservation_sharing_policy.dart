// ignore_for_file: unused_element, unnecessary_cast

class GetReservationReservationSharingPolicy {
  /// Sharing config for all Google Cloud services. Possible values: ["ALLOW_ALL", "DISALLOW_ALL"]
  final String serviceShareType;

  /// Creates a new [GetReservationReservationSharingPolicy].
  /// [serviceShareType] Sharing config for all Google Cloud services. Possible values: ["ALLOW_ALL", "DISALLOW_ALL"]
  GetReservationReservationSharingPolicy({
    required this.serviceShareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['serviceShareType'] = serviceShareType;
    return map;
  }

  factory GetReservationReservationSharingPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetReservationReservationSharingPolicy(
      serviceShareType: map['serviceShareType'] as String,
    );
  }
}
