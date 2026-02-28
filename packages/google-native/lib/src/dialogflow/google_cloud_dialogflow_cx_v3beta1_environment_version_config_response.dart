// ignore_for_file: unused_element, unnecessary_cast


/// Configuration for the version.
class GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfigResponse {
  /// Format: projects//locations//agents//flows//versions/.
  final String version;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfigResponse].
  /// [version] Format: projects//locations//agents//flows//versions/.
  GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfigResponse({
    required this.version,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'version': version,
    };
  }

  factory GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfigResponse.fromMap(Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1EnvironmentVersionConfigResponse(
      version: map['version'] as String,
    );
  }
}

