// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file2.dart';

/// A deb package file. dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDeb2 {
  /// Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  final bool? pullDeps;

  /// A deb package.
  final OSPolicyResourceFile2 source;

  OSPolicyResourcePackageResourceDeb2({
    this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final pullDepsValue = pullDeps;
    if (pullDepsValue != null) {
      map['pullDeps'] = pullDepsValue;
    }
    map['source'] = source.toMap();
    return map;
  }

  factory OSPolicyResourcePackageResourceDeb2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceDeb2(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source: OSPolicyResourceFile2.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
