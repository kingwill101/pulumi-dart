// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterStepHadoopJarStep {
  /// List of command line arguments passed to the JAR file's main function when executed.
  final pulumi.Input<List<String>>? args;
  /// Path to a JAR file run during the step.
  final pulumi.Input<String> jar;
  /// Name of the main class in the specified Java file. If not specified, the JAR file should specify a Main-Class in its manifest file.
  final pulumi.Input<String>? mainClass;
  /// Key-Value map of Java properties that are set when the step runs. You can use these properties to pass key value pairs to your main function.
  final pulumi.Input<Map<String, String>>? properties;

  /// Creates a new [ClusterStepHadoopJarStep].
  /// [args] List of command line arguments passed to the JAR file's main function when executed.
  /// [jar] Path to a JAR file run during the step.
  /// [mainClass] Name of the main class in the specified Java file. If not specified, the JAR file should specify a Main-Class in its manifest file.
  /// [properties] Key-Value map of Java properties that are set when the step runs. You can use these properties to pass key value pairs to your main function.
  const ClusterStepHadoopJarStep({
    this.args,
    required this.jar,
    this.mainClass,
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'args': ?args,
      'jar': jar,
      'mainClass': ?mainClass,
      'properties': ?properties,
    };
  }

  factory ClusterStepHadoopJarStep.fromMap(Map<String, dynamic> map) {
    return ClusterStepHadoopJarStep(
      args: (() { final guardedValue = map['args']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      jar: pulumi.Input.fromValue(map['jar'] as String),
      mainClass: (() { final guardedValue = map['mainClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

