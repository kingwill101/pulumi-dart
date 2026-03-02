// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_access_timeouts.dart';

/// Input properties used for looking up and filtering OrganizationsAccess resources.
class OrganizationsAccessState {
  /// Whether to enable organizations access for AWS User Notifications in AWS Organizations. When set to `true`, enables organizations access. When set to `false`, disables organizations access.
  final pulumi.Input<bool>? enabled;
  final pulumi.Input<OrganizationsAccessTimeouts>? timeouts;

  /// Creates a new [OrganizationsAccessState].
  /// [enabled] Whether to enable organizations access for AWS User Notifications in AWS Organizations. When set to `true`, enables organizations access. When set to `false`, disables organizations access.
  /// [timeouts] Optional.
  OrganizationsAccessState({
    this.enabled,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<OrganizationsAccessTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory OrganizationsAccessState.fromMap(Map<String, dynamic> map) {
    return OrganizationsAccessState(
      enabled: map['enabled'] == null ? null : ((map['enabled'] as bool).input()).input(),
      timeouts: map['timeouts'] == null ? null : ((OrganizationsAccessTimeouts.fromMap((map['timeouts']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

