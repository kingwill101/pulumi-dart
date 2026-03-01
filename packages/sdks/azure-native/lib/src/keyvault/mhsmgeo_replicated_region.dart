// ignore_for_file: unused_element, unnecessary_cast


/// A region that this managed HSM Pool has been extended to.
class MHSMGeoReplicatedRegion {
  /// A boolean value that indicates whether the region is the primary region or a secondary region.
  final bool? isPrimary;
  /// Name of the geo replicated region.
  final String? name;

  /// Creates a new [MHSMGeoReplicatedRegion].
  /// [isPrimary] A boolean value that indicates whether the region is the primary region or a secondary region.
  /// [name] Name of the geo replicated region.
  MHSMGeoReplicatedRegion({
    this.isPrimary,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'isPrimary': ?isPrimary,
      'name': ?name,
    };
  }

  factory MHSMGeoReplicatedRegion.fromMap(Map<String, dynamic> map) {
    return MHSMGeoReplicatedRegion(
      isPrimary: map['isPrimary'] == null ? null : map['isPrimary'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

