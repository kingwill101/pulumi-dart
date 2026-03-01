// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_organizations_access_organizations_access_args_doc}
/// The set of arguments for OrganizationsAccess.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_organizations_access_organizations_access_args_doc}
class OrganizationsAccessArgs {
  /// Whether to enable AWS Organizations access.
  final pulumi.Input<bool> enabled;

  /// Creates a new [OrganizationsAccessArgs].
  /// [enabled] Whether to enable AWS Organizations access.
  OrganizationsAccessArgs({required bool enabled})
    : enabled = pulumi.Input.asInput<bool>(enabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled};
  }

  factory OrganizationsAccessArgs.fromMap(Map<String, dynamic> map) {
    return OrganizationsAccessArgs(enabled: map['enabled'] as bool);
  }
}
