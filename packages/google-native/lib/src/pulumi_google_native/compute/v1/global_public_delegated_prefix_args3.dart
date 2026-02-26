// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'public_delegated_prefix_public_delegated_sub_prefix3.dart';

/// The set of arguments for GlobalPublicDelegatedPrefix.
class GlobalPublicDelegatedPrefixArgs3 {
  /// An optional description of this resource. Provide this property when you create the resource.
  final Input<String>? description;

  /// The IP address range, in CIDR format, represented by this public delegated prefix.
  final Input<String>? ipCidrRange;

  /// If true, the prefix will be live migrated.
  final Input<bool>? isLiveMigration;

  /// Name of the resource. Provided by the client when the resource is created. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final Input<String>? name;

  /// The URL of parent prefix. Either PublicAdvertisedPrefix or PublicDelegatedPrefix.
  final Input<String>? parentPrefix;
  final Input<String>? project;

  /// The list of sub public delegated prefixes that exist for this public delegated prefix.
  final Input<List<PublicDelegatedPrefixPublicDelegatedSubPrefix3>>?
      publicDelegatedSubPrefixs;

  /// An optional request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported ( 00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  GlobalPublicDelegatedPrefixArgs3({
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
      map['publicDelegatedSubPrefixs'] = Input.mapOptionalInputValue<
              List<PublicDelegatedPrefixPublicDelegatedSubPrefix3>,
              List<Map<String, dynamic>>>(
          publicDelegatedSubPrefixsValue,
          (value) => Input.encodeList<
              PublicDelegatedPrefixPublicDelegatedSubPrefix3,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    return map;
  }

  factory GlobalPublicDelegatedPrefixArgs3.fromMap(Map<String, dynamic> map) {
    return GlobalPublicDelegatedPrefixArgs3(
      description: Input.asOptionalInput<String>(map['description']),
      ipCidrRange: Input.asOptionalInput<String>(map['ipCidrRange']),
      isLiveMigration: Input.asOptionalInput<bool>(map['isLiveMigration']),
      name: Input.asOptionalInput<String>(map['name']),
      parentPrefix: Input.asOptionalInput<String>(map['parentPrefix']),
      project: Input.asOptionalInput<String>(map['project']),
      publicDelegatedSubPrefixs: Input.asOptionalInput<
              List<PublicDelegatedPrefixPublicDelegatedSubPrefix3>>(
          map['publicDelegatedSubPrefixs']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
    );
  }
}
