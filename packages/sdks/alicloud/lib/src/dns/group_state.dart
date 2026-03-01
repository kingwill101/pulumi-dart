// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Group resources.
class GroupState {
  /// Name of the domain group.
  final pulumi.Input<String>? name;

  /// Creates a new [GroupState].
  /// [name] Name of the domain group.
  GroupState({
    pulumi.Output<String>? name,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory GroupState.fromMap(Map<String, dynamic> map) {
    return GroupState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

