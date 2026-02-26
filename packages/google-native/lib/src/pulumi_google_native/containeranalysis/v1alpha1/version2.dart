// ignore_for_file: unused_element, unnecessary_cast

import 'version_kind2.dart';

/// Version contains structured information about the version of the package. For a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/debian-packages-version-convention For a discussion of this in Redhat/Fedora/Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
class Version2 {
  /// Used to correct mistakes in the version numbering scheme.
  final int? epoch;

  /// Whether this version is vulnerable, when defining the version bounds. For example, if the minimum version is 2.0, inclusive=true would say 2.0 is vulnerable, while inclusive=false would say it's not
  final bool? inclusive;

  /// Distinguish between sentinel MIN/MAX versions and normal versions. If kind is not NORMAL, then the other fields are ignored.
  final VersionKind2? kind;

  /// The main part of the version name.
  final String? name;

  /// The iteration of the package build from the above version.
  final String? revision;

  Version2({
    this.epoch,
    this.inclusive,
    this.kind,
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
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue.value;
    }
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

  factory Version2.fromMap(Map<String, dynamic> map) {
    return Version2(
      epoch: map['epoch'] == null ? null : map['epoch'] as int,
      inclusive: map['inclusive'] == null ? null : map['inclusive'] as bool,
      kind: map['kind'] == null
          ? null
          : VersionKind2.fromValue(map['kind'] as String),
      name: map['name'] == null ? null : map['name'] as String,
      revision: map['revision'] == null ? null : map['revision'] as String,
    );
  }
}
