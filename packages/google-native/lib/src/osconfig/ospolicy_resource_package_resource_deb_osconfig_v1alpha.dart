// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_osconfig_v1alpha.dart';

/// A deb package file. dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDebOsconfigV1alpha {
  /// Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  final bool? pullDeps;

  /// A deb package.
  final OSPolicyResourceFileOsconfigV1alpha source;

  /// Creates a new [OSPolicyResourcePackageResourceDebOsconfigV1alpha].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  /// [source] A deb package.
  OSPolicyResourcePackageResourceDebOsconfigV1alpha({
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

  factory OSPolicyResourcePackageResourceDebOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceDebOsconfigV1alpha(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source: OSPolicyResourceFileOsconfigV1alpha.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
