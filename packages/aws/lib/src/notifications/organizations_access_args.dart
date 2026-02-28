// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'organizations_access_timeouts.dart';

/// {@template pulumi_notifications_organizations_access_organizations_access_args_doc}
/// The set of arguments for OrganizationsAccess.
/// {@endtemplate}
/// {@macro pulumi_notifications_organizations_access_organizations_access_args_doc}
class OrganizationsAccessArgs {
  /// Whether to enable organizations access for AWS User Notifications in AWS Organizations. When set to `true`, enables organizations access. When set to `false`, disables organizations access.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<OrganizationsAccessTimeouts>? timeouts;

  /// Creates a new [OrganizationsAccessArgs].
  /// [enabled] Whether to enable organizations access for AWS User Notifications in AWS Organizations. When set to `true`, enables organizations access. When set to `false`, disables organizations access.
  /// [timeouts] Optional.
  OrganizationsAccessArgs({
    required bool enabled,
    OrganizationsAccessTimeouts? timeouts,
  }) :
      enabled = pulumi.Input.asInput<bool>(enabled),
      timeouts = pulumi.Input.asOptionalInput<OrganizationsAccessTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<OrganizationsAccessTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory OrganizationsAccessArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationsAccessArgs(
      enabled: map['enabled'] as bool,
      timeouts: map['timeouts'] == null ? null : OrganizationsAccessTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>()),
    );
  }
}

