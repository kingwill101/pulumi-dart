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
  ApplicationConfigMapMountDescV2({
    this.configMapId,
    this.key,
    this.mountPath,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configMapId': ?configMapId,
      'key': ?key,
      'mountPath': ?mountPath,
    };
  }

  factory ApplicationConfigMapMountDescV2.fromMap(Map<String, dynamic> map) {
    return ApplicationConfigMapMountDescV2(
      configMapId: map['configMapId'] == null ? null : (map['configMapId']! as String).input(),
      key: map['key'] == null ? null : (map['key']! as String).input(),
      mountPath: map['mountPath'] == null ? null : (map['mountPath']! as String).input(),
    );
  }
}

