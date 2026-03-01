// ignore_for_file: unused_element, unnecessary_cast


class GetServiceMeshesMeshEndpoint {
  /// The internal address of the API Server.
  final String intranetApiServerEndpoint;
  /// The internal address of the Istio Pilot.
  final String intranetPilotEndpoint;
  /// The public address of the API Server.
  final String publicApiServerEndpoint;
  /// The public address of the Istio Pilot.
  final String publicPilotEndpoint;

  /// Creates a new [GetServiceMeshesMeshEndpoint].
  /// [intranetApiServerEndpoint] The internal address of the API Server.
  /// [intranetPilotEndpoint] The internal address of the Istio Pilot.
  /// [publicApiServerEndpoint] The public address of the API Server.
  /// [publicPilotEndpoint] The public address of the Istio Pilot.
  GetServiceMeshesMeshEndpoint({
    required this.intranetApiServerEndpoint,
    required this.intranetPilotEndpoint,
    required this.publicApiServerEndpoint,
    required this.publicPilotEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'intranetApiServerEndpoint': intranetApiServerEndpoint,
      'intranetPilotEndpoint': intranetPilotEndpoint,
      'publicApiServerEndpoint': publicApiServerEndpoint,
      'publicPilotEndpoint': publicPilotEndpoint,
    };
  }

  factory GetServiceMeshesMeshEndpoint.fromMap(Map<String, dynamic> map) {
    return GetServiceMeshesMeshEndpoint(
      intranetApiServerEndpoint: map['intranetApiServerEndpoint'] as String,
      intranetPilotEndpoint: map['intranetPilotEndpoint'] as String,
      publicApiServerEndpoint: map['publicApiServerEndpoint'] as String,
      publicPilotEndpoint: map['publicPilotEndpoint'] as String,
    );
  }
}

