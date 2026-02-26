// ignore_for_file: unused_element, unnecessary_cast

class ClusterStepHadoopJarStep {
  /// List of command line arguments passed to the JAR file's main function when executed.
  final List<String>? args;

  /// Path to a JAR file run during the step.
  final String jar;

  /// Name of the main class in the specified Java file. If not specified, the JAR file should specify a Main-Class in its manifest file.
  final String? mainClass;

  /// Key-Value map of Java properties that are set when the step runs. You can use these properties to pass key value pairs to your main function.
  final Map<String, String>? properties;

  ClusterStepHadoopJarStep({
    this.args,
    required this.jar,
    this.mainClass,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final argsValue = args;
    if (argsValue != null) {
      map['args'] = argsValue;
    }
    map['jar'] = jar;
    final mainClassValue = mainClass;
    if (mainClassValue != null) {
      map['mainClass'] = mainClassValue;
    }
    final propertiesValue = properties;
    if (propertiesValue != null) {
      map['properties'] = propertiesValue;
    }
    return map;
  }

  factory ClusterStepHadoopJarStep.fromMap(Map<String, dynamic> map) {
    return ClusterStepHadoopJarStep(
      args: map['args'] == null ? null : (map['args'] as List).cast<String>(),
      jar: map['jar'] as String,
      mainClass: map['mainClass'] == null ? null : map['mainClass'] as String,
      properties: map['properties'] == null
          ? null
          : (map['properties'] as Map).cast<String, String>(),
    );
  }
}
