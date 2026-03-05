// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenersListenerPortRange {
  /// The initial listening port used to receive requests and forward them to terminal nodes.
  final pulumi.Input<int> fromPort;
  /// The end listening port used to receive requests and forward them to terminal nodes.
  final pulumi.Input<int> toPort;

  /// Creates a new [GetListenersListenerPortRange].
  /// [fromPort] The initial listening port used to receive requests and forward them to terminal nodes.
  /// [toPort] The end listening port used to receive requests and forward them to terminal nodes.
  GetListenersListenerPortRange({
    required this.fromPort,
    required this.toPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fromPort': fromPort,
      'toPort': toPort,
    };
  }

  factory GetListenersListenerPortRange.fromMap(Map<String, dynamic> map) {
    return GetListenersListenerPortRange(
      fromPort: pulumi.Input.fromValue(map['fromPort'] as int),
      toPort: pulumi.Input.fromValue(map['toPort'] as int),
    );
  }
}

