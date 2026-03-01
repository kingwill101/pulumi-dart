// ignore_for_file: unused_element, unnecessary_cast


/// Definition of NetworkInterfaceCountRequest
class NetworkInterfaceCountRequest {
  /// The maximum number of network interfaces.
  final int? max;
  /// The minimum number of network interfaces.
  final int? min;

  /// Creates a new [NetworkInterfaceCountRequest].
  /// [max] The maximum number of network interfaces.
  /// [min] The minimum number of network interfaces.
  NetworkInterfaceCountRequest({
    this.max,
    this.min,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'max': ?max,
      'min': ?min,
    };
  }

  factory NetworkInterfaceCountRequest.fromMap(Map<String, dynamic> map) {
    return NetworkInterfaceCountRequest(
      max: map['max'] == null ? null : map['max'] as int,
      min: map['min'] == null ? null : map['min'] as int,
    );
  }
}

