// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cors_rules_response.dart';
import 'encryption_response.dart';
import 'linked_resource_response.dart';
import 'maps_account_properties_response_locations.dart';

/// Additional Maps account properties
class MapsAccountPropertiesResponse {
  /// Specifies CORS rules for the Blob service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Blob service.
  final pulumi.Input<CorsRulesResponse>? cors;
  /// Allows toggle functionality on Azure Policy to disable Azure Maps local authentication support. This will disable Shared Keys and Shared Access Signature Token authentication from any usage.
  final pulumi.Input<bool>? disableLocalAuth;
  /// All encryption configuration for a resource.
  final pulumi.Input<EncryptionResponse>? encryption;
  /// The array of associated resources to the Maps account. Linked resource in the array cannot individually update, you must update all linked resources in the array together. These resources may be used on operations on the Azure Maps REST API. Access is controlled by the Maps Account Managed Identity(s) permissions to those resource(s).
  final pulumi.Input<List<LinkedResourceResponse>>? linkedResources;
  /// List of additional data processing regions for the Maps Account, which may result in requests being processed in another geography. Some features or results may be restricted to specific regions. By default, Maps REST APIs process requests according to the account location or the [geographic scope](https://learn.microsoft.com/azure/azure-maps/geographic-scope).
  final pulumi.Input<List<MapsAccountPropertiesResponseLocations>>? locations;
  /// The provisioning state of the Maps account resource, Account updates can only be performed on terminal states. Terminal states: `Succeeded` and `Failed`
  final pulumi.Input<String> provisioningState;
  /// A unique identifier for the Maps Account
  final pulumi.Input<String> uniqueId;

  /// Creates a new [MapsAccountPropertiesResponse].
  /// [cors] Specifies CORS rules for the Blob service. You can include up to five CorsRule elements in the request. If no CorsRule elements are included in the request body, all CORS rules will be deleted, and CORS will be disabled for the Blob service.
  /// [disableLocalAuth] Allows toggle functionality on Azure Policy to disable Azure Maps local authentication support. This will disable Shared Keys and Shared Access Signature Token authentication from any usage.
  /// [encryption] All encryption configuration for a resource.
  /// [linkedResources] The array of associated resources to the Maps account. Linked resource in the array cannot individually update, you must update all linked resources in the array together. These resources may be used on operations on the Azure Maps REST API. Access is controlled by the Maps Account Managed Identity(s) permissions to those resource(s).
  /// [locations] List of additional data processing regions for the Maps Account, which may result in requests being processed in another geography. Some features or results may be restricted to specific regions. By default, Maps REST APIs process requests according to the account location or the [geographic scope](https://learn.microsoft.com/azure/azure-maps/geographic-scope).
  /// [provisioningState] The provisioning state of the Maps account resource, Account updates can only be performed on terminal states. Terminal states: `Succeeded` and `Failed`
  /// [uniqueId] A unique identifier for the Maps Account
  MapsAccountPropertiesResponse({
    this.cors,
    this.disableLocalAuth,
    this.encryption,
    this.linkedResources,
    this.locations,
    required this.provisioningState,
    required this.uniqueId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cors': ?pulumi.Input.mapOptionalInputValue<CorsRulesResponse, Map<String, dynamic>>(cors, (value) => value.toMap()),
      'disableLocalAuth': ?disableLocalAuth,
      'encryption': ?pulumi.Input.mapOptionalInputValue<EncryptionResponse, Map<String, dynamic>>(encryption, (value) => value.toMap()),
      'linkedResources': ?pulumi.Input.mapOptionalInputValue<List<LinkedResourceResponse>, List<Map<String, dynamic>>>(linkedResources, (value) => pulumi.Input.encodeList<LinkedResourceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'locations': ?pulumi.Input.mapOptionalInputValue<List<MapsAccountPropertiesResponseLocations>, List<Map<String, dynamic>>>(locations, (value) => pulumi.Input.encodeList<MapsAccountPropertiesResponseLocations, Map<String, dynamic>>(value, (value) => value.toMap())),
      'provisioningState': provisioningState,
      'uniqueId': uniqueId,
    };
  }

  factory MapsAccountPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return MapsAccountPropertiesResponse(
      cors: (() { final guardedValue = map['cors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CorsRulesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      disableLocalAuth: (() { final guardedValue = map['disableLocalAuth']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      encryption: (() { final guardedValue = map['encryption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EncryptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      linkedResources: (() { final guardedValue = map['linkedResources']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<LinkedResourceResponse>(guardedValue, (value) => LinkedResourceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      locations: (() { final guardedValue = map['locations']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<MapsAccountPropertiesResponseLocations>(guardedValue, (value) => MapsAccountPropertiesResponseLocations.fromMap((value as Map).cast<String, dynamic>()))); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      uniqueId: pulumi.Input.fromValue(map['uniqueId'] as String),
    );
  }
}

