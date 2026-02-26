// ignore_for_file: unused_element, unnecessary_cast

/// Defines machines types and a rank to which the machines types belong.
class InstanceSelectionResponse {
  /// Optional. Full machine-type names, e.g. "n1-standard-16".
  final List<String> machineTypes;

  /// Optional. Preference of this instance selection. Lower number means higher preference. Dataproc will first try to create a VM based on the machine-type with priority rank and fallback to next rank based on availability. Machine types and instance selections with the same priority have the same preference.
  final int rank;

  InstanceSelectionResponse({
    required this.machineTypes,
    required this.rank,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['machineTypes'] = machineTypes;
    map['rank'] = rank;
    return map;
  }

  factory InstanceSelectionResponse.fromMap(Map<String, dynamic> map) {
    return InstanceSelectionResponse(
      machineTypes: (map['machineTypes'] as List).cast<String>(),
      rank: map['rank'] as int,
    );
  }
}
