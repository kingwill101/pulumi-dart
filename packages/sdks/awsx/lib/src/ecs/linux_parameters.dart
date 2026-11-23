// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'kernel_capabilities.dart';

class LinuxParameters {
  /// Linux capabilities to add to or remove from the container.
  final pulumi.Input<KernelCapabilities?>? capabilities;
  /// Run an init process that forwards signals and reaps processes.
  final pulumi.Input<bool?>? initProcessEnabled;

  /// Creates a new [LinuxParameters].
  /// [capabilities] Linux capabilities to add to or remove from the container.
  /// [initProcessEnabled] Run an init process that forwards signals and reaps processes.
  const LinuxParameters({
    this.capabilities,
    this.initProcessEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'capabilities': ?pulumi.Input.mapOptionalInputValue<KernelCapabilities, Map<String, dynamic>>(capabilities, (value) => value.toMap()),
      'initProcessEnabled': ?initProcessEnabled,
    };
  }

  factory LinuxParameters.fromMap(Map<String, dynamic> map) {
    return LinuxParameters(
      capabilities: (() { final guardedValue = map['capabilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KernelCapabilities.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      initProcessEnabled: (() { final guardedValue = map['initProcessEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
