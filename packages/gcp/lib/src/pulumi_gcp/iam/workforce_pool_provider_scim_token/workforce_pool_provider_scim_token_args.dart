// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for WorkforcePoolProviderScimToken.
class WorkforcePoolProviderScimTokenArgs {
  /// A user-specified display name for the scim token. Cannot exceed 32 characters.
  final Input<String>? displayName;

  /// The location for the resource.
  final Input<String> location;

  /// The ID of the Provider.
  final Input<String> providerId;

  /// The ID of the SCIM Tenant.
  final Input<String> scimTenantId;

  /// The ID to use for the SCIM Token, which becomes the final component of the resource name. This value should be 4-32 characters and follow the pattern: `(a-z)`.
  final Input<String> scimTokenId;

  /// The ID of the Workforce Pool.
  final Input<String> workforcePoolId;

  WorkforcePoolProviderScimTokenArgs({
    this.displayName,
    required this.location,
    required this.providerId,
    required this.scimTenantId,
    required this.scimTokenId,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['location'] = location;
    map['providerId'] = providerId;
    map['scimTenantId'] = scimTenantId;
    map['scimTokenId'] = scimTokenId;
    map['workforcePoolId'] = workforcePoolId;
    return map;
  }

  factory WorkforcePoolProviderScimTokenArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolProviderScimTokenArgs(
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      providerId: Input.asInput<String>(map['providerId']),
      scimTenantId: Input.asInput<String>(map['scimTenantId']),
      scimTokenId: Input.asInput<String>(map['scimTokenId']),
      workforcePoolId: Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
