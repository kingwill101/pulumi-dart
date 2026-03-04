// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AML token compute identity definition.
class AmlTokenComputeIdentity {
  /// Monitor compute identity type enum.
  /// Expected value is 'AmlToken'.
  final pulumi.Input<String> computeIdentityType;

  /// Creates a new [AmlTokenComputeIdentity].
  /// [computeIdentityType] Monitor compute identity type enum.
  AmlTokenComputeIdentity({required this.computeIdentityType});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'computeIdentityType': computeIdentityType};
  }

  factory AmlTokenComputeIdentity.fromMap(Map<String, dynamic> map) {
    return AmlTokenComputeIdentity(
      computeIdentityType: pulumi.Input.fromValue(
        map['computeIdentityType'] as String,
      ),
    );
  }
}
