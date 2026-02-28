// ignore_for_file: unused_element, unnecessary_cast

class ReservationReservationSharingPolicy {
  /// Sharing config for all Google Cloud services.
  /// Possible values are: `ALLOW_ALL`, `DISALLOW_ALL`.
  final String? serviceShareType;

  /// Creates a new [ReservationReservationSharingPolicy].
  /// [serviceShareType] Sharing config for all Google Cloud services.
  ReservationReservationSharingPolicy({
    this.serviceShareType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final serviceShareTypeValue = serviceShareType;
    if (serviceShareTypeValue != null) {
      map['serviceShareType'] = serviceShareTypeValue;
    }
    return map;
  }

  factory ReservationReservationSharingPolicy.fromMap(
      Map<String, dynamic> map) {
    return ReservationReservationSharingPolicy(
      serviceShareType: map['serviceShareType'] == null
          ? null
          : map['serviceShareType'] as String,
    );
  }
}
