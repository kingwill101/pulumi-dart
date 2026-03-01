// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OrganizationsAccess resources.
class OrganizationsAccessState {
  /// Whether to enable AWS Organizations access.
  final pulumi.Input<bool>? enabled;

  /// Creates a new [OrganizationsAccessState].
  /// [enabled] Whether to enable AWS Organizations access.
  OrganizationsAccessState({
    pulumi.Output<bool>? enabled,
  }) :
      enabled = pulumi.Input.asOptionalInput<bool>(enabled);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory OrganizationsAccessState.fromMap(Map<String, dynamic> map) {
    return OrganizationsAccessState(
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
    );
  }
}

