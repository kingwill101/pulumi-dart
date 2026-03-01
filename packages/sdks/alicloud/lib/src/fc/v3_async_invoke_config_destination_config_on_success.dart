// ignore_for_file: unused_element, unnecessary_cast


class V3AsyncInvokeConfigDestinationConfigOnSuccess {
  /// Asynchronous call target Resource Descriptor
  final String? destination;

  /// Creates a new [V3AsyncInvokeConfigDestinationConfigOnSuccess].
  /// [destination] Asynchronous call target Resource Descriptor
  V3AsyncInvokeConfigDestinationConfigOnSuccess({
    this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
    };
  }

  factory V3AsyncInvokeConfigDestinationConfigOnSuccess.fromMap(Map<String, dynamic> map) {
    return V3AsyncInvokeConfigDestinationConfigOnSuccess(
      destination: map['destination'] == null ? null : map['destination'] as String,
    );
  }
}

