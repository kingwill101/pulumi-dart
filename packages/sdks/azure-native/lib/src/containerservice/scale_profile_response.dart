// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'manual_scale_profile_response.dart';

/// Specifications on how to scale a VirtualMachines agent pool.
class ScaleProfileResponse {
  /// Specifications on how to scale the VirtualMachines agent pool to a fixed size.
  final List<ManualScaleProfileResponse>? manual;

  /// Creates a new [ScaleProfileResponse].
  /// [manual] Specifications on how to scale the VirtualMachines agent pool to a fixed size.
  ScaleProfileResponse({
    this.manual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manual': ?manual == null ? null : pulumi.Input.encodeList<ManualScaleProfileResponse, Map<String, dynamic>>(manual!, (value) => value.toMap()),
    };
  }

  factory ScaleProfileResponse.fromMap(Map<String, dynamic> map) {
    return ScaleProfileResponse(
      manual: map['manual'] == null ? null : pulumi.Input.decodeList<ManualScaleProfileResponse>(map['manual'], (value) => ManualScaleProfileResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

