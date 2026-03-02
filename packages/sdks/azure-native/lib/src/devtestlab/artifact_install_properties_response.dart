// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_parameter_properties_response.dart';

/// Properties of an artifact.
class ArtifactInstallPropertiesResponse {
  /// The artifact's identifier.
  final pulumi.Input<String>? artifactId;
  /// The artifact's title.
  final pulumi.Input<String>? artifactTitle;
  /// The status message from the deployment.
  final pulumi.Input<String>? deploymentStatusMessage;
  /// The time that the artifact starts to install on the virtual machine.
  final pulumi.Input<String>? installTime;
  /// The parameters of the artifact.
  final pulumi.Input<List<ArtifactParameterPropertiesResponse>>? parameters;
  /// The status of the artifact.
  final pulumi.Input<String>? status;
  /// The status message from the virtual machine extension.
  final pulumi.Input<String>? vmExtensionStatusMessage;

  /// Creates a new [ArtifactInstallPropertiesResponse].
  /// [artifactId] The artifact's identifier.
  /// [artifactTitle] The artifact's title.
  /// [deploymentStatusMessage] The status message from the deployment.
  /// [installTime] The time that the artifact starts to install on the virtual machine.
  /// [parameters] The parameters of the artifact.
  /// [status] The status of the artifact.
  /// [vmExtensionStatusMessage] The status message from the virtual machine extension.
  ArtifactInstallPropertiesResponse({
    this.artifactId,
    this.artifactTitle,
    this.deploymentStatusMessage,
    this.installTime,
    this.parameters,
    this.status,
    this.vmExtensionStatusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'artifactId': ?artifactId,
      'artifactTitle': ?artifactTitle,
      'deploymentStatusMessage': ?deploymentStatusMessage,
      'installTime': ?installTime,
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ArtifactParameterPropertiesResponse>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ArtifactParameterPropertiesResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'vmExtensionStatusMessage': ?vmExtensionStatusMessage,
    };
  }

  factory ArtifactInstallPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ArtifactInstallPropertiesResponse(
      artifactId: map['artifactId'] == null ? null : (map['artifactId'] as String).input(),
      artifactTitle: map['artifactTitle'] == null ? null : (map['artifactTitle'] as String).input(),
      deploymentStatusMessage: map['deploymentStatusMessage'] == null ? null : (map['deploymentStatusMessage'] as String).input(),
      installTime: map['installTime'] == null ? null : (map['installTime'] as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ArtifactParameterPropertiesResponse>(map['parameters'], (value) => ArtifactParameterPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      vmExtensionStatusMessage: map['vmExtensionStatusMessage'] == null ? null : (map['vmExtensionStatusMessage'] as String).input(),
    );
  }
}

