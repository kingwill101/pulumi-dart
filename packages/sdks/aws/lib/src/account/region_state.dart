// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Region resources.
class RegionState {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.
  final pulumi.Input<String>? accountId;

  /// Whether the region is enabled.
  final pulumi.Input<bool>? enabled;

  /// The region opt status.
  final pulumi.Input<String>? optStatus;

  /// The region name to manage.
  final pulumi.Input<String>? regionName;

  /// Creates a new [RegionState].
  /// [accountId] The ID of the target account when managing member accounts. Will manage current user's account by default if omitted. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.
  /// [enabled] Whether the region is enabled.
  /// [optStatus] The region opt status.
  /// [regionName] The region name to manage.
  RegionState({this.accountId, this.enabled, this.optStatus, this.regionName});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountId': ?accountId,
      'enabled': ?enabled,
      'optStatus': ?optStatus,
      'regionName': ?regionName,
    };
  }

  factory RegionState.fromMap(Map<String, dynamic> map) {
    return RegionState(
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      optStatus: (() {
        final guardedValue = map['optStatus'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      regionName: (() {
        final guardedValue = map['regionName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
