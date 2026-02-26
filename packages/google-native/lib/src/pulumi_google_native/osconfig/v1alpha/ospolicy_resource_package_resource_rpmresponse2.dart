// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response2.dart';

/// An RPM package file. RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPMResponse2 {
  /// Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  final bool pullDeps;

  /// An rpm package.
  final OSPolicyResourceFileResponse2 source;

  OSPolicyResourcePackageResourceRPMResponse2({
    required this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pullDeps'] = pullDeps;
    map['source'] = source.toMap();
    return map;
  }

  factory OSPolicyResourcePackageResourceRPMResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceRPMResponse2(
      pullDeps: map['pullDeps'] as bool,
      source: OSPolicyResourceFileResponse2.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
