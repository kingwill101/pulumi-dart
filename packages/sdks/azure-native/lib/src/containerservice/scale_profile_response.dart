// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'manual_scale_profile_response.dart';

/// Specifications on how to scale a VirtualMachines agent pool.
class ScaleProfileResponse {
  /// Specifications on how to scale the VirtualMachines agent pool to a fixed size.
  final pulumi.Input<List<ManualScaleProfileResponse>?>? manual;

  /// Creates a new [ScaleProfileResponse].
  /// [manual] Specifications on how to scale the VirtualMachines agent pool to a fixed size.
  const ScaleProfileResponse({
    this.manual,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'manual': ?pulumi.Input.mapOptionalInputValue<List<ManualScaleProfileResponse>, List<Map<String, dynamic>>>(manual, (value) => pulumi.Input.encodeList<ManualScaleProfileResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ScaleProfileResponse.fromMap(Map<String, dynamic> map) {
    return ScaleProfileResponse(
      manual: (() { final guardedValue = map['manual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ManualScaleProfileResponse>(guardedValue, (value) => ManualScaleProfileResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
