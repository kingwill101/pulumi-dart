// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader {
  /// The header field name.
  /// This will be canonicalized upon output, so case-variant names will be
  /// understood as the same header.
  final String? name;

  /// The header field value
  final String? value;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader].
  /// [name] The header field name.
  /// [value] The header field value
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecHealthProbeHttpGetHttpHeader(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
