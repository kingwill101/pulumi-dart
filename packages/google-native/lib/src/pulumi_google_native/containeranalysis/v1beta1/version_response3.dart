// ignore_for_file: unused_element, unnecessary_cast

/// Version contains structured information about the version of a package.
class VersionResponse3 {
  /// Used to correct mistakes in the version numbering scheme.
  final int epoch;

  /// Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  final bool inclusive;

  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  final String kind;

  /// Required only when version kind is NORMAL. The main part of the version name.
  final String name;

  /// The iteration of the package build from the above version.
  final String revision;

  VersionResponse3({
    required this.epoch,
    required this.inclusive,
    required this.kind,
    required this.name,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['epoch'] = epoch;
    map['inclusive'] = inclusive;
    map['kind'] = kind;
    map['name'] = name;
    map['revision'] = revision;
    return map;
  }

  factory VersionResponse3.fromMap(Map<String, dynamic> map) {
    return VersionResponse3(
      epoch: map['epoch'] as int,
      inclusive: map['inclusive'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      revision: map['revision'] as String,
    );
  }
}
