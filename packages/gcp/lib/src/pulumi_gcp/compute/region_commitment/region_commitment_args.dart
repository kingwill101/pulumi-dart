// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../region_commitment_license_resource/region_commitment_license_resource.dart';
import '../region_commitment_resource/region_commitment_resource.dart';

/// The set of arguments for RegionCommitment.
class RegionCommitmentArgs {
  /// Specifies whether to enable automatic renewal for the commitment.
  /// The default value is false if not specified.
  /// If the field is set to true, the commitment will be automatically renewed for either
  /// one or three years according to the terms of the existing commitment.
  final Input<bool>? autoRenew;

  /// The category of the commitment. Category MACHINE specifies commitments composed of
  /// machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
  /// specifies commitments composed of software licenses, listed in licenseResources.
  /// Note that only MACHINE commitments should have a Type specified.
  /// Possible values are: `LICENSE`, `MACHINE`.
  final Input<String>? category;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Specifies the already existing reservations to attach to the Commitment.
  final Input<String>? existingReservations;

  /// The license specification required as part of a license commitment.
  /// Structure is documented below.
  final Input<RegionCommitmentLicenseResource>? licenseResource;

  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final Input<String>? name;

  /// The plan for this commitment, which determines duration and discount rate.
  /// The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// Possible values are: `TWELVE_MONTH`, `THIRTY_SIX_MONTH`.
  final Input<String> plan;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// URL of the region where this commitment may be used.
  final Input<String>? region;

  /// A list of commitment amounts for particular resources.
  /// Note that VCPU and MEMORY resource commitments must occur together.
  /// Structure is documented below.
  final Input<List<RegionCommitmentResource>>? resources;

  /// The type of commitment, which affects the discount rate and the eligible resources.
  /// The type could be one of the following value: `MEMORY_OPTIMIZED`, `ACCELERATOR_OPTIMIZED`,
  /// `GENERAL_PURPOSE`, `GENERAL_PURPOSE_N2`, `GENERAL_PURPOSE_N2D`, `GENERAL_PURPOSE_E2`,
  /// `GENERAL_PURPOSE_T2D`, `GENERAL_PURPOSE_C3`, `COMPUTE_OPTIMIZED_C2`, `COMPUTE_OPTIMIZED_C2D` and
  /// `GRAPHICS_OPTIMIZED_G2`
  final Input<String>? type;

  RegionCommitmentArgs({
    this.autoRenew,
    this.category,
    this.description,
    this.existingReservations,
    this.licenseResource,
    this.name,
    required this.plan,
    this.project,
    this.region,
    this.resources,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoRenewValue = autoRenew;
    if (autoRenewValue != null) {
      map['autoRenew'] = autoRenewValue;
    }
    final categoryValue = category;
    if (categoryValue != null) {
      map['category'] = categoryValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final existingReservationsValue = existingReservations;
    if (existingReservationsValue != null) {
      map['existingReservations'] = existingReservationsValue;
    }
    final licenseResourceValue = licenseResource;
    if (licenseResourceValue != null) {
      map['licenseResource'] = Input.mapOptionalInputValue<
          RegionCommitmentLicenseResource,
          Map<String, dynamic>>(licenseResourceValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['plan'] = plan;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = Input.mapOptionalInputValue<
              List<RegionCommitmentResource>, List<Map<String, dynamic>>>(
          resourcesValue,
          (value) =>
              Input.encodeList<RegionCommitmentResource, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory RegionCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentArgs(
      autoRenew: Input.asOptionalInput<bool>(map['autoRenew']),
      category: Input.asOptionalInput<String>(map['category']),
      description: Input.asOptionalInput<String>(map['description']),
      existingReservations:
          Input.asOptionalInput<String>(map['existingReservations']),
      licenseResource: Input.asOptionalInput<RegionCommitmentLicenseResource>(
          map['licenseResource']),
      name: Input.asOptionalInput<String>(map['name']),
      plan: Input.asInput<String>(map['plan']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      resources: Input.asOptionalInput<List<RegionCommitmentResource>>(
          map['resources']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
