// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ActionResponse {
  /// The type of action.
  final pulumi.Input<String?>? type;

  /// Creates a new [ActionResponse].
  /// [type] The type of action.
  const ActionResponse({
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
    };
  }

  factory ActionResponse.fromMap(Map<String, dynamic> map) {
    return ActionResponse(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
