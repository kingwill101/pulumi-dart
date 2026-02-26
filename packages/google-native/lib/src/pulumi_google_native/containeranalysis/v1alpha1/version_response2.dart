// ignore_for_file: unused_element, unnecessary_cast

/// Version contains structured information about the version of the package. For a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/debian-packages-version-convention For a discussion of this in Redhat/Fedora/Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
class VersionResponse2 {
  /// Used to correct mistakes in the version numbering scheme.
  final int epoch;

  /// Whether this version is vulnerable, when defining the version bounds. For example, if the minimum version is 2.0, inclusive=true would say 2.0 is vulnerable, while inclusive=false would say it's not
  final bool inclusive;

  /// Distinguish between sentinel MIN/MAX versions and normal versions. If kind is not NORMAL, then the other fields are ignored.
  final String kind;

  /// The main part of the version name.
  final String name;

  /// The iteration of the package build from the above version.
  final String revision;

  VersionResponse2({
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

  factory VersionResponse2.fromMap(Map<String, dynamic> map) {
    return VersionResponse2(
      epoch: map['epoch'] as int,
      inclusive: map['inclusive'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      revision: map['revision'] as String,
    );
  }
}
