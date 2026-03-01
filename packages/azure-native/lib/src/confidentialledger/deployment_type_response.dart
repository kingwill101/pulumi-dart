// ignore_for_file: unused_element, unnecessary_cast


/// Object representing DeploymentType for Managed CCF.
class DeploymentTypeResponse {
  /// Source Uri containing ManagedCCF code
  final String? appSourceUri;
  /// Unique name for the Managed CCF.
  final String? languageRuntime;

  /// Creates a new [DeploymentTypeResponse].
  /// [appSourceUri] Source Uri containing ManagedCCF code
  /// [languageRuntime] Unique name for the Managed CCF.
  DeploymentTypeResponse({
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
      appSourceUri: map['appSourceUri'] == null ? null : map['appSourceUri'] as String,
      languageRuntime: map['languageRuntime'] == null ? null : map['languageRuntime'] as String,
    );
  }
}

