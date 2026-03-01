// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'region_commitment_license_resource.dart';
import 'region_commitment_resource.dart';

/// {@template pulumi_compute_region_commitment_region_commitment_args_doc}
/// The set of arguments for RegionCommitment.
/// {@endtemplate}
/// {@macro pulumi_compute_region_commitment_region_commitment_args_doc}
class RegionCommitmentArgs {
  /// Specifies whether to enable automatic renewal for the commitment.
  /// The default value is false if not specified.
  /// If the field is set to true, the commitment will be automatically renewed for either
  /// one or three years according to the terms of the existing commitment.
  final pulumi.Input<bool>? autoRenew;
  /// The category of the commitment. Category MACHINE specifies commitments composed of
  /// machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE
  /// specifies commitments composed of software licenses, listed in licenseResources.
  /// Note that only MACHINE commitments should have a Type specified.
  /// Possible values are: `LICENSE`, `MACHINE`.
  final pulumi.Input<String>? category;
  /// An optional description of this resource.
  final pulumi.Input<String>? description;
  /// Specifies the already existing reservations to attach to the Commitment.
  final pulumi.Input<String>? existingReservations;
  /// The license specification required as part of a license commitment.
  /// Structure is documented below.
  final pulumi.Input<RegionCommitmentLicenseResource>? licenseResource;
  /// Name of the resource. The name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The plan for this commitment, which determines duration and discount rate.
  /// The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// Possible values are: `TWELVE_MONTH`, `THIRTY_SIX_MONTH`.
  final pulumi.Input<String> plan;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;
  /// URL of the region where this commitment may be used.
  final pulumi.Input<String>? region;
  /// A list of commitment amounts for particular resources.
  /// Note that VCPU and MEMORY resource commitments must occur together.
  /// Structure is documented below.
  final pulumi.Input<List<RegionCommitmentResource>>? resources;
  /// The type of commitment, which affects the discount rate and the eligible resources.
  /// The type could be one of the following value: `MEMORY_OPTIMIZED`, `ACCELERATOR_OPTIMIZED`,
  /// `GENERAL_PURPOSE`, `GENERAL_PURPOSE_N2`, `GENERAL_PURPOSE_N2D`, `GENERAL_PURPOSE_E2`,
  /// `GENERAL_PURPOSE_T2D`, `GENERAL_PURPOSE_C3`, `COMPUTE_OPTIMIZED_C2`, `COMPUTE_OPTIMIZED_C2D` and
  /// `GRAPHICS_OPTIMIZED_G2`
  final pulumi.Input<String>? type;

  /// Creates a new [RegionCommitmentArgs].
  /// [autoRenew] Specifies whether to enable automatic renewal for the commitment.
  /// [category] The category of the commitment. Category MACHINE specifies commitments composed of
  /// [description] An optional description of this resource.
  /// [existingReservations] Specifies the already existing reservations to attach to the Commitment.
  /// [licenseResource] The license specification required as part of a license commitment.
  /// [name] Name of the resource. The name must be 1-63 characters long and match
  /// [plan] The plan for this commitment, which determines duration and discount rate.
  /// [project] The ID of the project in which the resource belongs.
  /// [region] URL of the region where this commitment may be used.
  /// [resources] A list of commitment amounts for particular resources.
  /// [type] The type of commitment, which affects the discount rate and the eligible resources.
  RegionCommitmentArgs({
    bool? autoRenew,
    String? category,
    String? description,
    String? existingReservations,
    RegionCommitmentLicenseResource? licenseResource,
    String? name,
    required String plan,
    String? project,
    String? region,
    List<RegionCommitmentResource>? resources,
    String? type,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      category = pulumi.Input.asOptionalInput<String>(category),
      description = pulumi.Input.asOptionalInput<String>(description),
      existingReservations = pulumi.Input.asOptionalInput<String>(existingReservations),
      licenseResource = pulumi.Input.asOptionalInput<RegionCommitmentLicenseResource>(licenseResource),
      name = pulumi.Input.asOptionalInput<String>(name),
      plan = pulumi.Input.asInput<String>(plan),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asOptionalInput<String>(region),
      resources = pulumi.Input.asOptionalInput<List<RegionCommitmentResource>>(resources),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'category': ?category,
      'description': ?description,
      'existingReservations': ?existingReservations,
      'licenseResource': ?pulumi.Input.mapOptionalInputValue<RegionCommitmentLicenseResource, Map<String, dynamic>>(licenseResource, (value) => value.toMap()),
      'name': ?name,
      'plan': plan,
      'project': ?project,
      'region': ?region,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<RegionCommitmentResource>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<RegionCommitmentResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'type': ?type,
    };
  }

  factory RegionCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentArgs(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      category: map['category'] == null ? null : map['category'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      existingReservations: map['existingReservations'] == null ? null : map['existingReservations'] as String,
      licenseResource: map['licenseResource'] == null ? null : RegionCommitmentLicenseResource.fromMap((map['licenseResource'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      plan: map['plan'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resources: map['resources'] == null ? null : pulumi.Input.decodeList<RegionCommitmentResource>(map['resources'], (value) => RegionCommitmentResource.fromMap((value as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

