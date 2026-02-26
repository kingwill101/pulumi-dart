// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'license_resource_commitment_response3.dart';
import 'reservation_response3.dart';
import 'resource_commitment_response3.dart';

/// Result data returned by getRegionCommitment.
class GetRegionCommitmentResult3 {
  /// Specifies whether to enable automatic renewal for the commitment. The default value is false if not specified. The field can be updated until the day of the commitment expiration at 12:00am PST. If the field is set to true, the commitment will be automatically renewed for either one or three years according to the terms of the existing commitment.
  final bool autoRenew;

  /// The category of the commitment. Category MACHINE specifies commitments composed of machine resources such as VCPU or MEMORY, listed in resources. Category LICENSE specifies commitments composed of software licenses, listed in licenseResources. Note that only MACHINE commitments should have a Type specified.
  final String category;

  /// Creation timestamp in RFC3339 text format.
  final String creationTimestamp;

  /// An optional description of this resource. Provide this property when you create the resource.
  final String description;

  /// Commitment end time in RFC3339 text format.
  final String endTimestamp;

  /// Type of the resource. Always compute#commitment for commitments.
  final String kind;

  /// The license specification required as part of a license commitment.
  final LicenseResourceCommitmentResponse3 licenseResource;

  /// List of source commitments to be merged into a new commitment.
  final List<String> mergeSourceCommitments;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// The plan for this commitment, which determines duration and discount rate. The currently supported plans are TWELVE_MONTH (1 year), and THIRTY_SIX_MONTH (3 years).
  final String plan;

  /// URL of the region where this commitment may be used.
  final String region;

  /// List of create-on-create reseravtions for this commitment.
  final List<ReservationResponse3> reservations;

  /// A list of commitment amounts for particular resources. Note that VCPU and MEMORY resource commitments must occur together.
  final List<ResourceCommitmentResponse3> resources;

  /// Server-defined URL for the resource.
  final String selfLink;

  /// Source commitment to be split into a new commitment.
  final String splitSourceCommitment;

  /// Commitment start time in RFC3339 text format.
  final String startTimestamp;

  /// Status of the commitment with regards to eventual expiration (each commitment has an end date defined). One of the following values: NOT_YET_ACTIVE, ACTIVE, EXPIRED.
  final String status;

  /// An optional, human-readable explanation of the status.
  final String statusMessage;

  /// The type of commitment, which affects the discount rate and the eligible resources. Type MEMORY_OPTIMIZED specifies a commitment that will only apply to memory optimized machines. Type ACCELERATOR_OPTIMIZED specifies a commitment that will only apply to accelerator optimized machines.
  final String type;

  GetRegionCommitmentResult3({
    required this.autoRenew,
    required this.category,
    required this.creationTimestamp,
    required this.description,
    required this.endTimestamp,
    required this.kind,
    required this.licenseResource,
    required this.mergeSourceCommitments,
    required this.name,
    required this.plan,
    required this.region,
    required this.reservations,
    required this.resources,
    required this.selfLink,
    required this.splitSourceCommitment,
    required this.startTimestamp,
    required this.status,
    required this.statusMessage,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['autoRenew'] = autoRenew;
    map['category'] = category;
    map['creationTimestamp'] = creationTimestamp;
    map['description'] = description;
    map['endTimestamp'] = endTimestamp;
    map['kind'] = kind;
    map['licenseResource'] = licenseResource.toMap();
    map['mergeSourceCommitments'] = mergeSourceCommitments;
    map['name'] = name;
    map['plan'] = plan;
    map['region'] = region;
    map['reservations'] =
        Input.encodeList<ReservationResponse3, Map<String, dynamic>>(
            reservations, (value) => value.toMap());
    map['resources'] =
        Input.encodeList<ResourceCommitmentResponse3, Map<String, dynamic>>(
            resources, (value) => value.toMap());
    map['selfLink'] = selfLink;
    map['splitSourceCommitment'] = splitSourceCommitment;
    map['startTimestamp'] = startTimestamp;
    map['status'] = status;
    map['statusMessage'] = statusMessage;
    map['type'] = type;
    return map;
  }

  factory GetRegionCommitmentResult3.fromMap(Map<String, dynamic> map) {
    return GetRegionCommitmentResult3(
      autoRenew: map['autoRenew'] as bool,
      category: map['category'] as String,
      creationTimestamp: map['creationTimestamp'] as String,
      description: map['description'] as String,
      endTimestamp: map['endTimestamp'] as String,
      kind: map['kind'] as String,
      licenseResource: LicenseResourceCommitmentResponse3.fromMap(
          (map['licenseResource'] as Map).cast<String, dynamic>()),
      mergeSourceCommitments:
          (map['mergeSourceCommitments'] as List).cast<String>(),
      name: map['name'] as String,
      plan: map['plan'] as String,
      region: map['region'] as String,
      reservations: Input.decodeList<ReservationResponse3>(
          map['reservations'],
          (value) => ReservationResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      resources: Input.decodeList<ResourceCommitmentResponse3>(
          map['resources'],
          (value) => ResourceCommitmentResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      selfLink: map['selfLink'] as String,
      splitSourceCommitment: map['splitSourceCommitment'] as String,
      startTimestamp: map['startTimestamp'] as String,
      status: map['status'] as String,
      statusMessage: map['statusMessage'] as String,
      type: map['type'] as String,
    );
  }
}
