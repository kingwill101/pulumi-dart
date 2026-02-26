// ignore_for_file: unused_element, unnecessary_cast

class ServiceDeploymentController {
  /// Type of deployment controller. Valid values: `CODE_DEPLOY`, `ECS`, `EXTERNAL`. Default: `ECS`.
  final String? type;

  ServiceDeploymentController({
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory ServiceDeploymentController.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentController(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
