// ignore_for_file: unused_element, unnecessary_cast

/// Version contains structured information about the version of a package.
class VersionResponse {
  /// Used to correct mistakes in the version numbering scheme.
  final int epoch;

  /// Human readable version string. This string is of the form :- and is only set when kind is NORMAL.
  final String fullName;

  /// Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  final bool inclusive;

  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  final String kind;

  /// Required only when version kind is NORMAL. The main part of the version name.
  final String name;

  /// The iteration of the package build from the above version.
  final String revision;

  /// Creates a new [VersionResponse].
  /// [epoch] Used to correct mistakes in the version numbering scheme.
  /// [fullName] Human readable version string. This string is of the form :- and is only set when kind is NORMAL.
  /// [inclusive] Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  /// [kind] Distinguishes between sentinel MIN/MAX versions and normal versions.
  /// [name] Required only when version kind is NORMAL. The main part of the version name.
  /// [revision] The iteration of the package build from the above version.
  VersionResponse({
    required this.epoch,
    required this.fullName,
    required this.inclusive,
    required this.kind,
    required this.name,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'epoch': epoch,
      'fullName': fullName,
      'inclusive': inclusive,
      'kind': kind,
      'name': name,
      'revision': revision,
    };
  }

  factory VersionResponse.fromMap(Map<String, dynamic> map) {
    return VersionResponse(
      epoch: map['epoch'] as int,
      fullName: map['fullName'] as String,
      inclusive: map['inclusive'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      revision: map['revision'] as String,
    );
  }
}
