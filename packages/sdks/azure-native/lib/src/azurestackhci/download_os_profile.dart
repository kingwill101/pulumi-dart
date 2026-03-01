// ignore_for_file: unused_element, unnecessary_cast


/// Operating system profile.
class DownloadOsProfile {
  /// GPG Public Key used for package verification
  final String? gpgPubKey;
  /// Hash of the OS package downloaded
  final String? imageHash;
  /// Location of the operating system image.
  final String? osImageLocation;
  /// Name of the operating system.
  final String? osName;
  /// Type of the operating system.
  final String? osType;
  /// Version of the operating system.
  final String? osVersion;
  /// Validated Solution Recipe version to be used for the job
  final String? vsrVersion;

  /// Creates a new [DownloadOsProfile].
  /// [gpgPubKey] GPG Public Key used for package verification
  /// [imageHash] Hash of the OS package downloaded
  /// [osImageLocation] Location of the operating system image.
  /// [osName] Name of the operating system.
  /// [osType] Type of the operating system.
  /// [osVersion] Version of the operating system.
  /// [vsrVersion] Validated Solution Recipe version to be used for the job
  DownloadOsProfile({
    this.gpgPubKey,
    this.imageHash,
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
      'osImageLocation': ?osImageLocation,
      'osName': ?osName,
      'osType': ?osType,
      'osVersion': ?osVersion,
      'vsrVersion': ?vsrVersion,
    };
  }

  factory DownloadOsProfile.fromMap(Map<String, dynamic> map) {
    return DownloadOsProfile(
      gpgPubKey: map['gpgPubKey'] == null ? null : map['gpgPubKey'] as String,
      imageHash: map['imageHash'] == null ? null : map['imageHash'] as String,
      osImageLocation: map['osImageLocation'] == null ? null : map['osImageLocation'] as String,
      osName: map['osName'] == null ? null : map['osName'] as String,
      osType: map['osType'] == null ? null : map['osType'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
      vsrVersion: map['vsrVersion'] == null ? null : map['vsrVersion'] as String,
    );
  }
}

