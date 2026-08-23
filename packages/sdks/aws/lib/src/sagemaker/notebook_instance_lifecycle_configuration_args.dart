// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sagemaker_notebook_instance_lifecycle_configuration_notebook_instance_lifecycle_configuration_args_doc}
/// The set of arguments for NotebookInstanceLifecycleConfiguration.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_notebook_instance_lifecycle_configuration_notebook_instance_lifecycle_configuration_args_doc}
class NotebookInstanceLifecycleConfigurationArgs {
  /// The name of the lifecycle configuration (must be unique). If omitted, this provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// A shell script (base64-encoded) that runs only once when the SageMaker AI Notebook Instance is created.
  final pulumi.Input<String>? onCreate;
  /// A shell script (base64-encoded) that runs every time the SageMaker AI Notebook Instance is started including the time it's created.
  final pulumi.Input<String>? onStart;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [NotebookInstanceLifecycleConfigurationArgs].
  /// [name] The name of the lifecycle configuration (must be unique). If omitted, this provider will assign a random, unique name.
  /// [onCreate] A shell script (base64-encoded) that runs only once when the SageMaker AI Notebook Instance is created.
  /// [onStart] A shell script (base64-encoded) that runs every time the SageMaker AI Notebook Instance is started including the time it's created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const NotebookInstanceLifecycleConfigurationArgs({
    this.name,
    this.onCreate,
    this.onStart,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'onCreate': ?onCreate,
      'onStart': ?onStart,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory NotebookInstanceLifecycleConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return NotebookInstanceLifecycleConfigurationArgs(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onCreate: (() { final guardedValue = map['onCreate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      onStart: (() { final guardedValue = map['onStart']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
