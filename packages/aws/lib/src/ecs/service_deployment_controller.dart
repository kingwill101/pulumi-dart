// ignore_for_file: unused_element, unnecessary_cast

class ServiceDeploymentController {
  /// Type of deployment controller. Valid values: `CODE_DEPLOY`, `ECS`, `EXTERNAL`. Default: `ECS`.
  final String? type;

  /// Creates a new [ServiceDeploymentController].
  /// [type] Type of deployment controller. Valid values: `CODE_DEPLOY`, `ECS`, `EXTERNAL`. Default: `ECS`.
  ServiceDeploymentController({this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': ?type};
  }

  factory ServiceDeploymentController.fromMap(Map<String, dynamic> map) {
    return ServiceDeploymentController(
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
