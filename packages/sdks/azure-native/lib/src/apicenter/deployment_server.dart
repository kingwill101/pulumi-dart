// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Server
class DeploymentServer {
  /// Base runtime URLs for this deployment.
  final pulumi.Input<List<String>>? runtimeUri;

  /// Creates a new [DeploymentServer].
  /// [runtimeUri] Base runtime URLs for this deployment.
  DeploymentServer({
    this.runtimeUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'runtimeUri': ?runtimeUri,
    };
  }

  factory DeploymentServer.fromMap(Map<String, dynamic> map) {
    return DeploymentServer(
      runtimeUri: map['runtimeUri'] == null ? null : ((map['runtimeUri'] as List).cast<String>()).input(),
    );
  }
}

