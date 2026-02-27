// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../organizations_access_timeouts/organizations_access_timeouts.dart';

/// The set of arguments for OrganizationsAccess.
class OrganizationsAccessArgs {
  /// Whether to enable organizations access for AWS User Notifications in AWS Organizations. When set to `true`, enables organizations access. When set to `false`, disables organizations access.
  final pulumi.Input<bool> enabled;
  final pulumi.Input<OrganizationsAccessTimeouts>? timeouts;

  OrganizationsAccessArgs({
    required this.enabled,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = pulumi.Input.mapOptionalInputValue<
          OrganizationsAccessTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory OrganizationsAccessArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationsAccessArgs(
      enabled: pulumi.Input.asInput<bool>(map['enabled']),
      timeouts: pulumi.Input.asOptionalInput<OrganizationsAccessTimeouts>(
          map['timeouts']),
    );
  }
}
