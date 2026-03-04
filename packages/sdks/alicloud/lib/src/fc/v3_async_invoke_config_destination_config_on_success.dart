// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3AsyncInvokeConfigDestinationConfigOnSuccess {
  /// Asynchronous call target Resource Descriptor
  final pulumi.Input<String>? destination;

  /// Creates a new [V3AsyncInvokeConfigDestinationConfigOnSuccess].
  /// [destination] Asynchronous call target Resource Descriptor
  V3AsyncInvokeConfigDestinationConfigOnSuccess({this.destination});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'destination': ?destination};
  }

  factory V3AsyncInvokeConfigDestinationConfigOnSuccess.fromMap(
    Map<String, dynamic> map,
  ) {
    return V3AsyncInvokeConfigDestinationConfigOnSuccess(
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
