// ignore_for_file: unused_element, unnecessary_cast

import 'license_resource_requirements_response2.dart';

/// Result data returned by getLicense.
class GetLicenseResult2 {
  /// Deprecated. This field no longer reflects whether a license charges a usage fee.
  final bool chargesUseFee;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional textual description of the resource; provided by the client when the resource is created.
  final String description;

  /// Type of resource. Always compute#license for licenses.
  final String kind;

  /// The unique code used to attach this license to images, snapshots, and disks.
  final String licenseCode;

  /// Name of the resource. The name must be 1-63 characters long and comply with RFC1035.
  final String name;
  final LicenseResourceRequirementsResponse2 resourceRequirements;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// If false, licenses will not be copied from the source resource when creating an image from a disk, disk from snapshot, or snapshot from disk.
  final bool transferable;

  GetLicenseResult2({
    required this.chargesUseFee,
    required this.creationTimestamp,
    required this.description,
    required this.kind,
    required this.licenseCode,
    required this.name,
    required this.resourceRequirements,
    required this.selfLink,
    required this.transferable,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['chargesUseFee'] = chargesUseFee;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['kind'] = kind;
    map['licenseCode'] = licenseCode;
    map['name'] = name;
    map['resourceRequirements'] = resourceRequirements.toMap();
    map['selfLink'] = selfLink;
    map['transferable'] = transferable;
    return map;
  }

  factory GetLicenseResult2.fromMap(Map<String, dynamic> map) {
    return GetLicenseResult2(
      chargesUseFee: map['chargesUseFee'] as bool,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      kind: map['kind'] as String,
      licenseCode: map['licenseCode'] as String,
      name: map['name'] as String,
      resourceRequirements: LicenseResourceRequirementsResponse2.fromMap(
          (map['resourceRequirements'] as Map).cast<String, dynamic>()),
      selfLink: map['selfLink'] as String,
      transferable: map['transferable'] as bool,
    );
  }
}
