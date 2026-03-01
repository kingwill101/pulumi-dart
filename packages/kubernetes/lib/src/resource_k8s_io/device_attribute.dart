// ignore_for_file: unused_element, unnecessary_cast


/// DeviceAttribute must have exactly one field set.
class DeviceAttribute {
  /// BoolValue is a true/false value.
  final bool? bool;
  /// IntValue is a number.
  final int? int;
  /// StringValue is a string. Must not be longer than 64 characters.
  final String? string;
  /// VersionValue is a semantic version according to semver.org spec 2.0.0. Must not be longer than 64 characters.
  final String? version;

  /// Creates a new [DeviceAttribute].
  /// [bool] BoolValue is a true/false value.
  /// [int] IntValue is a number.
  /// [string] StringValue is a string. Must not be longer than 64 characters.
  /// [version] VersionValue is a semantic version according to semver.org spec 2.0.0. Must not be longer than 64 characters.
  DeviceAttribute({
    this.bool,
    this.int,
    this.string,
    this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bool': ?bool,
      'int': ?int,
      'string': ?string,
      'version': ?version,
    };
  }

  factory DeviceAttribute.fromMap(Map<String, dynamic> map) {
    return DeviceAttribute(
      bool: map['bool'] == null ? null : map['bool'] as bool,
      int: map['int'] == null ? null : map['int'] as int,
      string: map['string'] == null ? null : map['string'] as String,
      version: map['version'] == null ? null : map['version'] as String,
    );
  }
}

