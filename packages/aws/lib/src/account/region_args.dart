// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_account_region_region_args_doc}
/// The set of arguments for Region.
/// {@endtemplate}
/// {@macro pulumi_account_region_region_args_doc}
class RegionArgs {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.
  final pulumi.Input<String>? accountId;
  /// Whether the region is enabled.
  final pulumi.Input<bool> enabled;
  /// The region name to manage.
  final pulumi.Input<String> regionName;

  /// Creates a new [RegionArgs].
  /// [accountId] The ID of the target account when managing member accounts. Will manage current user's account by default if omitted. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.
  /// [enabled] Whether the region is enabled.
  /// [regionName] The region name to manage.
  RegionArgs({
    String? accountId,
    required bool enabled,
    required String regionName,
  }) :
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      enabled = pulumi.Input.asInput<bool>(enabled),
      regionName = pulumi.Input.asInput<String>(regionName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'enabled': enabled,
      'regionName': regionName,
    };
  }

  factory RegionArgs.fromMap(Map<String, dynamic> map) {
    return RegionArgs(
      accountId: map['accountId'] == null ? null : map['accountId'] as String,
      enabled: map['enabled'] as bool,
      regionName: map['regionName'] as String,
    );
  }
}

