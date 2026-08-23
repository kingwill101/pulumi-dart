// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_profile.dart';

/// Specifications on VirtualMachines agent pool.
class VirtualMachinesProfile {
  /// Specifications on how to scale a VirtualMachines agent pool.
  final pulumi.Input<ScaleProfile>? scale;

  /// Creates a new [VirtualMachinesProfile].
  /// [scale] Specifications on how to scale a VirtualMachines agent pool.
  const VirtualMachinesProfile({
    this.scale,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scale': ?pulumi.Input.mapOptionalInputValue<ScaleProfile, Map<String, dynamic>>(scale, (value) => value.toMap()),
    };
  }

  factory VirtualMachinesProfile.fromMap(Map<String, dynamic> map) {
    return VirtualMachinesProfile(
      scale: (() { final guardedValue = map['scale']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ScaleProfile.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
