// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'license_resource_commitment2.dart';
import 'region_commitment_category2.dart';
import 'region_commitment_plan2.dart';
import 'region_commitment_type2.dart';
import 'reservation2.dart';
import 'resource_commitment2.dart';

/// The set of arguments for RegionCommitment.
class RegionCommitmentArgs2 {
  /// Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  final Input<bool>? autoRenew;

  /// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  final Input<RegionCommitmentCategory2>? category;

  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// The license specification required as part of a license commitment.
  final Input<LicenseResourceCommitment2>? licenseResource;

  /// List of source commitments to be merged into a new commitment.
  final Input<List<String>>? mergeSourceCommitments;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  final Input<RegionCommitmentPlan2>? plan;
  final Input<String>? project;
  final Input<String> region;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// List of create-on-create reseravtions for this commitment.
  final Input<List<Reservation2>>? reservations;

  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  final Input<List<ResourceCommitment2>>? resources;

  /// Source commitment to be split into a new commitment.
  final Input<String>? splitSourceCommitment;

  /// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  final Input<RegionCommitmentType2>? type;

  RegionCommitmentArgs2({
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
      map['category'] =
          Input.mapOptionalInputValue<RegionCommitmentCategory2, String>(
              categoryValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final licenseResourceValue = licenseResource;
    if (licenseResourceValue != null) {
      map['licenseResource'] = Input.mapOptionalInputValue<
          LicenseResourceCommitment2,
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
      map['plan'] = Input.mapOptionalInputValue<RegionCommitmentPlan2, String>(
          planValue, (value) => value.value);
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
      map['reservations'] = Input.mapOptionalInputValue<List<Reservation2>,
              List<Map<String, dynamic>>>(
          reservationsValue,
          (value) => Input.encodeList<Reservation2, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final resourcesValue = resources;
    if (resourcesValue != null) {
      map['resources'] = Input.mapOptionalInputValue<List<ResourceCommitment2>,
              List<Map<String, dynamic>>>(
          resourcesValue,
          (value) =>
              Input.encodeList<ResourceCommitment2, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final splitSourceCommitmentValue = splitSourceCommitment;
    if (splitSourceCommitmentValue != null) {
      map['splitSourceCommitment'] = splitSourceCommitmentValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = Input.mapOptionalInputValue<RegionCommitmentType2, String>(
          typeValue, (value) => value.value);
    }
    return map;
  }

  factory RegionCommitmentArgs2.fromMap(Map<String, dynamic> map) {
    return RegionCommitmentArgs2(
      autoRenew: Input.asOptionalInput<bool>(map['autoRenew']),
      category:
          Input.asOptionalInput<RegionCommitmentCategory2>(map['category']),
      description: Input.asOptionalInput<String>(map['description']),
      licenseResource: Input.asOptionalInput<LicenseResourceCommitment2>(
          map['licenseResource']),
      mergeSourceCommitments:
          Input.asOptionalInput<List<String>>(map['mergeSourceCommitments']),
      name: Input.asOptionalInput<String>(map['name']),
      plan: Input.asOptionalInput<RegionCommitmentPlan2>(map['plan']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asInput<String>(map['region']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      reservations:
          Input.asOptionalInput<List<Reservation2>>(map['reservations']),
      resources:
          Input.asOptionalInput<List<ResourceCommitment2>>(map['resources']),
      splitSourceCommitment:
          Input.asOptionalInput<String>(map['splitSourceCommitment']),
      type: Input.asOptionalInput<RegionCommitmentType2>(map['type']),
    );
  }
}
