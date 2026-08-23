// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPartnerRegistration.
class GetPartnerRegistrationResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified identifier of the resource.
  final String id;
  /// Location of the resource.
  final String location;
  /// Name of the resource.
  final String name;
  /// The immutableId of the corresponding partner registration.
  /// Note: This property is marked for deprecation and is not supported in any future GA API version
  final String? partnerRegistrationImmutableId;
  /// Provisioning state of the partner registration.
  final String provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// Type of the resource.
  final String type;

  /// Creates a new [GetPartnerRegistrationResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified identifier of the resource.
  /// [location] Location of the resource.
  /// [name] Name of the resource.
  /// [partnerRegistrationImmutableId] The immutableId of the corresponding partner registration.
  /// [provisioningState] Provisioning state of the partner registration.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [tags] Tags of the resource.
  /// [type] Type of the resource.
  const GetPartnerRegistrationResult({
    required this.azureApiVersion,
    required this.id,
    required this.location,
    required this.name,
    this.partnerRegistrationImmutableId,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'location': location,
      'name': name,
      'partnerRegistrationImmutableId': ?partnerRegistrationImmutableId,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetPartnerRegistrationResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerRegistrationResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      name: map['name'] as String,
      partnerRegistrationImmutableId: (() { final guardedValue = map['partnerRegistrationImmutableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
    );
  }
}
