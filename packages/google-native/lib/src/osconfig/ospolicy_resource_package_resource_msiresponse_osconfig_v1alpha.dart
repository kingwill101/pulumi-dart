// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response_osconfig_v1alpha.dart';

/// An MSI package. MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha {
  /// Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  final List<String> properties;
  /// The MSI package.
  final OSPolicyResourceFileResponseOsconfigV1alpha source;

  /// Creates a new [OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha].
  /// [properties] Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  /// [source] The MSI package.
  OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha({
    required this.properties,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': properties,
      'source': source.toMap(),
    };
  }

  factory OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceMSIResponseOsconfigV1alpha(
      properties: (map['properties'] as List).cast<String>(),
      source: OSPolicyResourceFileResponseOsconfigV1alpha.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

