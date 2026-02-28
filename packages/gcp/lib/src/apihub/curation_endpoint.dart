// ignore_for_file: unused_element, unnecessary_cast

import 'curation_endpoint_application_integration_endpoint_details.dart';

class CurationEndpoint {
  /// The details of the Application Integration endpoint to be triggered for
  /// curation.
  /// Structure is documented below.
  final CurationEndpointApplicationIntegrationEndpointDetails
      applicationIntegrationEndpointDetails;

  /// Creates a new [CurationEndpoint].
  /// [applicationIntegrationEndpointDetails] The details of the Application Integration endpoint to be triggered for
  CurationEndpoint({
    required this.applicationIntegrationEndpointDetails,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationIntegrationEndpointDetails'] =
        applicationIntegrationEndpointDetails.toMap();
    return map;
  }

  factory CurationEndpoint.fromMap(Map<String, dynamic> map) {
    return CurationEndpoint(
      applicationIntegrationEndpointDetails:
          CurationEndpointApplicationIntegrationEndpointDetails.fromMap(
              (map['applicationIntegrationEndpointDetails'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
