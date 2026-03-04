// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// TCPSocketAction describes an action based on opening a socket
class TCPSocketAction {
  /// The type of the action to take to perform the health check.
  /// Expected value is 'TCPSocketAction'.
  final pulumi.Input<String> type;

  /// Creates a new [TCPSocketAction].
  /// [type] The type of the action to take to perform the health check.
  TCPSocketAction({required this.type});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type};
  }

  factory TCPSocketAction.fromMap(Map<String, dynamic> map) {
    return TCPSocketAction(type: pulumi.Input.fromValue(map['type'] as String));
  }
}
