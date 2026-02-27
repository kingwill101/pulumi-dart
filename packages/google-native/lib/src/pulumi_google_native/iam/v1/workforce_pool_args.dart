// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'access_restrictions.dart';

/// The set of arguments for WorkforcePool.
class WorkforcePoolArgs {
  /// Optional. Configure access restrictions on the workforce pool users. This is an optional field. If specified web sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  final pulumi.Input<AccessRestrictions>? accessRestrictions;

  /// A user-specified description of the pool. Cannot exceed 256 characters.
  final pulumi.Input<String>? description;

  /// Disables the workforce pool. You cannot use a disabled pool to exchange tokens, or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  final pulumi.Input<bool>? disabled;

  /// A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  final pulumi.Input<String>? displayName;
  final pulumi.Input<String>? location;

  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  final pulumi.Input<String>? parent;

  /// Duration that the Google Cloud access tokens, console sign-in sessions, and `gcloud` sign-in sessions from this pool are valid. Must be greater than 15 minutes (900s) and less than 12 hours (43200s). If `session_duration` is not configured, minted credentials have a default duration of one hour (3600s). For SAML providers, the lifetime of the token is the minimum of the `session_duration` and the `SessionNotOnOrAfter` claim in the SAML assertion.
  final pulumi.Input<String>? sessionDuration;

  /// The ID to use for the pool, which becomes the final component of the resource name. The IDs must be a globally unique string of 6 to 63 lowercase letters, digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen. The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final pulumi.Input<String>? workforcePoolId;

  WorkforcePoolArgs({
    this.accessRestrictions,
    this.description,
    this.disabled,
    this.displayName,
    this.location,
    this.parent,
    this.sessionDuration,
    this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessRestrictionsValue = accessRestrictions;
    if (accessRestrictionsValue != null) {
      map['accessRestrictions'] = pulumi.Input.mapOptionalInputValue<
              AccessRestrictions, Map<String, dynamic>>(
          accessRestrictionsValue, (value) => value.toMap());
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final parentValue = parent;
    if (parentValue != null) {
      map['parent'] = parentValue;
    }
    final sessionDurationValue = sessionDuration;
    if (sessionDurationValue != null) {
      map['sessionDuration'] = sessionDurationValue;
    }
    final workforcePoolIdValue = workforcePoolId;
    if (workforcePoolIdValue != null) {
      map['workforcePoolId'] = workforcePoolIdValue;
    }
    return map;
  }

  factory WorkforcePoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolArgs(
      accessRestrictions: pulumi.Input.asOptionalInput<AccessRestrictions>(
          map['accessRestrictions']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      disabled: pulumi.Input.asOptionalInput<bool>(map['disabled']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      parent: pulumi.Input.asOptionalInput<String>(map['parent']),
      sessionDuration:
          pulumi.Input.asOptionalInput<String>(map['sessionDuration']),
      workforcePoolId:
          pulumi.Input.asOptionalInput<String>(map['workforcePoolId']),
    );
  }
}
