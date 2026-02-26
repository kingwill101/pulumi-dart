// ignore_for_file: unused_element, unnecessary_cast

/// Software Runtime Configuration to run Analyze.
class GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime {
  /// Dataplex Image version.
  final String imageVersion;

  /// Optional. List of Java jars to be included in the runtime environment. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  final List<String>? javaLibraries;

  /// Optional. Spark properties to provide configuration for use in sessions created for this environment. The properties to set on daemon config files. Property keys are specified in prefix:property format. The prefix must be "spark".
  final Map<String, String>? properties;

  /// Optional. A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  final List<String>? pythonPackages;

  GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime({
    required this.imageVersion,
    this.javaLibraries,
    this.properties,
    this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['imageVersion'] = imageVersion;
    final javaLibrariesValue = javaLibraries;
    if (javaLibrariesValue != null) {
      map['javaLibraries'] = javaLibrariesValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    final pythonPackagesValue = pythonPackages;
    if (pythonPackagesValue != null) {
      map['pythonPackages'] = pythonPackagesValue;
    }
    return map;
  }

  factory GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDataplexV1EnvironmentInfrastructureSpecOsImageRuntime(
      imageVersion: map['imageVersion'] as String,
      javaLibraries: map['javaLibraries'] == null
          ? null
          : (map['javaLibraries'] as List).cast<String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      pythonPackages: map['pythonPackages'] == null
          ? null
          : (map['pythonPackages'] as List).cast<String>(),
    );
  }
}
