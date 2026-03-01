// ignore_for_file: unused_element, unnecessary_cast


/// Properties of a network port.
class Port {
  /// Backend port of the target virtual machine.
  final int? backendPort;
  /// Protocol type of the port.
  final String? transportProtocol;

  /// Creates a new [Port].
  /// [backendPort] Backend port of the target virtual machine.
  /// [transportProtocol] Protocol type of the port.
  Port({
    this.backendPort,
    this.transportProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendPort': ?backendPort,
      'transportProtocol': ?transportProtocol,
    };
  }

  factory Port.fromMap(Map<String, dynamic> map) {
    return Port(
      backendPort: map['backendPort'] == null ? null : map['backendPort'] as int,
      transportProtocol: map['transportProtocol'] == null ? null : map['transportProtocol'] as String,
    );
  }
}

