// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_osconfig_v1alpha.dart';

/// An MSI package. MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSIOsconfigV1alpha {
  /// Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  final List<String>? properties;

  /// The MSI package.
  final OSPolicyResourceFileOsconfigV1alpha source;

  OSPolicyResourcePackageResourceMSIOsconfigV1alpha({
    this.properties,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    map['source'] = source.toMap();
    return map;
  }

  factory OSPolicyResourcePackageResourceMSIOsconfigV1alpha.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceMSIOsconfigV1alpha(
      properties: map['properties'] == null
          ? null
          : (map['properties'] as List).cast<String>(),
      source: OSPolicyResourceFileOsconfigV1alpha.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
