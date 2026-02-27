// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response_osconfig_v1alpha.dart';

/// An RPM package file. RPM packages only support INSTALLED state.
class OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha {
  /// Whether dependencies should also be installed. - install when false: `rpm --upgrade --replacepkgs package.rpm` - install when true: `yum -y install package.rpm` or `zypper -y install package.rpm`
  final bool pullDeps;

  /// An rpm package.
  final OSPolicyResourceFileResponseOsconfigV1alpha source;

  OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha({
    required this.pullDeps,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['pullDeps'] = pullDeps;
    map['source'] = source.toMap();
    return map;
  }

  factory OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceRPMResponseOsconfigV1alpha(
      pullDeps: map['pullDeps'] as bool,
      source: OSPolicyResourceFileResponseOsconfigV1alpha.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
