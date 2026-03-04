// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApplicationNasConfig {
  /// The domain name of the mount target.
  final pulumi.Input<String>? mountDomain;

  /// The mount path of the container.
  final pulumi.Input<String>? mountPath;

  /// The ID of the NAS file system.
  final pulumi.Input<String>? nasId;

  /// The directory in the NAS file system.
  final pulumi.Input<String>? nasPath;

  /// Specifies whether the application can read data from or write data to resources in the directory of the NAS. Valid values: `true` and `false`. If you set `read_only` to `false`, the application has the read and write permissions.
  final pulumi.Input<bool>? readOnly;

  /// Creates a new [ApplicationNasConfig].
  /// [mountDomain] The domain name of the mount target.
  /// [mountPath] The mount path of the container.
  /// [nasId] The ID of the NAS file system.
  /// [nasPath] The directory in the NAS file system.
  /// [readOnly] Specifies whether the application can read data from or write data to resources in the directory of the NAS. Valid values: `true` and `false`. If you set `read_only` to `false`, the application has the read and write permissions.
  ApplicationNasConfig({
    this.mountDomain,
    this.mountPath,
    this.nasId,
    this.nasPath,
    this.readOnly,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mountDomain': ?mountDomain,
      'mountPath': ?mountPath,
      'nasId': ?nasId,
      'nasPath': ?nasPath,
      'readOnly': ?readOnly,
    };
  }

  factory ApplicationNasConfig.fromMap(Map<String, dynamic> map) {
    return ApplicationNasConfig(
      mountDomain: (() {
        final guardedValue = map['mountDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountPath: (() {
        final guardedValue = map['mountPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nasId: (() {
        final guardedValue = map['nasId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nasPath: (() {
        final guardedValue = map['nasPath'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      readOnly: (() {
        final guardedValue = map['readOnly'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
    );
  }
}
