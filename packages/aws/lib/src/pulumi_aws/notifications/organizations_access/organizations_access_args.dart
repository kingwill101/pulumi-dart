// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../organizations_access_timeouts/organizations_access_timeouts.dart';

/// The set of arguments for OrganizationsAccess.
class OrganizationsAccessArgs {
  /// Whether to enable organizations access for AWS User Notifications in AWS Organizations. When set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, enables organizations access. When set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, disables organizations access.
  final Input<bool> enabled;
  final Input<OrganizationsAccessTimeouts>? timeouts;

  OrganizationsAccessArgs({
    required this.enabled,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final timeoutsValue = timeouts;
    if (timeoutsValue != null) {
      map['timeouts'] = Input.mapOptionalInputValue<OrganizationsAccessTimeouts,
          Map<String, dynamic>>(timeoutsValue, (value) => value.toMap());
    }
    return map;
  }

  factory OrganizationsAccessArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationsAccessArgs(
      enabled: Input.asInput<bool>(map['enabled']),
      timeouts:
          Input.asOptionalInput<OrganizationsAccessTimeouts>(map['timeouts']),
    );
  }
}
