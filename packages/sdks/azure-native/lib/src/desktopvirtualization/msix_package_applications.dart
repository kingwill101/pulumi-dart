// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Schema for MSIX Package Application properties.
class MsixPackageApplications {
  /// Package Application Id, found in appxmanifest.xml.
  final pulumi.Input<String?>? appId;
  /// Used to activate Package Application. Consists of Package Name and ApplicationID. Found in appxmanifest.xml.
  final pulumi.Input<String?>? appUserModelID;
  /// Description of Package Application.
  final pulumi.Input<String?>? description;
  /// User friendly name.
  final pulumi.Input<String?>? friendlyName;
  /// User friendly name.
  final pulumi.Input<String?>? iconImageName;
  /// the icon a 64 bit string as a byte array.
  final pulumi.Input<String?>? rawIcon;
  /// the icon a 64 bit string as a byte array.
  final pulumi.Input<String?>? rawPng;

  /// Creates a new [MsixPackageApplications].
  /// [appId] Package Application Id, found in appxmanifest.xml.
  /// [appUserModelID] Used to activate Package Application. Consists of Package Name and ApplicationID. Found in appxmanifest.xml.
  /// [description] Description of Package Application.
  /// [friendlyName] User friendly name.
  /// [iconImageName] User friendly name.
  /// [rawIcon] the icon a 64 bit string as a byte array.
  /// [rawPng] the icon a 64 bit string as a byte array.
  const MsixPackageApplications({
    this.appId,
    this.appUserModelID,
    this.description,
    this.friendlyName,
    this.iconImageName,
    this.rawIcon,
    this.rawPng,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appId': ?appId,
      'appUserModelID': ?appUserModelID,
      'description': ?description,
      'friendlyName': ?friendlyName,
      'iconImageName': ?iconImageName,
      'rawIcon': ?rawIcon,
      'rawPng': ?rawPng,
    };
  }

  factory MsixPackageApplications.fromMap(Map<String, dynamic> map) {
    return MsixPackageApplications(
      appId: (() { final guardedValue = map['appId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      appUserModelID: (() { final guardedValue = map['appUserModelID']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      friendlyName: (() { final guardedValue = map['friendlyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      iconImageName: (() { final guardedValue = map['iconImageName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawIcon: (() { final guardedValue = map['rawIcon']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      rawPng: (() { final guardedValue = map['rawPng']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
