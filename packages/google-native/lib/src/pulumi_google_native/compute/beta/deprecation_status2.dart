// ignore_for_file: unused_element, unnecessary_cast

import 'deprecation_status_state2.dart';
import 'rollout_policy2.dart';

/// Deprecation status for a public resource.
class DeprecationStatus2 {
  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DELETED. This is only informational and the status will not change unless the client explicitly changes it.
  final String? deleted;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to DEPRECATED. This is only informational and the status will not change unless the client explicitly changes it.
  final String? deprecated;

  /// An optional RFC3339 timestamp on or after which the state of this resource is intended to change to OBSOLETE. This is only informational and the status will not change unless the client explicitly changes it.
  final String? obsolete;

  /// The URL of the suggested replacement for a deprecated resource. The suggested replacement resource must be the same kind of resource as the deprecated resource.
  final String? replacement;

  /// The deprecation state of this resource. This can be ACTIVE, DEPRECATED, OBSOLETE, or DELETED. Operations which communicate the end of life date for an image, can use ACTIVE. Operations which create a new resource using a DEPRECATED resource will return successfully, but with a warning indicating the deprecated resource and recommending its replacement. Operations which use OBSOLETE or DELETED resources will be rejected and result in an error.
  final DeprecationStatusState2? state;

  /// The rollout policy for this deprecation. This policy is only enforced by image family views. The rollout policy restricts the zones where the associated resource is considered in a deprecated state. When the rollout policy does not include the user specified zone, or if the zone is rolled out, the associated resource is considered in a deprecated state. The rollout policy for this deprecation is read-only, except for allowlisted users. This field might not be configured. To view the latest non-deprecated image in a specific zone, use the imageFamilyViews.get method.
  final RolloutPolicy2? stateOverride;

  DeprecationStatus2({
    this.deleted,
    this.deprecated,
    this.obsolete,
    this.replacement,
    this.state,
    this.stateOverride,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletedValue = deleted;
    if (deletedValue != null) {
      map['deleted'] = deletedValue;
    }
    final deprecatedValue = deprecated;
    if (deprecatedValue != null) {
      map['deprecated'] = deprecatedValue;
    }
    final obsoleteValue = obsolete;
    if (obsoleteValue != null) {
      map['obsolete'] = obsoleteValue;
    }
    final replacementValue = replacement;
    if (replacementValue != null) {
      map['replacement'] = replacementValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue.value;
    }
    final stateOverrideValue = stateOverride;
    if (stateOverrideValue != null) {
      map['stateOverride'] = stateOverrideValue.toMap();
    }
    return map;
  }

  factory DeprecationStatus2.fromMap(Map<String, dynamic> map) {
    return DeprecationStatus2(
      deleted: map['deleted'] == null ? null : map['deleted'] as String,
      deprecated:
          map['deprecated'] == null ? null : map['deprecated'] as String,
      obsolete: map['obsolete'] == null ? null : map['obsolete'] as String,
      replacement:
          map['replacement'] == null ? null : map['replacement'] as String,
      state: map['state'] == null
          ? null
          : DeprecationStatusState2.fromValue(map['state'] as String),
      stateOverride: map['stateOverride'] == null
          ? null
          : RolloutPolicy2.fromMap(
              (map['stateOverride'] as Map).cast<String, dynamic>()),
    );
  }
}
