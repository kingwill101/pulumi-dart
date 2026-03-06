// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ServiceEnterprisePublic resources.
class ServiceEnterprisePublicState {
  /// The creation time of the resource.
  final pulumi.Input<String>? createTime;

  /// Creates a new [ServiceEnterprisePublicState].
  /// [createTime] The creation time of the resource.
  const ServiceEnterprisePublicState({
    this.createTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
    };
  }

  factory ServiceEnterprisePublicState.fromMap(Map<String, dynamic> map) {
    return ServiceEnterprisePublicState(
      createTime: (() { final guardedValue = map['createTime']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

