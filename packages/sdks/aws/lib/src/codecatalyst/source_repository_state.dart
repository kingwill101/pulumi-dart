// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering SourceRepository resources.
class SourceRepositoryState {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  final pulumi.Input<String>? description;
  /// The name of the source repository. For more information about name requirements, see [Quotas for source repositories](https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html).
  final pulumi.Input<String>? name;
  /// The name of the project in the CodeCatalyst space.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? projectName;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the CodeCatalyst space.
  final pulumi.Input<String>? spaceName;

  /// Creates a new [SourceRepositoryState].
  /// [description] The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  /// [name] The name of the source repository. For more information about name requirements, see [Quotas for source repositories](https://docs.aws.amazon.com/codecatalyst/latest/userguide/source-quotas.html).
  /// [projectName] The name of the project in the CodeCatalyst space.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceName] The name of the CodeCatalyst space.
  SourceRepositoryState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectName,
    pulumi.Output<String>? region,
    pulumi.Output<String>? spaceName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectName = pulumi.Input.asOptionalInput<String>(projectName),
      region = pulumi.Input.asOptionalInput<String>(region),
      spaceName = pulumi.Input.asOptionalInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': ?name,
      'projectName': ?projectName,
      'region': ?region,
      'spaceName': ?spaceName,
    };
  }

  factory SourceRepositoryState.fromMap(Map<String, dynamic> map) {
    return SourceRepositoryState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectName: map['projectName'] == null ? null : pulumi.Output.create<String>(map['projectName'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      spaceName: map['spaceName'] == null ? null : pulumi.Output.create<String>(map['spaceName'] as String),
    );
  }
}

