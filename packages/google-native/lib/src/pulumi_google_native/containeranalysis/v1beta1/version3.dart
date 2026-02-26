// ignore_for_file: unused_element, unnecessary_cast

import 'version_kind3.dart';

/// Version contains structured information about the version of a package.
class Version3 {
  /// Used to correct mistakes in the version numbering scheme.
  final int? epoch;

  /// Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  final bool? inclusive;

  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  final VersionKind3 kind;

  /// Required only when version kind is NORMAL. The main part of the version name.
  final String? name;

  /// The iteration of the package build from the above version.
  final String? revision;

  Version3({
    this.epoch,
    this.inclusive,
    required this.kind,
    this.name,
    this.revision,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final epochValue = epoch;
    if (epochValue != null) {
      map['epoch'] = epochValue;
    }
    final inclusiveValue = inclusive;
    if (inclusiveValue != null) {
      map['inclusive'] = inclusiveValue;
    }
    map['kind'] = kind.value;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final revisionValue = revision;
    if (revisionValue != null) {
      map['revision'] = revisionValue;
    }
    return map;
  }

  factory Version3.fromMap(Map<String, dynamic> map) {
    return Version3(
      epoch: map['epoch'] == null ? null : map['epoch'] as int,
      inclusive: map['inclusive'] == null ? null : map['inclusive'] as bool,
      kind: VersionKind3.fromValue(map['kind'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      revision: map['revision'] == null ? null : map['revision'] as String,
    );
  }
}
