// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_beyondcorp_appconnections_v1alpha_app_connection_gateway_type.dart';

/// Gateway represents a user facing component that serves as an entrance to enable connectivity.
class GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway {
  /// AppGateway name in following format: `projects/{project_id}/locations/{location_id}/appgateways/{gateway_id}`
  final String appGateway;

  /// The type of hosting used by the gateway.
  final GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType type;

  GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway({
    required this.appGateway,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['appGateway'] = appGateway;
    map['type'] = type.value;
    return map;
  }

  factory GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGateway(
      appGateway: map['appGateway'] as String,
      type: GoogleCloudBeyondcorpAppconnectionsV1alphaAppConnectionGatewayType
          .fromValue(map['type'] as String),
    );
  }
}
