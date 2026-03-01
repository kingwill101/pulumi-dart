// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity {
  /// Type of reservation to consume Possible values: TYPE_UNSPECIFIED, NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION
  final String? consumeReservationType;

  /// Corresponds to the label key of reservation resource.
  final String? key;

  /// Corresponds to the label values of reservation resource.
  final List<String>? values;

  /// Creates a new [WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity].
  /// [consumeReservationType] Type of reservation to consume Possible values: TYPE_UNSPECIFIED, NO_RESERVATION, ANY_RESERVATION, SPECIFIC_RESERVATION
  /// [key] Corresponds to the label key of reservation resource.
  /// [values] Corresponds to the label values of reservation resource.
  WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity({
    this.consumeReservationType,
    this.key,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'consumeReservationType': ?consumeReservationType,
      'key': ?key,
      'values': ?values,
    };
  }

  factory WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplatePlacementManagedClusterConfigGceClusterConfigReservationAffinity(
      consumeReservationType: map['consumeReservationType'] == null
          ? null
          : map['consumeReservationType'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      values: map['values'] == null
          ? null
          : (map['values'] as List).cast<String>(),
    );
  }
}
