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
  OsProvisionProfileResponse({
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
      gpgPubKey: map['gpgPubKey'] == null ? null : (map['gpgPubKey'] as String).input(),
      imageHash: map['imageHash'] == null ? null : (map['imageHash'] as String).input(),
      operationType: map['operationType'] == null ? null : (map['operationType'] as String).input(),
      osImageLocation: map['osImageLocation'] == null ? null : (map['osImageLocation'] as String).input(),
      osName: map['osName'] == null ? null : (map['osName'] as String).input(),
      osType: map['osType'] == null ? null : (map['osType'] as String).input(),
      osVersion: map['osVersion'] == null ? null : (map['osVersion'] as String).input(),
      vsrVersion: map['vsrVersion'] == null ? null : (map['vsrVersion'] as String).input(),
    );
  }
}

