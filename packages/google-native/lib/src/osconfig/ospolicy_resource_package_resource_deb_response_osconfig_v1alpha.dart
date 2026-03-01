// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response_osconfig_v1alpha.dart';

/// A deb package file. dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha {
  /// Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  final bool pullDeps;

  /// A deb package.
  final OSPolicyResourceFileResponseOsconfigV1alpha source;

  /// Creates a new [OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  /// [source] A deb package.
  OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha({
    required this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pullDeps': pullDeps, 'source': source.toMap()};
  }

  factory OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourcePackageResourceDebResponseOsconfigV1alpha(
      pullDeps: map['pullDeps'] as bool,
      source: OSPolicyResourceFileResponseOsconfigV1alpha.fromMap(
        (map['source'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
