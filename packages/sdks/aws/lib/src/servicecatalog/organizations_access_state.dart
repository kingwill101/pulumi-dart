// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationsAccess resources.
class OrganizationsAccessState {
  /// Whether to enable AWS Organizations access.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [OrganizationsAccessState].
  /// [enabled] Whether to enable AWS Organizations access.
  const OrganizationsAccessState({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory OrganizationsAccessState.fromMap(Map<String, dynamic> map) {
    return OrganizationsAccessState(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}

