// ignore_for_file: unused_element, unnecessary_cast


class FunctionAsyncInvokeConfigDestinationConfigOnFailure {
  /// Alicloud Resource Name (ARN) of the destination resource. See the [Developer Guide](https://www.alibabacloud.com/help/doc-detail/181866.htm) for acceptable resource types and associated RAM permissions.
  final String destination;

  /// Creates a new [FunctionAsyncInvokeConfigDestinationConfigOnFailure].
  /// [destination] Alicloud Resource Name (ARN) of the destination resource. See the [Developer Guide](https://www.alibabacloud.com/help/doc-detail/181866.htm) for acceptable resource types and associated RAM permissions.
  FunctionAsyncInvokeConfigDestinationConfigOnFailure({
    required this.destination,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': destination,
    };
  }

  factory FunctionAsyncInvokeConfigDestinationConfigOnFailure.fromMap(Map<String, dynamic> map) {
    return FunctionAsyncInvokeConfigDestinationConfigOnFailure(
      destination: map['destination'] as String,
    );
  }
}

