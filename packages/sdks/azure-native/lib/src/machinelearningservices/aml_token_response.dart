// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AML Token identity configuration.
class AmlTokenResponse {
  /// Enum to determine identity framework.
  /// Expected value is 'AMLToken'.
  final pulumi.Input<String> identityType;

  /// Creates a new [AmlTokenResponse].
  /// [identityType] Enum to determine identity framework.
  const AmlTokenResponse({
    required this.identityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': identityType,
    };
  }

  factory AmlTokenResponse.fromMap(Map<String, dynamic> map) {
    return AmlTokenResponse(
      identityType: pulumi.Input.fromValue(map['identityType'] as String),
    );
  }
}

