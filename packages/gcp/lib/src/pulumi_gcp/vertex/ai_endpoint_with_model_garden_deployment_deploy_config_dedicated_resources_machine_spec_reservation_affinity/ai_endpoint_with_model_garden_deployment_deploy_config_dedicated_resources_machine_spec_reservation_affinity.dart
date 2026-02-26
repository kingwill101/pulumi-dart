// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity {
  /// Corresponds to the label key of a reservation resource. To target a
  /// SPECIFIC_RESERVATION by name, use `compute.googleapis.com/reservation-name`
  /// as the key and specify the name of your reservation as its value.
  final String? key;

  /// Specifies the reservation affinity type.
  /// Possible values:
  /// TYPE_UNSPECIFIED
  /// NO_RESERVATION
  /// ANY_RESERVATION
  /// SPECIFIC_RESERVATION
  final String reservationAffinityType;

  /// Corresponds to the label values of a reservation resource. This must be the
  /// full resource name of the reservation or reservation block.
  final List<String>? values;

  AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity({
    this.key,
    required this.reservationAffinityType,
    this.values,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    map['reservationAffinityType'] = reservationAffinityType;
    final valuesValue = values;
    if (valuesValue != null) {
      map['values'] = valuesValue;
    }
    return map;
  }

  factory AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity.fromMap(
      Map<String, dynamic> map) {
    return AiEndpointWithModelGardenDeploymentDeployConfigDedicatedResourcesMachineSpecReservationAffinity(
      key: map['key'] == null ? null : map['key'] as String,
      reservationAffinityType: map['reservationAffinityType'] as String,
      values:
          map['values'] == null ? null : (map['values'] as List).cast<String>(),
    );
  }
}
