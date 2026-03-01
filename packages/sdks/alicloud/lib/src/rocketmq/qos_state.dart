// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Qos resources.
class QosState {
  /// The name of the QoS policy to be created. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  final pulumi.Input<String>? name;

  /// Creates a new [QosState].
  /// [name] The name of the QoS policy to be created. The name can contain 2 to 128 characters including a-z, A-Z, 0-9, periods, underlines, and hyphens. The name must start with an English letter, but cannot start with http:// or https://.
  QosState({
    pulumi.Output<String>? name,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory QosState.fromMap(Map<String, dynamic> map) {
    return QosState(
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
    );
  }
}

