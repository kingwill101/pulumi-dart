// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetV2ServiceAssociatedSystem {
  /// ARN of the associated system.
  final pulumi.Input<String> systemArn;

  /// Creates a new [GetV2ServiceAssociatedSystem].
  /// [systemArn] ARN of the associated system.
  const GetV2ServiceAssociatedSystem({
    required this.systemArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemArn': systemArn,
    };
  }

  factory GetV2ServiceAssociatedSystem.fromMap(Map<String, dynamic> map) {
    return GetV2ServiceAssociatedSystem(
      systemArn: pulumi.Input.fromValue(map['systemArn'] as String),
    );
  }
}
