// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ImageBuilderDomainJoinInfo {
  /// Fully qualified name of the directory (for example, corp.example.com).
  final pulumi.Input<String>? directoryName;

  /// Distinguished name of the organizational unit for computer accounts.
  final pulumi.Input<String>? organizationalUnitDistinguishedName;

  /// Creates a new [ImageBuilderDomainJoinInfo].
  /// [directoryName] Fully qualified name of the directory (for example, corp.example.com).
  /// [organizationalUnitDistinguishedName] Distinguished name of the organizational unit for computer accounts.
  ImageBuilderDomainJoinInfo({
    this.directoryName,
    this.organizationalUnitDistinguishedName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'directoryName': ?directoryName,
      'organizationalUnitDistinguishedName':
          ?organizationalUnitDistinguishedName,
    };
  }

  factory ImageBuilderDomainJoinInfo.fromMap(Map<String, dynamic> map) {
    return ImageBuilderDomainJoinInfo(
      directoryName: (() {
        final guardedValue = map['directoryName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      organizationalUnitDistinguishedName: (() {
        final guardedValue = map['organizationalUnitDistinguishedName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
