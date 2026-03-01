// ignore_for_file: unused_element, unnecessary_cast


/// WebApplication port mapping.
class PortMapping {
  /// Gets or sets the External Port.
  final int? externalPort;
  /// Gets or sets the Internal Port.
  final int? internalPort;

  /// Creates a new [PortMapping].
  /// [externalPort] Gets or sets the External Port.
  /// [internalPort] Gets or sets the Internal Port.
  PortMapping({
    this.externalPort,
    this.internalPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalPort': ?externalPort,
      'internalPort': ?internalPort,
    };
  }

  factory PortMapping.fromMap(Map<String, dynamic> map) {
    return PortMapping(
      externalPort: map['externalPort'] == null ? null : map['externalPort'] as int,
      internalPort: map['internalPort'] == null ? null : map['internalPort'] as int,
    );
  }
}

