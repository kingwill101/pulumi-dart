// ignore_for_file: unused_element, unnecessary_cast

import 'ospolicy_resource_file.dart';

/// An MSI package. MSI packages only support INSTALLED state.
class OSPolicyResourcePackageResourceMSI {
  /// Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  final List<String>? properties;
  /// The MSI package.
  final OSPolicyResourceFile source;

  /// Creates a new [OSPolicyResourcePackageResourceMSI].
  /// [properties] Additional properties to use during installation. This should be in the format of Property=Setting. Appended to the defaults of `ACTION=INSTALL REBOOT=ReallySuppress`.
  /// [source] The MSI package.
  OSPolicyResourcePackageResourceMSI({
    this.properties,
    required this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties,
      'source': source.toMap(),
    };
  }

  factory OSPolicyResourcePackageResourceMSI.fromMap(Map<String, dynamic> map) {
    return OSPolicyResourcePackageResourceMSI(
      properties: map['properties'] == null ? null : (map['properties'] as List).cast<String>(),
      source: OSPolicyResourceFile.fromMap((map['source'] as Map).cast<String, dynamic>()),
    );
  }
}

