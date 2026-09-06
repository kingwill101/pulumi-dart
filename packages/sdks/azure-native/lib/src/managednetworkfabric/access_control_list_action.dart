// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Action that need to performed.
class AccessControlListAction {
  /// Name of the counter block to get match count information.
  final pulumi.Input<String?>? counterName;
  /// Type of actions that can be performed.
  final pulumi.Input<dynamic>? type;

  /// Creates a new [AccessControlListAction].
  /// [counterName] Name of the counter block to get match count information.
  /// [type] Type of actions that can be performed.
  const AccessControlListAction({
    this.counterName,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'counterName': ?counterName,
      'type': ?type,
    };
  }

  factory AccessControlListAction.fromMap(Map<String, dynamic> map) {
    return AccessControlListAction(
      counterName: (() { final guardedValue = map['counterName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
