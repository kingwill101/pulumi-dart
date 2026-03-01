// ignore_for_file: unused_element, unnecessary_cast

import 'connected_partner_resource_properties_response.dart';

/// Connected Partner Resources List Format
class ConnectedPartnerResourcesListFormatResponse {
  /// Connected Partner Resource Properties
  final ConnectedPartnerResourcePropertiesResponse? properties;

  /// Creates a new [ConnectedPartnerResourcesListFormatResponse].
  /// [properties] Connected Partner Resource Properties
  ConnectedPartnerResourcesListFormatResponse({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?properties == null ? null : properties!.toMap(),
    };
  }

  factory ConnectedPartnerResourcesListFormatResponse.fromMap(Map<String, dynamic> map) {
    return ConnectedPartnerResourcesListFormatResponse(
      properties: map['properties'] == null ? null : ConnectedPartnerResourcePropertiesResponse.fromMap((map['properties'] as Map).cast<String, dynamic>()),
    );
  }
}

