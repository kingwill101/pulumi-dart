// ignore_for_file: unused_element, unnecessary_cast

import 'scale_profile_response.dart';

/// Specifications on VirtualMachines agent pool.
class VirtualMachinesProfileResponse {
  /// Specifications on how to scale a VirtualMachines agent pool.
  final ScaleProfileResponse? scale;

  /// Creates a new [VirtualMachinesProfileResponse].
  /// [scale] Specifications on how to scale a VirtualMachines agent pool.
  VirtualMachinesProfileResponse({
    this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scale': ?scale == null ? null : scale!.toMap(),
    };
  }

  factory VirtualMachinesProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinesProfileResponse(
      scale: map['scale'] == null ? null : ScaleProfileResponse.fromMap((map['scale'] as Map).cast<String, dynamic>()),
    );
  }
}

