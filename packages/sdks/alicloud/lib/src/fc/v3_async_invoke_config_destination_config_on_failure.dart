// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class V3AsyncInvokeConfigDestinationConfigOnFailure {
  /// Asynchronous call target Resource Descriptor
  final pulumi.Input<String>? destination;

  /// Creates a new [V3AsyncInvokeConfigDestinationConfigOnFailure].
  /// [destination] Asynchronous call target Resource Descriptor
  V3AsyncInvokeConfigDestinationConfigOnFailure({this.destination});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'destination': ?destination};
  }

  factory V3AsyncInvokeConfigDestinationConfigOnFailure.fromMap(
    Map<String, dynamic> map,
  ) {
    return V3AsyncInvokeConfigDestinationConfigOnFailure(
      destination: (() {
        final guardedValue = map['destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
