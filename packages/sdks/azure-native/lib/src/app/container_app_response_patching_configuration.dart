// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Container App auto patch configuration.
class ContainerAppResponsePatchingConfiguration {
  /// Patching mode for the container app. Null or default in this field will be interpreted as Automatic by RP. Automatic mode will automatically apply available patches. Manual mode will require the user to manually apply patches. Disabled mode will stop patch detection and auto patching.
  final pulumi.Input<String>? patchingMode;

  /// Creates a new [ContainerAppResponsePatchingConfiguration].
  /// [patchingMode] Patching mode for the container app. Null or default in this field will be interpreted as Automatic by RP. Automatic mode will automatically apply available patches. Manual mode will require the user to manually apply patches. Disabled mode will stop patch detection and auto patching.
  ContainerAppResponsePatchingConfiguration({
    this.patchingMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'patchingMode': ?patchingMode,
    };
  }

  factory ContainerAppResponsePatchingConfiguration.fromMap(Map<String, dynamic> map) {
    return ContainerAppResponsePatchingConfiguration(
      patchingMode: (() { final guardedValue = map['patchingMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

