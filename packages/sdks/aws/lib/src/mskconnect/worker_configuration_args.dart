// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mskconnect_worker_configuration_worker_configuration_args_doc}
/// The set of arguments for WorkerConfiguration.
/// {@endtemplate}
/// {@macro pulumi_mskconnect_worker_configuration_worker_configuration_args_doc}
class WorkerConfigurationArgs {
  /// A summary description of the worker configuration.
  final pulumi.Input<String>? description;
  /// The name of the worker configuration.
  final pulumi.Input<String>? name;
  /// Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> propertiesFileContent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [WorkerConfigurationArgs].
  /// [description] A summary description of the worker configuration.
  /// [name] The name of the worker configuration.
  /// [propertiesFileContent] Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  WorkerConfigurationArgs({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    required pulumi.Output<String> propertiesFileContent,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      propertiesFileContent = pulumi.Input.asInput<String>(propertiesFileContent),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      propertiesFileContent: pulumi.Output.create<String>(map['propertiesFileContent'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

