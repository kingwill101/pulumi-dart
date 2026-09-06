// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getPartnerDestination.
class GetPartnerDestinationResult {
  /// Activation state of the partner destination.
  final String? activationState;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Endpoint Base URL of the partner destination
  final String? endpointBaseUrl;
  /// Endpoint context associated with this partner destination.
  final String? endpointServiceContext;
  /// Expiration time of the partner destination. If this timer expires and the partner destination was never activated,
  /// the partner destination and corresponding channel are deleted.
  final String? expirationTimeIfNotActivatedUtc;
  /// Fully qualified identifier of the resource.
  final String? id;
  /// Location of the resource.
  final String? location;
  /// Context or helpful message that can be used during the approval process.
  final String? messageForActivation;
  /// Name of the resource.
  final String? name;
  /// The immutable Id of the corresponding partner registration.
  final String? partnerRegistrationImmutableId;
  /// Provisioning state of the partner destination.
  final String? provisioningState;
  /// The system metadata relating to the Event Grid resource.
  final SystemDataResponse? systemData;
  /// Tags of the resource.
  final Map<String, String>? tags;
  /// Type of the resource.
  final String? type;

  /// Creates a new [GetPartnerDestinationResult].
  /// [activationState] Activation state of the partner destination.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [endpointBaseUrl] Endpoint Base URL of the partner destination
  /// [endpointServiceContext] Endpoint context associated with this partner destination.
  /// [expirationTimeIfNotActivatedUtc] Expiration time of the partner destination. If this timer expires and the partner destination was never activated,
  /// [id] Fully qualified identifier of the resource.
  /// [location] Location of the resource.
  /// [messageForActivation] Context or helpful message that can be used during the approval process.
  /// [name] Name of the resource.
  /// [partnerRegistrationImmutableId] The immutable Id of the corresponding partner registration.
  /// [provisioningState] Provisioning state of the partner destination.
  /// [systemData] The system metadata relating to the Event Grid resource.
  /// [tags] Tags of the resource.
  /// [type] Type of the resource.
  const GetPartnerDestinationResult({
    this.activationState,
    this.azureApiVersion,
    this.endpointBaseUrl,
    this.endpointServiceContext,
    this.expirationTimeIfNotActivatedUtc,
    this.id,
    this.location,
    this.messageForActivation,
    this.name,
    this.partnerRegistrationImmutableId,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationState': ?activationState,
      'azureApiVersion': ?azureApiVersion,
      'endpointBaseUrl': ?endpointBaseUrl,
      'endpointServiceContext': ?endpointServiceContext,
      'expirationTimeIfNotActivatedUtc': ?expirationTimeIfNotActivatedUtc,
      'id': ?id,
      'location': ?location,
      'messageForActivation': ?messageForActivation,
      'name': ?name,
      'partnerRegistrationImmutableId': ?partnerRegistrationImmutableId,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
    };
  }

  factory GetPartnerDestinationResult.fromMap(Map<String, dynamic> map) {
    return GetPartnerDestinationResult(
      activationState: (() { final guardedValue = map['activationState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointBaseUrl: (() { final guardedValue = map['endpointBaseUrl']; if (guardedValue == null) return null; return guardedValue as String; })(),
      endpointServiceContext: (() { final guardedValue = map['endpointServiceContext']; if (guardedValue == null) return null; return guardedValue as String; })(),
      expirationTimeIfNotActivatedUtc: (() { final guardedValue = map['expirationTimeIfNotActivatedUtc']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      messageForActivation: (() { final guardedValue = map['messageForActivation']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      partnerRegistrationImmutableId: (() { final guardedValue = map['partnerRegistrationImmutableId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
