// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceDeploymentController {
  /// Constraint type
  final pulumi.Input<String> type;

  /// Creates a new [GetServiceDeploymentController].
  /// [type] Constraint type
  const GetServiceDeploymentController({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': type,
    };
  }

  factory GetServiceDeploymentController.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentController(
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
