// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Server
class DeploymentServerResponse {
  /// Base runtime URLs for this deployment.
  final pulumi.Input<List<String>>? runtimeUri;

  /// Creates a new [DeploymentServerResponse].
  /// [runtimeUri] Base runtime URLs for this deployment.
  const DeploymentServerResponse({
    this.runtimeUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeUri': ?runtimeUri,
    };
  }

  factory DeploymentServerResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentServerResponse(
      runtimeUri: (() { final guardedValue = map['runtimeUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}

