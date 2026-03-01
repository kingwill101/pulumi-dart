// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  final pulumi.Input<String>? description;
  /// The friendly name of the project that will be displayed to users.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? displayName;
  /// The name of the project in the space.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The name of the space.
  final pulumi.Input<String>? spaceName;

  /// Creates a new [ProjectState].
  /// [description] The description of the project. This description will be displayed to all users of the project. We recommend providing a brief description of the project and its intended purpose.
  /// [displayName] The friendly name of the project that will be displayed to users.
  /// [name] The name of the project in the space.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [spaceName] The name of the space.
  ProjectState({
    pulumi.Output<String>? description,
    pulumi.Output<String>? displayName,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<String>? spaceName,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      spaceName = pulumi.Input.asOptionalInput<String>(spaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'displayName': ?displayName,
      'name': ?name,
      'region': ?region,
      'spaceName': ?spaceName,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      displayName: map['displayName'] == null ? null : pulumi.Output.create<String>(map['displayName'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      spaceName: map['spaceName'] == null ? null : pulumi.Output.create<String>(map['spaceName'] as String),
    );
  }
}

