// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPolicies.
class GetPoliciesArgs {
  /// Filter expression for listing policies, as documented in the Cloud Identity Policy API policies.list method.
  final pulumi.Input<String>? filter;

  GetPoliciesArgs({
    this.filter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final filterValue = filter;
    if (filterValue != null) {
      map['filter'] = filterValue;
    }
    return map;
  }

  factory GetPoliciesArgs.fromMap(Map<String, dynamic> map) {
    return GetPoliciesArgs(
      filter: pulumi.Input.asOptionalInput<String>(map['filter']),
    );
  }
}
