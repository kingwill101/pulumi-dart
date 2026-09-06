// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_parameter_properties_response.dart';

/// Properties of an artifact.
class ArtifactInstallPropertiesResponse {
  /// The artifact's identifier.
  final pulumi.Input<String?>? artifactId;
  /// The artifact's title.
  final pulumi.Input<String?>? artifactTitle;
  /// The status message from the deployment.
  final pulumi.Input<String?>? deploymentStatusMessage;
  /// The time that the artifact starts to install on the virtual machine.
  final pulumi.Input<String?>? installTime;
  /// The parameters of the artifact.
  final pulumi.Input<List<ArtifactParameterPropertiesResponse>?>? parameters;
  /// The status of the artifact.
  final pulumi.Input<String?>? status;
  /// The status message from the virtual machine extension.
  final pulumi.Input<String?>? vmExtensionStatusMessage;

  /// Creates a new [ArtifactInstallPropertiesResponse].
  /// [artifactId] The artifact's identifier.
  /// [artifactTitle] The artifact's title.
  /// [deploymentStatusMessage] The status message from the deployment.
  /// [installTime] The time that the artifact starts to install on the virtual machine.
  /// [parameters] The parameters of the artifact.
  /// [status] The status of the artifact.
  /// [vmExtensionStatusMessage] The status message from the virtual machine extension.
  const ArtifactInstallPropertiesResponse({
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
      artifactId: (() { final guardedValue = map['artifactId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      artifactTitle: (() { final guardedValue = map['artifactTitle']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentStatusMessage: (() { final guardedValue = map['deploymentStatusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      installTime: (() { final guardedValue = map['installTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArtifactParameterPropertiesResponse>(guardedValue, (value) => ArtifactParameterPropertiesResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vmExtensionStatusMessage: (() { final guardedValue = map['vmExtensionStatusMessage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
