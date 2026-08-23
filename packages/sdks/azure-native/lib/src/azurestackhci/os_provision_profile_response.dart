// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Operating system profile.
class OsProvisionProfileResponse {
  /// GPG Public Key used for package verification
  final pulumi.Input<String>? gpgPubKey;
  /// Hash of the OS package downloaded
  final pulumi.Input<String>? imageHash;
  /// Operation sub type of OS Provisioning
  final pulumi.Input<String>? operationType;
  /// Location of the operating system image.
  final pulumi.Input<String>? osImageLocation;
  /// Name of the operating system.
  final pulumi.Input<String>? osName;
  /// Type of the operating system.
  final pulumi.Input<String>? osType;
  /// Version of the operating system.
  final pulumi.Input<String>? osVersion;
  /// Validated Solution Recipe version to be used for the job
  final pulumi.Input<String>? vsrVersion;

  /// Creates a new [OsProvisionProfileResponse].
  /// [gpgPubKey] GPG Public Key used for package verification
  /// [imageHash] Hash of the OS package downloaded
  /// [operationType] Operation sub type of OS Provisioning
  /// [osImageLocation] Location of the operating system image.
  /// [osName] Name of the operating system.
  /// [osType] Type of the operating system.
  /// [osVersion] Version of the operating system.
  /// [vsrVersion] Validated Solution Recipe version to be used for the job
  const OsProvisionProfileResponse({
    this.gpgPubKey,
    this.imageHash,
    this.operationType,
    this.osImageLocation,
    this.osName,
    this.osType,
    this.osVersion,
    this.vsrVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gpgPubKey': ?gpgPubKey,
      'imageHash': ?imageHash,
      'operationType': ?operationType,
      'osImageLocation': ?osImageLocation,
      'osName': ?osName,
      'osType': ?osType,
      'osVersion': ?osVersion,
      'vsrVersion': ?vsrVersion,
    };
  }

  factory OsProvisionProfileResponse.fromMap(Map<String, dynamic> map) {
    return OsProvisionProfileResponse(
      gpgPubKey: (() { final guardedValue = map['gpgPubKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageHash: (() { final guardedValue = map['imageHash']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      operationType: (() { final guardedValue = map['operationType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osImageLocation: (() { final guardedValue = map['osImageLocation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osName: (() { final guardedValue = map['osName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      osVersion: (() { final guardedValue = map['osVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vsrVersion: (() { final guardedValue = map['vsrVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
