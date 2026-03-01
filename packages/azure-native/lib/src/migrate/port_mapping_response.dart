// ignore_for_file: unused_element, unnecessary_cast


/// WebApplication port mapping.
class PortMappingResponse {
  /// Gets or sets the External Port.
  final int? externalPort;
  /// Gets or sets the Internal Port.
  final int? internalPort;

  /// Creates a new [PortMappingResponse].
  /// [externalPort] Gets or sets the External Port.
  /// [internalPort] Gets or sets the Internal Port.
  PortMappingResponse({
    this.externalPort,
    this.internalPort,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'externalPort': ?externalPort,
      'internalPort': ?internalPort,
    };
  }

  factory PortMappingResponse.fromMap(Map<String, dynamic> map) {
    return PortMappingResponse(
      externalPort: map['externalPort'] == null ? null : map['externalPort'] as int,
      internalPort: map['internalPort'] == null ? null : map['internalPort'] as int,
    );
  }
}

