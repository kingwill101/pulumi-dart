// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'license_resource_commitment_compute_beta.dart';
import 'region_commitment_category_compute_beta.dart';
import 'region_commitment_plan_compute_beta.dart';
import 'region_commitment_type_compute_beta.dart';
import 'reservation_compute_beta.dart';
import 'resource_commitment_compute_beta.dart';

/// The set of arguments for RegionCommitment.
class RegionCommitmentComputeBetaArgs {
  /// Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  final pulumi.Input<bool>? autoRenew;

  /// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  final pulumi.Input<RegionCommitmentCategoryComputeBeta>? category;

  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The license specification required as part of a license commitment.
  final pulumi.Input<LicenseResourceCommitmentComputeBeta>? licenseResource;

  /// List of source commitments to be merged into a new commitment.
  final pulumi.Input<List<String>>? mergeSourceCommitments;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  final pulumi.Input<RegionCommitmentPlanComputeBeta>? plan;
  final pulumi.Input<String>? project;
  final pulumi.Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// List of create-on-create reseravtions for this commitment.
  final pulumi.Input<List<ReservationComputeBeta>>? reservations;

  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  final pulumi.Input<List<ResourceCommitmentComputeBeta>>? resources;

  /// Source commitment to be split into a new commitment.
  final pulumi.Input<String>? splitSourceCommitment;

  /// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  final pulumi.Input<RegionCommitmentTypeComputeBeta>? type;

  RegionCommitmentComputeBetaArgs({
    this.autoRenew,
    this.category,
    this.description,
    this.licenseResource,
    this.mergeSourceCommitments,
    this.name,
    this.plan,
    this.project,
    required this.region,
    this.requestId,
    this.reservations,
    this.resources,
    this.splitSourceCommitment,
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
      map['category'] = pulumi.Input.mapOptionalInputValue<
          RegionCommitmentCategoryComputeBeta,
          String>(categoryValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final licenseResourceValue = licenseResource;
    if (licenseResourceValue != null) {
      map['licenseResource'] = pulumi.Input.mapOptionalInputValue<
          LicenseResourceCommitmentComputeBeta,
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
          RegionCommitmentPlanComputeBeta,
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
              List<ReservationComputeBeta>, List<Map<String, dynamic>>>(
          reservationsValue,
          (value) => pulumi.Input.encodeList<ReservationComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = pulumi.Input.mapOptionalInputValue<
              List<ResourceCommitmentComputeBeta>, List<Map<String, dynamic>>>(
          resourcesValue,
          (value) => pulumi.Input.encodeList<ResourceCommitmentComputeBeta,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final splitSourceCommitmentValue = splitSourceCommitment;
    if (splitSourceCommitmentValue != null) {
      map['splitSourceCommitment'] = splitSourceCommitmentValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = pulumi.Input.mapOptionalInputValue<
          RegionCommitmentTypeComputeBeta,
          String>(typeValue, (value) => value.value);
    }
    return map;
  }

  factory RegionCommitmentComputeBetaArgs.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentComputeBetaArgs(
      autoRenew: pulumi.Input.asOptionalInput<bool>(map['autoRenew']),
      category:
          pulumi.Input.asOptionalInput<RegionCommitmentCategoryComputeBeta>(
              map['category']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      licenseResource:
          pulumi.Input.asOptionalInput<LicenseResourceCommitmentComputeBeta>(
              map['licenseResource']),
      mergeSourceCommitments: pulumi.Input.asOptionalInput<List<String>>(
          map['mergeSourceCommitments']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      plan: pulumi.Input.asOptionalInput<RegionCommitmentPlanComputeBeta>(
          map['plan']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      region: pulumi.Input.asInput<String>(map['region']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      reservations: pulumi.Input.asOptionalInput<List<ReservationComputeBeta>>(
          map['reservations']),
      resources:
          pulumi.Input.asOptionalInput<List<ResourceCommitmentComputeBeta>>(
              map['resources']),
      splitSourceCommitment:
          pulumi.Input.asOptionalInput<String>(map['splitSourceCommitment']),
      type: pulumi.Input.asOptionalInput<RegionCommitmentTypeComputeBeta>(
          map['type']),
    );
  }
}
