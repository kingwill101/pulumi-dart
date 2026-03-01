// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkerConfiguration resources.
class WorkerConfigurationState {
  /// the Amazon Resource Name (ARN) of the worker configuration.
  final pulumi.Input<String>? arn;
  /// A summary description of the worker configuration.
  final pulumi.Input<String>? description;
  /// an ID of the latest successfully created revision of the worker configuration.
  final pulumi.Input<int>? latestRevision;
  /// The name of the worker configuration.
  final pulumi.Input<String>? name;
  /// Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? propertiesFileContent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [WorkerConfigurationState].
  /// [arn] the Amazon Resource Name (ARN) of the worker configuration.
  /// [description] A summary description of the worker configuration.
  /// [latestRevision] an ID of the latest successfully created revision of the worker configuration.
  /// [name] The name of the worker configuration.
  /// [propertiesFileContent] Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  WorkerConfigurationState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<int>? latestRevision,
    pulumi.Output<String>? name,
    pulumi.Output<String>? propertiesFileContent,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      latestRevision = pulumi.Input.asOptionalInput<int>(latestRevision),
      name = pulumi.Input.asOptionalInput<String>(name),
      propertiesFileContent = pulumi.Input.asOptionalInput<String>(propertiesFileContent),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'latestRevision': ?latestRevision,
      'name': ?name,
      'propertiesFileContent': ?propertiesFileContent,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory WorkerConfigurationState.fromMap(Map<String, dynamic> map) {
    return WorkerConfigurationState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      latestRevision: map['latestRevision'] == null ? null : pulumi.Output.create<int>(map['latestRevision'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      propertiesFileContent: map['propertiesFileContent'] == null ? null : pulumi.Output.create<String>(map['propertiesFileContent'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

