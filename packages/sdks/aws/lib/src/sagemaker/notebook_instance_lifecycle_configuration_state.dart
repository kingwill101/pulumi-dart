// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering NotebookInstanceLifecycleConfiguration resources.
class NotebookInstanceLifecycleConfigurationState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this lifecycle configuration.
  final pulumi.Input<String>? arn;
  /// The name of the lifecycle configuration (must be unique). If omitted, this provider will assign a random, unique name.
  final pulumi.Input<String>? name;
  /// A shell script (base64-encoded) that runs only once when the SageMaker AI Notebook Instance is created.
  final pulumi.Input<String>? onCreate;
  /// A shell script (base64-encoded) that runs every time the SageMaker AI Notebook Instance is started including the time it's created.
  final pulumi.Input<String>? onStart;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [NotebookInstanceLifecycleConfigurationState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this lifecycle configuration.
  /// [name] The name of the lifecycle configuration (must be unique). If omitted, this provider will assign a random, unique name.
  /// [onCreate] A shell script (base64-encoded) that runs only once when the SageMaker AI Notebook Instance is created.
  /// [onStart] A shell script (base64-encoded) that runs every time the SageMaker AI Notebook Instance is started including the time it's created.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  NotebookInstanceLifecycleConfigurationState({
    this.arn,
    this.name,
    this.onCreate,
    this.onStart,
    this.region,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'name': ?name,
      'onCreate': ?onCreate,
      'onStart': ?onStart,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory NotebookInstanceLifecycleConfigurationState.fromMap(Map<String, dynamic> map) {
    return NotebookInstanceLifecycleConfigurationState(
      arn: map['arn'] == null ? null : ((map['arn'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      onCreate: map['onCreate'] == null ? null : ((map['onCreate'] as String).input()).input(),
      onStart: map['onStart'] == null ? null : ((map['onStart'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      tagsAll: map['tagsAll'] == null ? null : (((map['tagsAll'] as Map).cast<String, String>()).input()).input(),
    );
  }
}

