// ignore_for_file: unused_element, unnecessary_cast

class GetServiceDeploymentController {
  /// Constraint type
  final String type;

  /// Creates a new [GetServiceDeploymentController].
  /// [type] Constraint type
  GetServiceDeploymentController({
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['type'] = type;
    return map;
  }

  factory GetServiceDeploymentController.fromMap(Map<String, dynamic> map) {
    return GetServiceDeploymentController(
      type: map['type'] as String,
    );
  }
}
