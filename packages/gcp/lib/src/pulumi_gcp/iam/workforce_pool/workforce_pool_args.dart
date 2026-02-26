// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../workforce_pool_access_restrictions/workforce_pool_access_restrictions.dart';

/// The set of arguments for WorkforcePool.
class WorkforcePoolArgs {
  /// Configure access restrictions on the workforce pool users. This is an optional field. If specified web
  /// sign-in can be restricted to given set of services or programmatic sign-in can be disabled for pool users.
  /// Structure is documented below.
  final Input<WorkforcePoolAccessRestrictions>? accessRestrictions;

  /// A user-specified description of the pool. Cannot exceed 256 characters.
  final Input<String>? description;

  /// Whether the pool is disabled. You cannot use a disabled pool to exchange tokens,
  /// or use existing tokens to access resources. If the pool is re-enabled, existing tokens grant access again.
  final Input<bool>? disabled;

  /// A user-specified display name of the pool in Google Cloud Console. Cannot exceed 32 characters.
  final Input<String>? displayName;

  /// The location for the resource.
  final Input<String> location;

  /// Immutable. The resource name of the parent. Format: `organizations/{org-id}`.
  final Input<String> parent;

  /// Duration that the Google Cloud access tokens, console sign-in sessions,
  /// and <span pulumi-lang-nodejs="`gcloud`" pulumi-lang-dotnet="`Gcloud`" pulumi-lang-go="`gcloud`" pulumi-lang-python="`gcloud`" pulumi-lang-yaml="`gcloud`" pulumi-lang-java="`gcloud`">`gcloud`</span> sign-in sessions from this pool are valid.
  /// Must be greater than 15 minutes (900s) and less than 12 hours (43200s).
  /// If `sessionDuration` is not configured, minted credentials have a default duration of one hour (3600s).
  /// A duration in seconds with up to nine fractional digits, ending with '<span pulumi-lang-nodejs="`s`" pulumi-lang-dotnet="`S`" pulumi-lang-go="`s`" pulumi-lang-python="`s`" pulumi-lang-yaml="`s`" pulumi-lang-java="`s`">`s`</span>'. Example: "`3.5s`".
  final Input<String>? sessionDuration;

  /// The name of the pool. The ID must be a globally unique string of 6 to 63 lowercase letters,
  /// digits, or hyphens. It must start with a letter, and cannot have a trailing hyphen.
  /// The prefix `gcp-` is reserved for use by Google, and may not be specified.
  final Input<String> workforcePoolId;

  WorkforcePoolArgs({
    this.accessRestrictions,
    this.description,
    this.disabled,
    this.displayName,
    required this.location,
    required this.parent,
    this.sessionDuration,
    required this.workforcePoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessRestrictionsValue = accessRestrictions;
    if (accessRestrictionsValue != null) {
      map['accessRestrictions'] = Input.mapOptionalInputValue<
              WorkforcePoolAccessRestrictions, Map<String, dynamic>>(
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
    map['location'] = location;
    map['parent'] = parent;
    final sessionDurationValue = sessionDuration;
    if (sessionDurationValue != null) {
      map['sessionDuration'] = sessionDurationValue;
    }
    map['workforcePoolId'] = workforcePoolId;
    return map;
  }

  factory WorkforcePoolArgs.fromMap(Map<String, dynamic> map) {
    return WorkforcePoolArgs(
      accessRestrictions:
          Input.asOptionalInput<WorkforcePoolAccessRestrictions>(
              map['accessRestrictions']),
      description: Input.asOptionalInput<String>(map['description']),
      disabled: Input.asOptionalInput<bool>(map['disabled']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      location: Input.asInput<String>(map['location']),
      parent: Input.asInput<String>(map['parent']),
      sessionDuration: Input.asOptionalInput<String>(map['sessionDuration']),
      workforcePoolId: Input.asInput<String>(map['workforcePoolId']),
    );
  }
}
