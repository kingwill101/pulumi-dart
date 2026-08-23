// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Object representing DeploymentType for Managed CCF.
class DeploymentTypeResponse {
  /// Source Uri containing ManagedCCF code
  final pulumi.Input<String>? appSourceUri;
  /// Unique name for the Managed CCF.
  final pulumi.Input<String>? languageRuntime;

  /// Creates a new [DeploymentTypeResponse].
  /// [appSourceUri] Source Uri containing ManagedCCF code
  /// [languageRuntime] Unique name for the Managed CCF.
  const DeploymentTypeResponse({
    this.appSourceUri,
    this.languageRuntime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appSourceUri': ?appSourceUri,
      'languageRuntime': ?languageRuntime,
    };
  }

  factory DeploymentTypeResponse.fromMap(Map<String, dynamic> map) {
    return DeploymentTypeResponse(
      appSourceUri: (() { final guardedValue = map['appSourceUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      languageRuntime: (() { final guardedValue = map['languageRuntime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
