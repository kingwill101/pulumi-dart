// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A region that this managed HSM Pool has been extended to.
class MHSMGeoReplicatedRegionResponse {
  /// A boolean value that indicates whether the region is the primary region or a secondary region.
  final pulumi.Input<bool>? isPrimary;
  /// Name of the geo replicated region.
  final pulumi.Input<String>? name;
  /// Provisioning state of the geo replicated region.
  final pulumi.Input<String> provisioningState;

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
      isPrimary: (() { final guardedValue = map['isPrimary']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
    );
  }
}

