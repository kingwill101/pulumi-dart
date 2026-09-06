// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App auto patch configuration.
class ContainerAppPatchingConfiguration {
  /// Patching mode for the container app. Null or default in this field will be interpreted as Automatic by RP. Automatic mode will automatically apply available patches. Manual mode will require the user to manually apply patches. Disabled mode will stop patch detection and auto patching.
  final pulumi.Input<dynamic>? patchingMode;

  /// Creates a new [ContainerAppPatchingConfiguration].
  /// [patchingMode] Patching mode for the container app. Null or default in this field will be interpreted as Automatic by RP. Automatic mode will automatically apply available patches. Manual mode will require the user to manually apply patches. Disabled mode will stop patch detection and auto patching.
  const ContainerAppPatchingConfiguration({
    this.patchingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchingMode': ?patchingMode,
    };
  }

  factory ContainerAppPatchingConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerAppPatchingConfiguration(
      patchingMode: (() { final guardedValue = map['patchingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
