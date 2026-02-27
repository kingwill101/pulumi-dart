// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for OrganizationsAccess.
class OrganizationsAccessServicecatalogArgs {
  /// Whether to enable AWS Organizations access.
  final pulumi.Input<bool> enabled;

  OrganizationsAccessServicecatalogArgs({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory OrganizationsAccessServicecatalogArgs.fromMap(
      Map<String, dynamic> map) {
    return OrganizationsAccessServicecatalogArgs(
      enabled: pulumi.Input.asInput<bool>(map['enabled']),
    );
  }
}
