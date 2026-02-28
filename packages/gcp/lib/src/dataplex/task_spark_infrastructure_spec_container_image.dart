// ignore_for_file: unused_element, unnecessary_cast

class TaskSparkInfrastructureSpecContainerImage {
  /// Container image to use.
  final String? image;

  /// A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  final List<String>? javaJars;

  /// Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties.
  final Map<String, String>? properties;

  /// A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  final List<String>? pythonPackages;

  /// Creates a new [TaskSparkInfrastructureSpecContainerImage].
  /// [image] Container image to use.
  /// [javaJars] A list of Java JARS to add to the classpath. Valid input includes Cloud Storage URIs to Jar binaries. For example, gs://bucket-name/my/path/to/file.jar
  /// [properties] Override to common configuration of open source components installed on the Dataproc cluster. The properties to set on daemon config files. Property keys are specified in prefix:property format, for example core:hadoop.tmp.dir. For more information, see Cluster properties.
  /// [pythonPackages] A list of python packages to be installed. Valid formats include Cloud Storage URI to a PIP installable library. For example, gs://bucket-name/my/path/to/lib.tar.gz
  TaskSparkInfrastructureSpecContainerImage({
    this.image,
    this.javaJars,
    this.properties,
    this.pythonPackages,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final imageValue = image;
    if (imageValue != null) {
      map['image'] = imageValue;
    }
    final javaJarsValue = javaJars;
    if (javaJarsValue != null) {
      map['javaJars'] = javaJarsValue;
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

  factory TaskSparkInfrastructureSpecContainerImage.fromMap(
      Map<String, dynamic> map) {
    return TaskSparkInfrastructureSpecContainerImage(
      image: map['image'] == null ? null : map['image'] as String,
      javaJars: map['javaJars'] == null
          ? null
          : (map['javaJars'] as List).cast<String>(),
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
      pythonPackages: map['pythonPackages'] == null
          ? null
          : (map['pythonPackages'] as List).cast<String>(),
    );
  }
}
