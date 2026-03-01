// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file_response.dart';

/// An MSI package. MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSIResponse {
  /// Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  final List<String> properties;

  /// The MSI package.
  final OSPolicyResourceFileResponse source;

  /// Creates a new [OSPolicyResourcePackageResourceMSIResponse].
  /// [properties] Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  /// [source] The MSI package.
  OSPolicyResourcePackageResourceMSIResponse({
    required this.properties,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': properties,
      'source': source.toMap(),
    };
  }

  factory OSPolicyResourcePackageResourceMSIResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OSPolicyResourcePackageResourceMSIResponse(
      properties: (map['properties'] as List).cast<String>(),
      source: OSPolicyResourceFileResponse.fromMap(
        (map['source'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
