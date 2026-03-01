// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'provider_resource_type_response.dart';

/// Resource provider information.
class ProviderResponse {
  /// The provider ID.
  final String id;
  /// The namespace of the resource provider.
  final String? namespace;
  /// The provider authorization consent state.
  final String? providerAuthorizationConsentState;
  /// The registration policy of the resource provider.
  final String registrationPolicy;
  /// The registration state of the resource provider.
  final String registrationState;
  /// The collection of provider resource types.
  final List<ProviderResourceTypeResponse> resourceTypes;

  /// Creates a new [ProviderResponse].
  /// [id] The provider ID.
  /// [namespace] The namespace of the resource provider.
  /// [providerAuthorizationConsentState] The provider authorization consent state.
  /// [registrationPolicy] The registration policy of the resource provider.
  /// [registrationState] The registration state of the resource provider.
  /// [resourceTypes] The collection of provider resource types.
  ProviderResponse({
    required this.id,
    this.namespace,
    this.providerAuthorizationConsentState,
    required this.registrationPolicy,
    required this.registrationState,
    required this.resourceTypes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'namespace': ?namespace,
      'providerAuthorizationConsentState': ?providerAuthorizationConsentState,
      'registrationPolicy': registrationPolicy,
      'registrationState': registrationState,
      'resourceTypes': pulumi.Input.encodeList<ProviderResourceTypeResponse, Map<String, dynamic>>(resourceTypes, (value) => value.toMap()),
    };
  }

  factory ProviderResponse.fromMap(Map<String, dynamic> map) {
    return ProviderResponse(
      id: map['id'] as String,
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
      providerAuthorizationConsentState: map['providerAuthorizationConsentState'] == null ? null : map['providerAuthorizationConsentState'] as String,
      registrationPolicy: map['registrationPolicy'] as String,
      registrationState: map['registrationState'] as String,
      resourceTypes: pulumi.Input.decodeList<ProviderResourceTypeResponse>(map['resourceTypes'], (value) => ProviderResourceTypeResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

