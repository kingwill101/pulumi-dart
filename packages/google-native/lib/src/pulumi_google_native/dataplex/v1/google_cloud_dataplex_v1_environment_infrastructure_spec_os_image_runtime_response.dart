// ignore_for_file: unused_element, unnecessary_cast

/// Software Runtime Configuration to run Analyze.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse {
  /// Dataplex Image version.
  final String imageVersion;

  /// Optional. List of Java jars to be included in the runtime environment. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  final List<String> javaLibraries;

  /// Optional. Spark properties to provide configuration for use in sessions created for this environment. The properties to set on daemon config files. Property keys are specified in prefix:property format. The prefix must be "spark".
  final Map<String, String> properties;

  /// Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  final List<String> pythonPackages;

  GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse({
    required this.imageVersion,
    required this.javaLibraries,
    required this.properties,
    required this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageVersion'] = imageVersion;
    map['javaLibraries'] = javaLibraries;
    map['properties'] = properties;
    map['pythonPackages'] = pythonPackages;
    return map;
  }

  factory GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntimeResponse(
      imageVersion: map['imageVersion'] as String,
      javaLibraries: (map['javaLibraries'] as List).cast<String>(),
      properties: (map['properties'] as Map).cast<String, String>(),
      pythonPackages: (map['pythonPackages'] as List).cast<String>(),
    );
  }
}
