// ignore_for_file: unused_element, unnecessary_cast

import 'version_kind.dart';

/// Version contains structured information about the version of a package.
class Version {
  /// Used to correct mistakes in the version numbering scheme.
  final int? epoch;

  /// Human readable version string. This string is of the form :- and is only set when kind is NORMAL.
  final String? fullName;

  /// Whether this version is specifying part of an inclusive range. Grafeas does not have the capability to specify version ranges; instead we have fields that specify start version and end versions. At times this is insufficient - we also need to specify whether the version is included in the range or is excluded from the range. This boolean is expected to be set to true when the version is included in a range.
  final bool? inclusive;

  /// Distinguishes between sentinel MIN/MAX versions and normal versions.
  final VersionKind kind;

  /// Required only when version kind is NORMAL. The main part of the version name.
  final String? name;

  /// The iteration of the package build from the above version.
  final String? revision;

  Version({
    this.epoch,
    this.fullName,
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
    final fullNameValue = fullName;
    if (fullNameValue != null) {
      map['fullName'] = fullNameValue;
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

  factory Version.fromMap(Map<String, dynamic> map) {
    return Version(
      epoch: map['epoch'] == null ? null : map['epoch'] as int,
      fullName: map['fullName'] == null ? null : map['fullName'] as String,
      inclusive: map['inclusive'] == null ? null : map['inclusive'] as bool,
      kind: VersionKind.fromValue(map['kind'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      revision: map['revision'] == null ? null : map['revision'] as String,
    );
  }
}
