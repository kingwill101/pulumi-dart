// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering WorkerConfiguration resources.
class WorkerConfigurationState {
  /// the ARN of the worker configuration.
  final pulumi.Input<String?>? arn;
  /// A summary description of the worker configuration.
  final pulumi.Input<String?>? description;
  /// an ID of the latest successfully created revision of the worker configuration.
  final pulumi.Input<int?>? latestRevision;
  /// The name of the worker configuration.
  final pulumi.Input<String?>? name;
  /// Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? propertiesFileContent;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [WorkerConfigurationState].
  /// [arn] the ARN of the worker configuration.
  /// [description] A summary description of the worker configuration.
  /// [latestRevision] an ID of the latest successfully created revision of the worker configuration.
  /// [name] The name of the worker configuration.
  /// [propertiesFileContent] Contents of connect-distributed.properties file. The value can be either base64 encoded or in raw format.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const WorkerConfigurationState({
    this.arn,
    this.description,
    this.latestRevision,
    this.name,
    this.propertiesFileContent,
    this.region,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      latestRevision: (() { final guardedValue = map['latestRevision']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      propertiesFileContent: (() { final guardedValue = map['propertiesFileContent']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
