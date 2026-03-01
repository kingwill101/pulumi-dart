// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NetworkInterfaceCountRequest
class NetworkInterfaceCountRequestResponse {
  /// The maximum number of network interfaces.
  final int? max;
  /// The minimum number of network interfaces.
  final int? min;

  /// Creates a new [NetworkInterfaceCountRequestResponse].
  /// [max] The maximum number of network interfaces.
  /// [min] The minimum number of network interfaces.
  NetworkInterfaceCountRequestResponse({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory NetworkInterfaceCountRequestResponse.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceCountRequestResponse(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

