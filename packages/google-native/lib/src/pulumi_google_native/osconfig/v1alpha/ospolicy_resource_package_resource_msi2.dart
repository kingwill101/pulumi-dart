// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file2.dart';

/// An MSI package. MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSI2 {
  /// Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  final List<String>? properties;

  /// The MSI package.
  final OSPolicyResourceFile2 source;

  OSPolicyResourcePackageResourceMSI2({
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

  factory OSPolicyResourcePackageResourceMSI2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceMSI2(
      properties: map['properties'] == null
          ? null
          : (map['properties'] as List).cast<String>(),
      source: OSPolicyResourceFile2.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
