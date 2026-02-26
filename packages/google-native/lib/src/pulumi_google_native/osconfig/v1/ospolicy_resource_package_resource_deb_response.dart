// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response.dart';

/// A deb package file. dpkg packages only support INSTALLED state.
class OSPolicyResourcePackageResourceDebResponse {
  /// Whether dependencies should also be installed. - install when false: `dpkg -i package` - install when true: `apt-get update && apt-get -y install package.deb`
  final bool pullDeps;

  /// A deb package.
  final OSPolicyResourceFileResponse source;

  OSPolicyResourcePackageResourceDebResponse({
    required this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pullDeps'] = pullDeps;
    map['source'] = source.toMap();
    return map;
  }

  factory OSPolicyResourcePackageResourceDebResponse.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceDebResponse(
      pullDeps: map['pullDeps'] as bool,
      source: OSPolicyResourceFileResponse.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
