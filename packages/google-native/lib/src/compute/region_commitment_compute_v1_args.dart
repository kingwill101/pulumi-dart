// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_resource_commitment_compute_v1.dart';
import 'region_commitment_category_compute_v1.dart';
import 'region_commitment_plan_compute_v1.dart';
import 'region_commitment_type_compute_v1.dart';
import 'reservation_compute_v1.dart';
import 'resource_commitment_compute_v1.dart';

/// {@template pulumi_compute_v1_region_commitment_compute_v1_args_doc}
/// The set of arguments for RegionCommitment.
/// {@endtemplate}
/// {@macro pulumi_compute_v1_region_commitment_compute_v1_args_doc}
class RegionCommitmentComputeV1Args {
  /// Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  final pulumi.Input<bool>? autoRenew;

  /// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  final pulumi.Input<RegionCommitmentCategoryComputeV1>? category;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The license specification required as part of a license commitment.
  final pulumi.Input<LicenseResourceCommitmentComputeV1>? licenseResource;

  /// List of source commitments to be merged into a new commitment.
  final pulumi.Input<List<String>>? mergeSourceCommitments;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  final pulumi.Input<RegionCommitmentPlanComputeV1>? plan;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// List of create-on-create reseravtions for this commitment.
  final pulumi.Input<List<ReservationComputeV1>>? reservations;

  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  final pulumi.Input<List<ResourceCommitmentComputeV1>>? resources;

  /// Source commitment to be split into a new commitment.
  final pulumi.Input<String>? splitSourceCommitment;

  /// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  final pulumi.Input<RegionCommitmentTypeComputeV1>? type;

  /// Creates a new [RegionCommitmentComputeV1Args].
  /// [autoRenew] Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  /// [category] The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  /// [description] An optional description of this resource. Provide this property when you create the resource.
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
  RegionCommitmentComputeV1Args({
    bool? autoRenew,
    RegionCommitmentCategoryComputeV1? category,
    String? description,
    LicenseResourceCommitmentComputeV1? licenseResource,
    List<String>? mergeSourceCommitments,
    String? name,
    RegionCommitmentPlanComputeV1? plan,
    String? project,
    required String region,
    String? requestId,
    List<ReservationComputeV1>? reservations,
    List<ResourceCommitmentComputeV1>? resources,
    String? splitSourceCommitment,
    RegionCommitmentTypeComputeV1? type,
  })  : autoRenew = pulumi.Input.asOptionalInput<bool>(autoRenew),
        category =
            pulumi.Input.asOptionalInput<RegionCommitmentCategoryComputeV1>(
                category),
        description = pulumi.Input.asOptionalInput<String>(description),
        licenseResource =
            pulumi.Input.asOptionalInput<LicenseResourceCommitmentComputeV1>(
                licenseResource),
        mergeSourceCommitments =
            pulumi.Input.asOptionalInput<List<String>>(mergeSourceCommitments),
        name = pulumi.Input.asOptionalInput<String>(name),
        plan =
            pulumi.Input.asOptionalInput<RegionCommitmentPlanComputeV1>(plan),
        project = pulumi.Input.asOptionalInput<String>(project),
        region = pulumi.Input.asInput<String>(region),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        reservations = pulumi.Input.asOptionalInput<List<ReservationComputeV1>>(
            reservations),
        resources =
            pulumi.Input.asOptionalInput<List<ResourceCommitmentComputeV1>>(
                resources),
        splitSourceCommitment =
            pulumi.Input.asOptionalInput<String>(splitSourceCommitment),
        type =
            pulumi.Input.asOptionalInput<RegionCommitmentTypeComputeV1>(type);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final autoRenewValue = autoRenew;
    if (autoRenewValue != null) {
      map['autoRenew'] = autoRenewValue;
    }
    final categoryValue = category;
    if (categoryValue != null) {
      map['category'] = pulumi.Input.mapOptionalInputValue<
          RegionCommitmentCategoryComputeV1,
          String>(categoryValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final licenseResourceValue = licenseResource;
    if (licenseResourceValue != null) {
      map['licenseResource'] = pulumi.Input.mapOptionalInputValue<
          LicenseResourceCommitmentComputeV1,
          Map<String, dynamic>>(licenseResourceValue, (value) => value.toMap());
    }
    final mergeSourceCommitmentsValue = mergeSourceCommitments;
    if (mergeSourceCommitmentsValue != null) {
      map['mergeSourceCommitments'] = mergeSourceCommitmentsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final planValue = plan;
    if (planValue != null) {
      map['plan'] = pulumi.Input.mapOptionalInputValue<
          RegionCommitmentPlanComputeV1,
          String>(planValue, (value) => value.value);
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['region'] = region;
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final reservationsValue = reservations;
    if (reservationsValue != null) {
      map['reservations'] = pulumi.Input.mapOptionalInputValue<
              List<ReservationComputeV1>, List<Map<String, dynamic>>>(
          reservationsValue,
          (value) => pulumi.Input.encodeList<ReservationComputeV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = pulumi.Input.mapOptionalInputValue<
              List<ResourceCommitmentComputeV1>, List<Map<String, dynamic>>>(
          resourcesValue,
          (value) => pulumi.Input.encodeList<ResourceCommitmentComputeV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final splitSourceCommitmentValue = splitSourceCommitment;
    if (splitSourceCommitmentValue != null) {
      map['splitSourceCommitment'] = splitSourceCommitmentValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<
          RegionCommitmentTypeComputeV1,
          String>(typeValue, (value) => value.value);
    }
    return map;
  }

  factory RegionCommitmentComputeV1Args.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentComputeV1Args(
      autoRenew: map['autoRenew'] == null ? null : map['autoRenew'] as bool,
      category: map['category'] == null
          ? null
          : RegionCommitmentCategoryComputeV1.fromValue(
              map['category'] as String),
      description:
          map['description'] == null ? null : map['description'] as String,
      licenseResource: map['licenseResource'] == null
          ? null
          : LicenseResourceCommitmentComputeV1.fromMap(
              (map['licenseResource'] as Map).cast<String, dynamic>()),
      mergeSourceCommitments: map['mergeSourceCommitments'] == null
          ? null
          : (map['mergeSourceCommitments'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      plan: map['plan'] == null
          ? null
          : RegionCommitmentPlanComputeV1.fromValue(map['plan'] as String),
      project: map['project'] == null ? null : map['project'] as String,
      region: map['region'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      reservations: map['reservations'] == null
          ? null
          : pulumi.Input.decodeList<ReservationComputeV1>(
              map['reservations'],
              (value) => ReservationComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      resources: map['resources'] == null
          ? null
          : pulumi.Input.decodeList<ResourceCommitmentComputeV1>(
              map['resources'],
              (value) => ResourceCommitmentComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      splitSourceCommitment: map['splitSourceCommitment'] == null
          ? null
          : map['splitSourceCommitment'] as String,
      type: map['type'] == null
          ? null
          : RegionCommitmentTypeComputeV1.fromValue(map['type'] as String),
    );
  }
}
