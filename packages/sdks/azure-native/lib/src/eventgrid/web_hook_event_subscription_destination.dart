// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dynamic_delivery_attribute_mapping.dart';

/// Information about the webhook destination for an event subscription.
class WebHookEventSubscriptionDestination {
  /// The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests.
  final pulumi.Input<String>? azureActiveDirectoryApplicationIdOrUri;
  /// The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests.
  final pulumi.Input<String>? azureActiveDirectoryTenantId;
  /// Delivery attribute details.
  final pulumi.Input<List<DynamicDeliveryAttributeMapping>>? deliveryAttributeMappings;
  /// Type of the endpoint for the event subscription destination.
  /// Expected value is 'WebHook'.
  final pulumi.Input<String> endpointType;
  /// The URL that represents the endpoint of the destination of an event subscription.
  final pulumi.Input<String>? endpointUrl;
  /// Maximum number of events per batch.
  final pulumi.Input<int>? maxEventsPerBatch;
  /// Minimum TLS version that should be supported by webhook endpoint
  final pulumi.Input<String>? minimumTlsVersionAllowed;
  /// Preferred batch size in Kilobytes.
  final pulumi.Input<int>? preferredBatchSizeInKilobytes;

  /// Creates a new [WebHookEventSubscriptionDestination].
  /// [azureActiveDirectoryApplicationIdOrUri] The Azure Active Directory Application ID or URI to get the access token that will be included as the bearer token in delivery requests.
  /// [azureActiveDirectoryTenantId] The Azure Active Directory Tenant ID to get the access token that will be included as the bearer token in delivery requests.
  /// [deliveryAttributeMappings] Delivery attribute details.
  /// [endpointType] Type of the endpoint for the event subscription destination.
  /// [endpointUrl] The URL that represents the endpoint of the destination of an event subscription.
  /// [maxEventsPerBatch] Maximum number of events per batch.
  /// [minimumTlsVersionAllowed] Minimum TLS version that should be supported by webhook endpoint
  /// [preferredBatchSizeInKilobytes] Preferred batch size in Kilobytes.
  WebHookEventSubscriptionDestination({
    this.azureActiveDirectoryApplicationIdOrUri,
    this.azureActiveDirectoryTenantId,
    this.deliveryAttributeMappings,
    required this.endpointType,
    this.endpointUrl,
    this.maxEventsPerBatch,
    this.minimumTlsVersionAllowed,
    this.preferredBatchSizeInKilobytes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureActiveDirectoryApplicationIdOrUri': ?azureActiveDirectoryApplicationIdOrUri,
      'azureActiveDirectoryTenantId': ?azureActiveDirectoryTenantId,
      'deliveryAttributeMappings': ?pulumi.Input.mapOptionalInputValue<List<DynamicDeliveryAttributeMapping>, List<Map<String, dynamic>>>(deliveryAttributeMappings, (value) => pulumi.Input.encodeList<DynamicDeliveryAttributeMapping, Map<String, dynamic>>(value, (value) => value.toMap())),
      'endpointType': endpointType,
      'endpointUrl': ?endpointUrl,
      'maxEventsPerBatch': ?maxEventsPerBatch,
      'minimumTlsVersionAllowed': ?minimumTlsVersionAllowed,
      'preferredBatchSizeInKilobytes': ?preferredBatchSizeInKilobytes,
    };
  }

  factory WebHookEventSubscriptionDestination.fromMap(Map<String, dynamic> map) {
    return WebHookEventSubscriptionDestination(
      azureActiveDirectoryApplicationIdOrUri: (() { final guardedValue = map['azureActiveDirectoryApplicationIdOrUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      azureActiveDirectoryTenantId: (() { final guardedValue = map['azureActiveDirectoryTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deliveryAttributeMappings: (() { final guardedValue = map['deliveryAttributeMappings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DynamicDeliveryAttributeMapping>(guardedValue, (value) => DynamicDeliveryAttributeMapping.fromMap((value as Map).cast<String, dynamic>()))); })(),
      endpointType: pulumi.Input.fromValue(map['endpointType'] as String),
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxEventsPerBatch: (() { final guardedValue = map['maxEventsPerBatch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      minimumTlsVersionAllowed: (() { final guardedValue = map['minimumTlsVersionAllowed']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      preferredBatchSizeInKilobytes: (() { final guardedValue = map['preferredBatchSizeInKilobytes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

