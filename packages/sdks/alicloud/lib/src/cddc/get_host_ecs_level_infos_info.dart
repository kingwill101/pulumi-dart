// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetHostEcsLevelInfosInfo {
  /// The description of the host ecs level info.
  final pulumi.Input<String> description;
  /// The instance family of the host ecs level info.
  final pulumi.Input<String> ecsClass;
  /// The Elastic Compute Service (ECS) instance type.
  final pulumi.Input<String> ecsClassCode;
  /// The ApsaraDB RDS instance type of the host ecs level info.
  final pulumi.Input<String> resClassCode;

  /// Creates a new [GetHostEcsLevelInfosInfo].
  /// [description] The description of the host ecs level info.
  /// [ecsClass] The instance family of the host ecs level info.
  /// [ecsClassCode] The Elastic Compute Service (ECS) instance type.
  /// [resClassCode] The ApsaraDB RDS instance type of the host ecs level info.
  const GetHostEcsLevelInfosInfo({
    required this.description,
    required this.ecsClass,
    required this.ecsClassCode,
    required this.resClassCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'ecsClass': ecsClass,
      'ecsClassCode': ecsClassCode,
      'resClassCode': resClassCode,
    };
  }

  factory GetHostEcsLevelInfosInfo.fromMap(Map<String, dynamic> map) {
    return GetHostEcsLevelInfosInfo(
      description: pulumi.Input.fromValue(map['description'] as String),
      ecsClass: pulumi.Input.fromValue(map['ecsClass'] as String),
      ecsClassCode: pulumi.Input.fromValue(map['ecsClassCode'] as String),
      resClassCode: pulumi.Input.fromValue(map['resClassCode'] as String),
    );
  }
}

