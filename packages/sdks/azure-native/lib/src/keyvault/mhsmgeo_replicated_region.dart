// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A region that this managed HSM Pool has been extended to.
class MHSMGeoReplicatedRegion {
  /// A boolean value that indicates whether the region is the primary region or a secondary region.
  final pulumi.Input<bool>? isPrimary;
  /// Name of the geo replicated region.
  final pulumi.Input<String>? name;

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
      isPrimary: map['isPrimary'] == null ? null : (map['isPrimary'] as bool).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
    );
  }
}

