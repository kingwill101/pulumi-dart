// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Project resources.
class ProjectState {
  /// Comment of the datahub project. It cannot be longer than 255 characters.
  final pulumi.Input<String>? comment;
  /// Create time of the datahub project. It is a human-readable string rather than 64-bits UTC.
  final pulumi.Input<String>? createTime;
  /// Last modify time of the datahub project. It is the same as *create_time* at the beginning. It is also a human-readable string rather than 64-bits UTC.
  final pulumi.Input<String>? lastModifyTime;
  /// The name of the datahub project. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  final pulumi.Input<String>? name;

  /// Creates a new [ProjectState].
  /// [comment] Comment of the datahub project. It cannot be longer than 255 characters.
  /// [createTime] Create time of the datahub project. It is a human-readable string rather than 64-bits UTC.
  /// [lastModifyTime] Last modify time of the datahub project. It is the same as *create_time* at the beginning. It is also a human-readable string rather than 64-bits UTC.
  /// [name] The name of the datahub project. Its length is limited to 3-32 and only characters such as letters, digits and '_' are allowed. It is case-insensitive.
  ProjectState({
    pulumi.Output<String>? comment,
    pulumi.Output<String>? createTime,
    pulumi.Output<String>? lastModifyTime,
    pulumi.Output<String>? name,
  }) :
      comment = pulumi.Input.asOptionalInput<String>(comment),
      createTime = pulumi.Input.asOptionalInput<String>(createTime),
      lastModifyTime = pulumi.Input.asOptionalInput<String>(lastModifyTime),
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'comment': ?comment,
      'createTime': ?createTime,
      'lastModifyTime': ?lastModifyTime,
      'name': ?name,
    };
  }

  factory ProjectState.fromMap(Map<String, dynamic> map) {
    return ProjectState(
      comment: map['comment'] == null ? null : pulumi.Output.create<String>(map['comment'] as String),
      createTime: map['createTime'] == null ? null : pulumi.Output.create<String>(map['createTime'] as String),
      lastModifyTime: map['lastModifyTime'] == null ? null : pulumi.Output.create<String>(map['lastModifyTime'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

