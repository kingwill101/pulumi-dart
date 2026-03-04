// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationConfigMapMountDescV2 {
  /// The ID of the ConfigMap.
  final pulumi.Input<String>? configMapId;

  /// The key.
  final pulumi.Input<String>? key;

  /// The mount path.
  final pulumi.Input<String>? mountPath;

  /// Creates a new [ApplicationConfigMapMountDescV2].
  /// [configMapId] The ID of the ConfigMap.
  /// [key] The key.
  /// [mountPath] The mount path.
  ApplicationConfigMapMountDescV2({this.configMapId, this.key, this.mountPath});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapId': ?configMapId,
      'key': ?key,
      'mountPath': ?mountPath,
    };
  }

  factory ApplicationConfigMapMountDescV2.fromMap(Map<String, dynamic> map) {
    return ApplicationConfigMapMountDescV2(
      configMapId: (() {
        final guardedValue = map['configMapId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountPath: (() {
        final guardedValue = map['mountPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
