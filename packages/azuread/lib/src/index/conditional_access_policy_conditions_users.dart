// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_access_policy_conditions_users_excluded_guests_or_external_user.dart';
import 'conditional_access_policy_conditions_users_included_guests_or_external_user.dart';

class ConditionalAccessPolicyConditionsUsers {
  /// A list of group IDs excluded from scope of policy.
  final List<String>? excludedGroups;
  /// A `guests_or_external_users` block as documented below, which specifies internal guests and external users excluded from scope of policy.
  final List<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser>? excludedGuestsOrExternalUsers;
  /// A list of role IDs excluded from scope of policy.
  final List<String>? excludedRoles;
  /// A list of user IDs excluded from scope of policy and/or `GuestsOrExternalUsers`.
  final List<String>? excludedUsers;
  /// A list of group IDs in scope of policy unless explicitly excluded.
  final List<String>? includedGroups;
  /// A `guests_or_external_users` block as documented below, which specifies internal guests and external users in scope of policy.
  final List<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser>? includedGuestsOrExternalUsers;
  /// A list of role IDs in scope of policy unless explicitly excluded.
  final List<String>? includedRoles;
  /// A list of user IDs in scope of policy unless explicitly excluded, or `None` or `All` or `GuestsOrExternalUsers`.
  ///
  /// > At least one of `included_groups`, `included_guests_or_external_users`, `included_roles` or `included_users` must be specified.
  final List<String>? includedUsers;

  /// Creates a new [ConditionalAccessPolicyConditionsUsers].
  /// [excludedGroups] A list of group IDs excluded from scope of policy.
  /// [excludedGuestsOrExternalUsers] A `guests_or_external_users` block as documented below, which specifies internal guests and external users excluded from scope of policy.
  /// [excludedRoles] A list of role IDs excluded from scope of policy.
  /// [excludedUsers] A list of user IDs excluded from scope of policy and/or `GuestsOrExternalUsers`.
  /// [includedGroups] A list of group IDs in scope of policy unless explicitly excluded.
  /// [includedGuestsOrExternalUsers] A `guests_or_external_users` block as documented below, which specifies internal guests and external users in scope of policy.
  /// [includedRoles] A list of role IDs in scope of policy unless explicitly excluded.
  /// [includedUsers] A list of user IDs in scope of policy unless explicitly excluded, or `None` or `All` or `GuestsOrExternalUsers`.
  ConditionalAccessPolicyConditionsUsers({
    this.excludedGroups,
    this.excludedGuestsOrExternalUsers,
    this.excludedRoles,
    this.excludedUsers,
    this.includedGroups,
    this.includedGuestsOrExternalUsers,
    this.includedRoles,
    this.includedUsers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludedGroups': ?excludedGroups,
      'excludedGuestsOrExternalUsers': ?excludedGuestsOrExternalUsers == null ? null : pulumi.Input.encodeList<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser, Map<String, dynamic>>(excludedGuestsOrExternalUsers!, (value) => value.toMap()),
      'excludedRoles': ?excludedRoles,
      'excludedUsers': ?excludedUsers,
      'includedGroups': ?includedGroups,
      'includedGuestsOrExternalUsers': ?includedGuestsOrExternalUsers == null ? null : pulumi.Input.encodeList<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser, Map<String, dynamic>>(includedGuestsOrExternalUsers!, (value) => value.toMap()),
      'includedRoles': ?includedRoles,
      'includedUsers': ?includedUsers,
    };
  }

  factory ConditionalAccessPolicyConditionsUsers.fromMap(Map<String, dynamic> map) {
    return ConditionalAccessPolicyConditionsUsers(
      excludedGroups: map['excludedGroups'] == null ? null : (map['excludedGroups'] as List).cast<String>(),
      excludedGuestsOrExternalUsers: map['excludedGuestsOrExternalUsers'] == null ? null : pulumi.Input.decodeList<ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser>(map['excludedGuestsOrExternalUsers'], (value) => ConditionalAccessPolicyConditionsUsersExcludedGuestsOrExternalUser.fromMap((value as Map).cast<String, dynamic>())),
      excludedRoles: map['excludedRoles'] == null ? null : (map['excludedRoles'] as List).cast<String>(),
      excludedUsers: map['excludedUsers'] == null ? null : (map['excludedUsers'] as List).cast<String>(),
      includedGroups: map['includedGroups'] == null ? null : (map['includedGroups'] as List).cast<String>(),
      includedGuestsOrExternalUsers: map['includedGuestsOrExternalUsers'] == null ? null : pulumi.Input.decodeList<ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser>(map['includedGuestsOrExternalUsers'], (value) => ConditionalAccessPolicyConditionsUsersIncludedGuestsOrExternalUser.fromMap((value as Map).cast<String, dynamic>())),
      includedRoles: map['includedRoles'] == null ? null : (map['includedRoles'] as List).cast<String>(),
      includedUsers: map['includedUsers'] == null ? null : (map['includedUsers'] as List).cast<String>(),
    );
  }
}

