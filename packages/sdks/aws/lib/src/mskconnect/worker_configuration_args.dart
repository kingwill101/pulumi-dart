// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mskconnect_worker_configuration_worker_configuration_args_doc}
/// The set of arguments for WorkerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_mskconnect_worker_configuration_worker_configuration_args_doc}
class WorkerConfigurationArgs {
  /// Summary description of the worker configuration.
  final pulumi.Input<String?>? description;
  /// Name of the worker configuration.
  final pulumi.Input<String?>? name;
  /// Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> propertiesFileContent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [WorkerConfigurationArgs].
  /// [description] Summary description of the worker configuration.
  /// [name] Name of the worker configuration.
  /// [propertiesFileContent] Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const WorkerConfigurationArgs({
    this.description,
    this.name,
    required this.propertiesFileContent,
    this.region,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'propertiesFileContent': propertiesFileContent,
      'region': ?region,
      'tags': ?tags,
    };
  }

  factory WorkerConfigurationArgs.fromMap(Map<String, dynamic> map) {
    return WorkerConfigurationArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertiesFileContent: pulumi.Input.fromValue(map['propertiesFileContent'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
