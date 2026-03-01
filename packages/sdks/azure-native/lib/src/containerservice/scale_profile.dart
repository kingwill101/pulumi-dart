// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'manual_scale_profile.dart';

/// Specifications on how to scale a VirtualMachines agent pool.
class ScaleProfile {
  /// Specifications on how to scale the VirtualMachines agent pool to a fixed size.
  final List<ManualScaleProfile>? manual;

  /// Creates a new [ScaleProfile].
  /// [manual] Specifications on how to scale the VirtualMachines agent pool to a fixed size.
  ScaleProfile({
    this.manual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manual': ?manual == null ? null : pulumi.Input.encodeList<ManualScaleProfile, Map<String, dynamic>>(manual!, (value) => value.toMap()),
    };
  }

  factory ScaleProfile.fromMap(Map<String, dynamic> map) {
    return ScaleProfile(
      manual: map['manual'] == null ? null : pulumi.Input.decodeList<ManualScaleProfile>(map['manual'], (value) => ManualScaleProfile.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

