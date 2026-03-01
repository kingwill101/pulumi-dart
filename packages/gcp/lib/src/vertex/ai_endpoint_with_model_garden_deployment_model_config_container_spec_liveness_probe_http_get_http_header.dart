// ignore_for_file: unused_element, unnecessary_cast

class AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeader {
  /// The header field name.
  /// This will be canonicalized upon output, so case-variant names will be
  /// understood as the same header.
  final String? name;

  /// The header field value
  final String? value;

  /// Creates a new [AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeader].
  /// [name] The header field name.
  /// [value] The header field value
  AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeader({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeader.fromMap(
    Map<String, dynamic> map,
  ) {
    return AiEndpointWithModelGardenDeploymentModelConfigContainerSpecLivenessProbeHttpGetHttpHeader(
      name: map['name'] == null ? null : map['name'] as String,
      value: map['value'] == null ? null : map['value'] as String,
    );
  }
}
