// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// AML Token identity configuration.
class AmlToken {
  /// Enum to determine identity framework.
  /// Expected value is 'AMLToken'.
  final pulumi.Input<String> identityType;

  /// Creates a new [AmlToken].
  /// [identityType] Enum to determine identity framework.
  AmlToken({
    required this.identityType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identityType': identityType,
    };
  }

  factory AmlToken.fromMap(Map<String, dynamic> map) {
    return AmlToken(
      identityType: pulumi.Input.fromValue(map['identityType'] as String),
    );
  }
}

