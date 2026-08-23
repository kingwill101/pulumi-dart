// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V2ServiceAssociatedSystem {
  /// ARN of the system to associate with the service.
  final pulumi.Input<String> systemArn;

  /// Creates a new [V2ServiceAssociatedSystem].
  /// [systemArn] ARN of the system to associate with the service.
  const V2ServiceAssociatedSystem({
    required this.systemArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'systemArn': systemArn,
    };
  }

  factory V2ServiceAssociatedSystem.fromMap(Map<String, dynamic> map) {
    return V2ServiceAssociatedSystem(
      systemArn: pulumi.Input.fromValue(map['systemArn'] as String),
    );
  }
}
