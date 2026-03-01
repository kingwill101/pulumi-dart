// ignore_for_file: unused_element, unnecessary_cast

/// Version contains structured information about the version of the package. For a discussion of this in Debian/Ubuntu: http://serverfault.com/questions/604541/debian-packages-version-convention For a discussion of this in Redhat/Fedora/Centos: http://blog.jasonantman.com/2014/07/how-yum-and-rpm-compare-versions/
class VersionResponseContaineranalysisV1alpha1 {
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

  /// Creates a new [VersionResponseContaineranalysisV1alpha1].
  /// [epoch] Used to correct mistakes in the version numbering scheme.
  /// [inclusive] Whether this version is vulnerable, when defining the version bounds. For example, if the minimum version is 2.0, inclusive=true would say 2.0 is vulnerable, while inclusive=false would say it's not
  /// [kind] Distinguish between sentinel MIN/MAX versions and normal versions. If kind is not NORMAL, then the other fields are ignored.
  /// [name] The main part of the version name.
  /// [revision] The iteration of the package build from the above version.
  VersionResponseContaineranalysisV1alpha1({
    required this.epoch,
    required this.inclusive,
    required this.kind,
    required this.name,
    required this.revision,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'epoch': epoch,
      'inclusive': inclusive,
      'kind': kind,
      'name': name,
      'revision': revision,
    };
  }

  factory VersionResponseContaineranalysisV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return VersionResponseContaineranalysisV1alpha1(
      epoch: map['epoch'] as int,
      inclusive: map['inclusive'] as bool,
      kind: map['kind'] as String,
      name: map['name'] as String,
      revision: map['revision'] as String,
    );
  }
}
