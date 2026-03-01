// ignore_for_file: unused_element, unnecessary_cast


class OperatingSystemDetails {
  final String? os;
  final String? osArchitecture;
  final String? osName;
  final String? osVersion;

  /// Creates a new [OperatingSystemDetails].
  /// [os] Optional.
  /// [osArchitecture] Optional.
  /// [osName] Optional.
  /// [osVersion] Optional.
  OperatingSystemDetails({
    this.os,
    this.osArchitecture,
    this.osName,
    this.osVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'os': ?os,
      'osArchitecture': ?osArchitecture,
      'osName': ?osName,
      'osVersion': ?osVersion,
    };
  }

  factory OperatingSystemDetails.fromMap(Map<String, dynamic> map) {
    return OperatingSystemDetails(
      os: map['os'] == null ? null : map['os'] as String,
      osArchitecture: map['osArchitecture'] == null ? null : map['osArchitecture'] as String,
      osName: map['osName'] == null ? null : map['osName'] as String,
      osVersion: map['osVersion'] == null ? null : map['osVersion'] as String,
    );
  }
}

