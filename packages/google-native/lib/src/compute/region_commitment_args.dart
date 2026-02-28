// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_resource_commitment.dart';
import 'region_commitment_category.dart';
import 'region_commitment_plan.dart';
import 'region_commitment_type.dart';
import 'reservation_compute_alpha.dart';
import 'resource_commitment.dart';

/// {@template pulumi_compute_alpha_region_commitment_args_doc}
/// The set of arguments for RegionCommitment.
/// {@endtemplate}
/// {@macro pulumi_compute_alpha_region_commitment_args_doc}
class RegionCommitmentArgs {
  /// Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  final pulumi.Input<bool>? autoRenew;
  /// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  final pulumi.Input<RegionCommitmentCategory>? category;
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;
  /// Specifies the already existing reservations to attach to the Commitment. This field is optional, and it can be a full or partial URL. For example, the following are valid URLs to an reservation: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /reservations/reservation - projects/project/zones/zone/reservations/reservation
  final pulumi.Input<List<String>>? existingReservations;
  /// The license specification required as part of a license commitment.
  final pulumi.Input<LicenseResourceCommitment>? licenseResource;
  /// List of source commitments to be merged into a new commitment.
  final pulumi.Input<List<String>>? mergeSourceCommitments;
  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;
  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  final pulumi.Input<RegionCommitmentPlan>? plan;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;
  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;
  /// List of create-on-create reseravtions for this commitment.
  final pulumi.Input<List<ReservationComputeAlpha>>? reservations;
  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  final pulumi.Input<List<ResourceCommitment>>? resources;
  /// Source commitment to be split into a new commitment.
  final pulumi.Input<String>? splitSourceCommitment;
  /// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  final pulumi.Input<RegionCommitmentType>? type;

  /// Creates a new [RegionCommitmentArgs].
  /// [autoRenew] Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  /// [category] The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
  /// [existingReservations] Specifies the already existing reservations to attach to the Commitment. This field is optional, and it can be a full or partial URL. For example, the following are valid URLs to an reservation: - https://www.googleapis.com/compute/v1/projects/project/zones/zone /reservations/reservation - projects/project/zones/zone/reservations/reservation
  /// [licenseResource] The license specification required as part of a license commitment.
  /// [mergeSourceCommitments] List of source commitments to be merged into a new commitment.
  /// [name] Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [plan] The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  /// [project] Optional.
  /// [region] Required.
  /// [requestId] An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  /// [reservations] List of create-on-create reseravtions for this commitment.
  /// [resources] A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  /// [splitSourceCommitment] Source commitment to be split into a new commitment.
  /// [type] The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  RegionCommitmentArgs({
    bool? autoRenew,
    RegionCommitmentCategory? category,
    String? description,
    List<String>? existingReservations,
    LicenseResourceCommitment? licenseResource,
    List<String>? mergeSourceCommitments,
    String? name,
    RegionCommitmentPlan? plan,
    String? project,
    required String region,
    String? requestId,
    List<ReservationComputeAlpha>? reservations,
    List<ResourceCommitment>? resources,
    String? splitSourceCommitment,
    RegionCommitmentType? type,
  }) :
      autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
      category = pulumi.Input.asOptionalInput<RegionCommitmentCategory>(category),
      description = pulumi.Input.asOptionalInput<String>(description),
      existingReservations = pulumi.Input.asOptionalInput<List<String>>(existingReservations),
      licenseResource = pulumi.Input.asOptionalInput<LicenseResourceCommitment>(licenseResource),
      mergeSourceCommitments = pulumi.Input.asOptionalInput<List<String>>(mergeSourceCommitments),
      name = pulumi.Input.asOptionalInput<String>(name),
      plan = pulumi.Input.asOptionalInput<RegionCommitmentPlan>(plan),
      project = pulumi.Input.asOptionalInput<String>(project),
      region = pulumi.Input.asInput<String>(region),
      requestId = pulumi.Input.asOptionalInput<String>(requestId),
      reservations = pulumi.Input.asOptionalInput<List<ReservationComputeAlpha>>(reservations),
      resources = pulumi.Input.asOptionalInput<List<ResourceCommitment>>(resources),
      splitSourceCommitment = pulumi.Input.asOptionalInput<String>(splitSourceCommitment),
      type = pulumi.Input.asOptionalInput<RegionCommitmentType>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoRenew': ?autoRenew,
      'category': ?pulumi.Input.mapOptionalInputValue<RegionCommitmentCategory, String>(category, (value) => value.value),
      'description': ?description,
      'existingReservations': ?existingReservations,
      'licenseResource': ?pulumi.Input.mapOptionalInputValue<LicenseResourceCommitment, Map<String, dynamic>>(licenseResource, (value) => value.toMap()),
      'mergeSourceCommitments': ?mergeSourceCommitments,
      'name': ?name,
      'plan': ?pulumi.Input.mapOptionalInputValue<RegionCommitmentPlan, String>(plan, (value) => value.value),
      'project': ?project,
      'region': region,
      'requestId': ?requestId,
      'reservations': ?reservations,
      'resources': ?pulumi.Input.mapOptionalInputValue<List<ResourceCommitment>, List<Map<String, dynamic>>>(resources, (value) => pulumi.Input.encodeList<ResourceCommitment, Map<String, dynamic>>(value, (value) => value.toMap())),
      'splitSourceCommitment': ?splitSourceCommitment,
      'type': ?pulumi.Input.mapOptionalInputValue<RegionCommitmentType, String>(type, (value) => value.value),
    };
  }

  factory RegionCommitmentArgs.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentArgs(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      category: map['category'] == null ? null : RegionCommitmentCategory.fromValue(map['category'] as String),
      description: map['description'] == null ? null : map['description'] as String,
      existingReservations: map['existingReservations'] == null ? null : (map['existingReservations'] as List).cast<String>(),
      licenseResource: map['licenseResource'] == null ? null : LicenseResourceCommitment.fromMap((map['licenseResource'] as Map).cast<String, dynamic>()),
      mergeSourceCommitments: map['mergeSourceCommitments'] == null ? null : (map['mergeSourceCommitments'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      plan: map['plan'] == null ? null : RegionCommitmentPlan.fromValue(map['plan'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      reservations: map['reservations'] == null ? null : (map['reservations'] as List).cast<ReservationComputeAlpha>(),
      resources: map['resources'] == null ? null : pulumi.Input.decodeList<ResourceCommitment>(map['resources'], (value) => ResourceCommitment.fromMap((value as Map).cast<String, dynamic>())),
      splitSourceCommitment: map['splitSourceCommitment'] == null ? null : map['splitSourceCommitment'] as String,
      type: map['type'] == null ? null : RegionCommitmentType.fromValue(map['type'] as String),
    );
  }
}

