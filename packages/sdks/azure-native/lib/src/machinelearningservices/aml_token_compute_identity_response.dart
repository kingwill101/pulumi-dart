// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AML token compute identity definition.
class AmlTokenComputeIdentityResponse {
  /// Monitor compute identity type enum.
  /// Expected value is 'AmlToken'.
  final pulumi.Input<String> computeIdentityType;

  /// Creates a new [AmlTokenComputeIdentityResponse].
  /// [computeIdentityType] Monitor compute identity type enum.
  AmlTokenComputeIdentityResponse({
    required this.computeIdentityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'computeIdentityType': computeIdentityType,
    };
  }

  factory AmlTokenComputeIdentityResponse.fromMap(Map<String, dynamic> map) {
    return AmlTokenComputeIdentityResponse(
      computeIdentityType: pulumi.Input.fromValue(map['computeIdentityType'] as String),
    );
  }
}

