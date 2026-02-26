// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response2.dart';

/// A deb package file. dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDebResponse2 {
  /// Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  final bool pullDeps;

  /// A deb package.
  final OSPolicyResourceFileResponse2 source;

  OSPolicyResourcePackageResourceDebResponse2({
    required this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pullDeps'] = pullDeps;
    map['source'] = source.toMap();
    return map;
  }

  factory OSPolicyResourcePackageResourceDebResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceDebResponse2(
      pullDeps: map['pullDeps'] as bool,
      source: OSPolicyResourceFileResponse2.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
