// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response2.dart';

/// An MSI package. MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSIResponse2 {
  /// Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  final List<String> properties;

  /// The MSI package.
  final OSPolicyResourceFileResponse2 source;

  OSPolicyResourcePackageResourceMSIResponse2({
    required this.properties,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['properties'] = properties;
    map['source'] = source.toMap();
    return map;
  }

  factory OSPolicyResourcePackageResourceMSIResponse2.fromMap(
      Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceMSIResponse2(
      properties: (map['properties'] as List).cast<String>(),
      source: OSPolicyResourceFileResponse2.fromMap(
          (map['source'] as Map).cast<String, dynamic>()),
    );
  }
}
