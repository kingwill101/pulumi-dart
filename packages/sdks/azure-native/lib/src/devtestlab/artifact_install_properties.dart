// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'artifact_parameter_properties.dart';

/// Properties of an artifact.
class ArtifactInstallProperties {
  /// The artifact's identifier.
  final pulumi.Input<String>? artifactId;
  /// The artifact's title.
  final pulumi.Input<String>? artifactTitle;
  /// The status message from the deployment.
  final pulumi.Input<String>? deploymentStatusMessage;
  /// The time that the artifact starts to install on the virtual machine.
  final pulumi.Input<String>? installTime;
  /// The parameters of the artifact.
  final pulumi.Input<List<ArtifactParameterProperties>>? parameters;
  /// The status of the artifact.
  final pulumi.Input<String>? status;
  /// The status message from the virtual machine extension.
  final pulumi.Input<String>? vmExtensionStatusMessage;

  /// Creates a new [ArtifactInstallProperties].
  /// [artifactId] The artifact's identifier.
  /// [artifactTitle] The artifact's title.
  /// [deploymentStatusMessage] The status message from the deployment.
  /// [installTime] The time that the artifact starts to install on the virtual machine.
  /// [parameters] The parameters of the artifact.
  /// [status] The status of the artifact.
  /// [vmExtensionStatusMessage] The status message from the virtual machine extension.
  ArtifactInstallProperties({
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
      'parameters': ?pulumi.Input.mapOptionalInputValue<List<ArtifactParameterProperties>, List<Map<String, dynamic>>>(parameters, (value) => pulumi.Input.encodeList<ArtifactParameterProperties, Map<String, dynamic>>(value, (value) => value.toMap())),
      'status': ?status,
      'vmExtensionStatusMessage': ?vmExtensionStatusMessage,
    };
  }

  factory ArtifactInstallProperties.fromMap(Map<String, dynamic> map) {
    return ArtifactInstallProperties(
      artifactId: map['artifactId'] == null ? null : (map['artifactId']! as String).input(),
      artifactTitle: map['artifactTitle'] == null ? null : (map['artifactTitle']! as String).input(),
      deploymentStatusMessage: map['deploymentStatusMessage'] == null ? null : (map['deploymentStatusMessage']! as String).input(),
      installTime: map['installTime'] == null ? null : (map['installTime']! as String).input(),
      parameters: map['parameters'] == null ? null : (pulumi.Input.decodeList<ArtifactParameterProperties>(map['parameters']!, (value) => ArtifactParameterProperties.fromMap((value as Map).cast<String, dynamic>()))).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      vmExtensionStatusMessage: map['vmExtensionStatusMessage'] == null ? null : (map['vmExtensionStatusMessage']! as String).input(),
    );
  }
}

