// ignore_for_file: unused_element, unnecessary_cast


/// A region that this managed HSM Pool has been extended to.
class MHSMGeoReplicatedRegionResponse {
  /// A boolean value that indicates whether the region is the primary region or a secondary region.
  final bool? isPrimary;
  /// Name of the geo replicated region.
  final String? name;
  /// Provisioning state of the geo replicated region.
  final String provisioningState;

  /// Creates a new [MHSMGeoReplicatedRegionResponse].
  /// [isPrimary] A boolean value that indicates whether the region is the primary region or a secondary region.
  /// [name] Name of the geo replicated region.
  /// [provisioningState] Provisioning state of the geo replicated region.
  MHSMGeoReplicatedRegionResponse({
    this.isPrimary,
    this.name,
    required this.provisioningState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPrimary': ?isPrimary,
      'name': ?name,
      'provisioningState': provisioningState,
    };
  }

  factory MHSMGeoReplicatedRegionResponse.fromMap(Map<String, dynamic> map) {
    return MHSMGeoReplicatedRegionResponse(
      isPrimary: map['isPrimary'] == null ? null : map['isPrimary'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      provisioningState: map['provisioningState'] as String,
    );
  }
}

