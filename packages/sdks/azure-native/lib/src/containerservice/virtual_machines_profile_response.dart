// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scale_profile_response.dart';

/// Specifications on VirtualMachines agent pool.
class VirtualMachinesProfileResponse {
  /// Specifications on how to scale a VirtualMachines agent pool.
  final pulumi.Input<ScaleProfileResponse>? scale;

  /// Creates a new [VirtualMachinesProfileResponse].
  /// [scale] Specifications on how to scale a VirtualMachines agent pool.
  VirtualMachinesProfileResponse({this.scale});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scale':
          ?pulumi.Input.mapOptionalInputValue<
            ScaleProfileResponse,
            Map<String, dynamic>
          >(scale, (value) => value.toMap()),
    };
  }

  factory VirtualMachinesProfileResponse.fromMap(Map<String, dynamic> map) {
    return VirtualMachinesProfileResponse(
      scale: (() {
        final guardedValue = map['scale'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ScaleProfileResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
