// ignore_for_file: unused_element, unnecessary_cast


class GetHostEcsLevelInfosInfo {
  /// The description of the host ecs level info.
  final String description;
  /// The instance family of the host ecs level info.
  final String ecsClass;
  /// The Elastic Compute Service (ECS) instance type.
  final String ecsClassCode;
  /// The ApsaraDB RDS instance type of the host ecs level info.
  final String resClassCode;

  /// Creates a new [GetHostEcsLevelInfosInfo].
  /// [description] The description of the host ecs level info.
  /// [ecsClass] The instance family of the host ecs level info.
  /// [ecsClassCode] The Elastic Compute Service (ECS) instance type.
  /// [resClassCode] The ApsaraDB RDS instance type of the host ecs level info.
  GetHostEcsLevelInfosInfo({
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
      description: map['description'] as String,
      ecsClass: map['ecsClass'] as String,
      ecsClassCode: map['ecsClassCode'] as String,
      resClassCode: map['resClassCode'] as String,
    );
  }
}

