// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_delegated_prefix_public_delegated_sub_prefix_compute_v1.dart';

/// The set of arguments for GlobalPublicDelegatedPrefix.
class GlobalPublicDelegatedPrefixComputeV1Args {
  /// An optional description of this resource. Provide this property when you create the resource.
  final pulumi.Input<String>? description;

  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final pulumi.Input<String>? ipCidrRange;

  /// If true, the prefix will be live migrated.
  final pulumi.Input<bool>? isLiveMigration;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final pulumi.Input<String>? name;

  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final pulumi.Input<String>? parentPrefix;
  final pulumi.Input<String>? project;

  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  final pulumi
      .Input<List<PublicDelegatedPrefixPublicDelegatedSubPrefixComputeV1>>?
      publicDelegatedSubPrefixs;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  GlobalPublicDelegatedPrefixComputeV1Args({
    this.description,
    this.ipCidrRange,
    this.isLiveMigration,
    this.name,
    this.parentPrefix,
    this.project,
    this.publicDelegatedSubPrefixs,
    this.requestId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final ipCidrRangeValue = ipCidrRange;
    if (ipCidrRangeValue != null) {
      map['ipCidrRange'] = ipCidrRangeValue;
    }
    final isLiveMigrationValue = isLiveMigration;
    if (isLiveMigrationValue != null) {
      map['isLiveMigration'] = isLiveMigrationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final parentPrefixValue = parentPrefix;
    if (parentPrefixValue != null) {
      map['parentPrefix'] = parentPrefixValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final publicDelegatedSubPrefixsValue = publicDelegatedSubPrefixs;
    if (publicDelegatedSubPrefixsValue != null) {
      map['publicDelegatedSubPrefixs'] = pulumi.Input.mapOptionalInputValue<
              List<PublicDelegatedPrefixPublicDelegatedSubPrefixComputeV1>,
              List<Map<String, dynamic>>>(
          publicDelegatedSubPrefixsValue,
          (value) => pulumi.Input.encodeList<
              PublicDelegatedPrefixPublicDelegatedSubPrefixComputeV1,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory GlobalPublicDelegatedPrefixComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GlobalPublicDelegatedPrefixComputeV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      ipCidrRange: pulumi.Input.asOptionalInput<String>(map['ipCidrRange']),
      isLiveMigration:
          pulumi.Input.asOptionalInput<bool>(map['isLiveMigration']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      parentPrefix: pulumi.Input.asOptionalInput<String>(map['parentPrefix']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      publicDelegatedSubPrefixs: pulumi.Input.asOptionalInput<
              List<PublicDelegatedPrefixPublicDelegatedSubPrefixComputeV1>>(
          map['publicDelegatedSubPrefixs']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
