// ignore_for_file: unused_element, unnecessary_cast

import 'partner_authorization_response.dart';
import 'system_data_response.dart';

/// Result data returned by getPartnerConfiguration.
class GetPartnerConfigurationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Location of the resource.
  final String? location;
  /// Name of the resource.
  final String name;
  /// The details of authorized partners.
  final PartnerAuthorizationResponse? partnerAuthorization;
  /// Provisioning state of the partner configuration.
  final String? provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetPartnerConfigurationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier of the resource.
  /// [location] Location of the resource.
  /// [name] Name of the resource.
  /// [partnerAuthorization] The details of authorized partners.
  /// [provisioningState] Provisioning state of the partner configuration.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [tags] Tags of the resource.
  /// [type] Type of the resource.
  GetPartnerConfigurationResult({
    required this.azureApiVersion,
    required this.id,
    this.location,
    required this.name,
    this.partnerAuthorization,
    this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': ?location,
      'name': name,
      'partnerAuthorization': ?partnerAuthorization == null ? null : partnerAuthorization!.toMap(),
      'provisioningState': ?provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPartnerConfigurationResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerConfigurationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      partnerAuthorization: map['partnerAuthorization'] == null ? null : PartnerAuthorizationResponse.fromMap((map['partnerAuthorization'] as Map).cast<String, dynamic>()),
      provisioningState: map['provisioningState'] == null ? null : map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

