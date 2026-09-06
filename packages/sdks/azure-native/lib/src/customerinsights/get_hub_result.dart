// ignore_for_file: unused_element, unnecessary_cast

import 'hub_billing_info_format_response.dart';

/// Result data returned by getHub.
class GetHubResult {
  /// API endpoint URL of the hub.
  final String? apiEndpoint;
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Billing settings of the hub.
  final HubBillingInfoFormatResponse? hubBillingInfo;
  /// Resource ID.
  final String? id;
  /// Resource location.
  final String? location;
  /// Resource name.
  final String? name;
  /// Provisioning state of the hub.
  final String? provisioningState;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The bit flags for enabled hub features. Bit 0 is set to 1 indicates graph is enabled, or disabled if set to 0. Bit 1 is set to 1 indicates the hub is disabled, or enabled if set to 0.
  final int? tenantFeatures;
  /// Resource type.
  final String? type;
  /// Web endpoint URL of the hub.
  final String? webEndpoint;

  /// Creates a new [GetHubResult].
  /// [apiEndpoint] API endpoint URL of the hub.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [hubBillingInfo] Billing settings of the hub.
  /// [id] Resource ID.
  /// [location] Resource location.
  /// [name] Resource name.
  /// [provisioningState] Provisioning state of the hub.
  /// [tags] Resource tags.
  /// [tenantFeatures] The bit flags for enabled hub features. Bit 0 is set to 1 indicates graph is enabled, or disabled if set to 0. Bit 1 is set to 1 indicates the hub is disabled, or enabled if set to 0.
  /// [type] Resource type.
  /// [webEndpoint] Web endpoint URL of the hub.
  const GetHubResult({
    this.apiEndpoint,
    this.azureApiVersion,
    this.hubBillingInfo,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.tags,
    this.tenantFeatures,
    this.type,
    this.webEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiEndpoint': ?apiEndpoint,
      'azureApiVersion': ?azureApiVersion,
      'hubBillingInfo': ?hubBillingInfo?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'tags': ?tags,
      'tenantFeatures': ?tenantFeatures,
      'type': ?type,
      'webEndpoint': ?webEndpoint,
    };
  }

  factory GetHubResult.fromMap(Map<String, dynamic> map) {
    return GetHubResult(
      apiEndpoint: (() { final guardedValue = map['apiEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hubBillingInfo: (() { final guardedValue = map['hubBillingInfo']; if (guardedValue == null) return null; return HubBillingInfoFormatResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      tenantFeatures: (() { final guardedValue = map['tenantFeatures']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      webEndpoint: (() { final guardedValue = map['webEndpoint']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
