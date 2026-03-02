// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceBasicPublic resources.
class ServiceBasicPublicState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;

  /// Creates a new [ServiceBasicPublicState].
  /// [createTime] The creation time of the resource.
  ServiceBasicPublicState({
    this.createTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
    };
  }

  factory ServiceBasicPublicState.fromMap(Map<String, dynamic> map) {
    return ServiceBasicPublicState(
      createTime: map['createTime'] == null ? null : (map['createTime']! as String).input(),
    );
  }
}

