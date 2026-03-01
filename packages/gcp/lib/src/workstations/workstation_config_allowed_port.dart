// ignore_for_file: unused_element, unnecessary_cast

class WorkstationConfigAllowedPort {
  /// Starting port number for the current range of ports. Valid ports are 22, 80, and ports within the range 1024-65535.
  final int? first;

  /// Ending port number for the current range of ports. Valid ports are 22, 80, and ports within the range 1024-65535.
  final int? last;

  /// Creates a new [WorkstationConfigAllowedPort].
  /// [first] Starting port number for the current range of ports. Valid ports are 22, 80, and ports within the range 1024-65535.
  /// [last] Ending port number for the current range of ports. Valid ports are 22, 80, and ports within the range 1024-65535.
  WorkstationConfigAllowedPort({this.first, this.last});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'first': ?first, 'last': ?last};
  }

  factory WorkstationConfigAllowedPort.fromMap(Map<String, dynamic> map) {
    return WorkstationConfigAllowedPort(
      first: map['first'] == null ? null : map['first'] as int,
      last: map['last'] == null ? null : map['last'] as int,
    );
  }
}
