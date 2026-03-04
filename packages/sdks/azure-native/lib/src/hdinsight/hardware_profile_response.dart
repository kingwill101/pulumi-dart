// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The hardware profile.
class HardwareProfileResponse {
  /// The size of the VM
  final pulumi.Input<String>? vmSize;

  /// Creates a new [HardwareProfileResponse].
  /// [vmSize] The size of the VM
  HardwareProfileResponse({this.vmSize});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'vmSize': ?vmSize};
  }

  factory HardwareProfileResponse.fromMap(Map<String, dynamic> map) {
    return HardwareProfileResponse(
      vmSize: (() {
        final guardedValue = map['vmSize'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
