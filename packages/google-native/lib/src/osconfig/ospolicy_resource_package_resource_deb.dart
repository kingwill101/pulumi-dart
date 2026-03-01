// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file.dart';

/// A deb package file. dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDeb {
  /// Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  final bool? pullDeps;

  /// A deb package.
  final OSPolicyResourceFile source;

  /// Creates a new [OSPolicyResourcePackageResourceDeb].
  /// [pullDeps] Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  /// [source] A deb package.
  OSPolicyResourcePackageResourceDeb({this.pullDeps, required this.source});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'pullDeps': ?pullDeps, 'source': source.toMap()};
  }

  factory OSPolicyResourcePackageResourceDeb.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceDeb(
      pullDeps: map['pullDeps'] == null ? null : map['pullDeps'] as bool,
      source: OSPolicyResourceFile.fromMap(
        (map['source'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
