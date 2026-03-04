// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the operating system settings for the Azure Large Instance.
class OsProfile {
  /// Specifies the host OS name of the Azure Large Instance.
  final pulumi.Input<String>? computerName;

  /// This property allows you to specify the type of the OS.
  final pulumi.Input<String>? osType;

  /// Specifies the SSH public key used to access the operating system.
  final pulumi.Input<String>? sshPublicKey;

  /// Specifies version of operating system.
  final pulumi.Input<String>? version;

  /// Creates a new [OsProfile].
  /// [computerName] Specifies the host OS name of the Azure Large Instance.
  /// [osType] This property allows you to specify the type of the OS.
  /// [sshPublicKey] Specifies the SSH public key used to access the operating system.
  /// [version] Specifies version of operating system.
  OsProfile({this.computerName, this.osType, this.sshPublicKey, this.version});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computerName': ?computerName,
      'osType': ?osType,
      'sshPublicKey': ?sshPublicKey,
      'version': ?version,
    };
  }

  factory OsProfile.fromMap(Map<String, dynamic> map) {
    return OsProfile(
      computerName: (() {
        final guardedValue = map['computerName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      osType: (() {
        final guardedValue = map['osType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sshPublicKey: (() {
        final guardedValue = map['sshPublicKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      version: (() {
        final guardedValue = map['version'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
