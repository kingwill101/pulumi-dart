// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Region.
class RegionArgs {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.
  final pulumi.Input<String>? accountId;

  /// Whether the region is enabled.
  final pulumi.Input<bool> enabled;

  /// The region name to manage.
  final pulumi.Input<String> regionName;

  RegionArgs({
    this.accountId,
    required this.enabled,
    required this.regionName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accountIdValue = accountId;
    if (accountIdValue != null) {
      map['accountId'] = accountIdValue;
    }
    map['enabled'] = enabled;
    map['regionName'] = regionName;
    return map;
  }

  factory RegionArgs.fromMap(Map<String, dynamic> map) {
    return RegionArgs(
      accountId: pulumi.Input.asOptionalInput<String>(map['accountId']),
      enabled: pulumi.Input.asInput<bool>(map['enabled']),
      regionName: pulumi.Input.asInput<String>(map['regionName']),
    );
  }
}
