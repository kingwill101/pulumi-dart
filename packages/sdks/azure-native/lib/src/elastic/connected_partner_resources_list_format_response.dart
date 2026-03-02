// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'connected_partner_resource_properties_response.dart';

/// Connected Partner Resources List Format
class ConnectedPartnerResourcesListFormatResponse {
  /// Connected Partner Resource Properties
  final pulumi.Input<ConnectedPartnerResourcePropertiesResponse>? properties;

  /// Creates a new [ConnectedPartnerResourcesListFormatResponse].
  /// [properties] Connected Partner Resource Properties
  ConnectedPartnerResourcesListFormatResponse({
    this.properties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'properties': ?pulumi.Input.mapOptionalInputValue<ConnectedPartnerResourcePropertiesResponse, Map<String, dynamic>>(properties, (value) => value.toMap()),
    };
  }

  factory ConnectedPartnerResourcesListFormatResponse.fromMap(Map<String, dynamic> map) {
    return ConnectedPartnerResourcesListFormatResponse(
      properties: map['properties'] == null ? null : (ConnectedPartnerResourcePropertiesResponse.fromMap((map['properties']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

