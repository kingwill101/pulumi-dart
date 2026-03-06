// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetServiceMeshesMeshEndpoint {
  /// The internal address of the API Server.
  final pulumi.Input<String> intranetApiServerEndpoint;
  /// The internal address of the Istio Pilot.
  final pulumi.Input<String> intranetPilotEndpoint;
  /// The public address of the API Server.
  final pulumi.Input<String> publicApiServerEndpoint;
  /// The public address of the Istio Pilot.
  final pulumi.Input<String> publicPilotEndpoint;

  /// Creates a new [GetServiceMeshesMeshEndpoint].
  /// [intranetApiServerEndpoint] The internal address of the API Server.
  /// [intranetPilotEndpoint] The internal address of the Istio Pilot.
  /// [publicApiServerEndpoint] The public address of the API Server.
  /// [publicPilotEndpoint] The public address of the Istio Pilot.
  const GetServiceMeshesMeshEndpoint({
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
      intranetApiServerEndpoint: pulumi.Input.fromValue(map['intranetApiServerEndpoint'] as String),
      intranetPilotEndpoint: pulumi.Input.fromValue(map['intranetPilotEndpoint'] as String),
      publicApiServerEndpoint: pulumi.Input.fromValue(map['publicApiServerEndpoint'] as String),
      publicPilotEndpoint: pulumi.Input.fromValue(map['publicPilotEndpoint'] as String),
    );
  }
}

