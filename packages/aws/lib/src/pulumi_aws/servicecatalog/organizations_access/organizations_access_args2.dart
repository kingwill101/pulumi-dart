// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for OrganizationsAccess.
class OrganizationsAccessArgs2 {
  /// Whether to enable AWS Organizations access.
  final Input<bool> enabled;

  OrganizationsAccessArgs2({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory OrganizationsAccessArgs2.fromMap(Map<String, dynamic> map) {
    return OrganizationsAccessArgs2(
      enabled: Input.asInput<bool>(map['enabled']),
    );
  }
}
