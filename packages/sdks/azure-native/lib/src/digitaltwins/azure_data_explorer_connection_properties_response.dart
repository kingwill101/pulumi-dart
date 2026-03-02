// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_reference_response.dart';

/// Properties of a time series database connection to Azure Data Explorer with data being sent via an EventHub.
class AzureDataExplorerConnectionPropertiesResponse {
  /// The name of the Azure Data Explorer database.
  final pulumi.Input<String> adxDatabaseName;
  /// The URI of the Azure Data Explorer endpoint.
  final pulumi.Input<String> adxEndpointUri;
  /// The name of the Azure Data Explorer table used for recording relationship lifecycle events. The table will not be created if this property is left unspecified.
  final pulumi.Input<String>? adxRelationshipLifecycleEventsTableName;
  /// The resource ID of the Azure Data Explorer cluster.
  final pulumi.Input<String> adxResourceId;
  /// The name of the Azure Data Explorer table used for storing updates to properties of twins and relationships. Defaults to AdtPropertyEvents.
  final pulumi.Input<String>? adxTableName;
  /// The name of the Azure Data Explorer table used for recording twin lifecycle events. The table will not be created if this property is left unspecified.
  final pulumi.Input<String>? adxTwinLifecycleEventsTableName;
  /// The type of time series connection resource.
  /// Expected value is 'AzureDataExplorer'.
  final pulumi.Input<String> connectionType;
  /// The EventHub consumer group to use when ADX reads from EventHub. Defaults to $Default.
  final pulumi.Input<String>? eventHubConsumerGroup;
  /// The URL of the EventHub namespace for identity-based authentication. It must include the protocol sb://
  final pulumi.Input<String> eventHubEndpointUri;
  /// The EventHub name in the EventHub namespace for identity-based authentication.
  final pulumi.Input<String> eventHubEntityPath;
  /// The resource ID of the EventHub namespace.
  final pulumi.Input<String> eventHubNamespaceResourceId;
  /// Managed identity properties for the time series database connection resource.
  final pulumi.Input<ManagedIdentityReferenceResponse>? identity;
  /// The provisioning state.
  final pulumi.Input<String> provisioningState;
  /// Specifies whether or not to record twin / relationship property and item removals, including removals of indexed or keyed values (such as map entries, array elements, etc.). This feature is de-activated unless explicitly set to 'true'. Setting this property to 'true' will generate an additional column in the property events table in ADX.
  final pulumi.Input<String>? recordPropertyAndItemRemovals;

  /// Creates a new [AzureDataExplorerConnectionPropertiesResponse].
  /// [adxDatabaseName] The name of the Azure Data Explorer database.
  /// [adxEndpointUri] The URI of the Azure Data Explorer endpoint.
  /// [adxRelationshipLifecycleEventsTableName] The name of the Azure Data Explorer table used for recording relationship lifecycle events. The table will not be created if this property is left unspecified.
  /// [adxResourceId] The resource ID of the Azure Data Explorer cluster.
  /// [adxTableName] The name of the Azure Data Explorer table used for storing updates to properties of twins and relationships. Defaults to AdtPropertyEvents.
  /// [adxTwinLifecycleEventsTableName] The name of the Azure Data Explorer table used for recording twin lifecycle events. The table will not be created if this property is left unspecified.
  /// [connectionType] The type of time series connection resource.
  /// [eventHubConsumerGroup] The EventHub consumer group to use when ADX reads from EventHub. Defaults to $Default.
  /// [eventHubEndpointUri] The URL of the EventHub namespace for identity-based authentication. It must include the protocol sb://
  /// [eventHubEntityPath] The EventHub name in the EventHub namespace for identity-based authentication.
  /// [eventHubNamespaceResourceId] The resource ID of the EventHub namespace.
  /// [identity] Managed identity properties for the time series database connection resource.
  /// [provisioningState] The provisioning state.
  /// [recordPropertyAndItemRemovals] Specifies whether or not to record twin / relationship property and item removals, including removals of indexed or keyed values (such as map entries, array elements, etc.). This feature is de-activated unless explicitly set to 'true'. Setting this property to 'true' will generate an additional column in the property events table in ADX.
  AzureDataExplorerConnectionPropertiesResponse({
    required this.adxDatabaseName,
    required this.adxEndpointUri,
    this.adxRelationshipLifecycleEventsTableName,
    required this.adxResourceId,
    this.adxTableName,
    this.adxTwinLifecycleEventsTableName,
    required this.connectionType,
    this.eventHubConsumerGroup,
    required this.eventHubEndpointUri,
    required this.eventHubEntityPath,
    required this.eventHubNamespaceResourceId,
    this.identity,
    required this.provisioningState,
    this.recordPropertyAndItemRemovals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'adxDatabaseName': adxDatabaseName,
      'adxEndpointUri': adxEndpointUri,
      'adxRelationshipLifecycleEventsTableName': ?adxRelationshipLifecycleEventsTableName,
      'adxResourceId': adxResourceId,
      'adxTableName': ?adxTableName,
      'adxTwinLifecycleEventsTableName': ?adxTwinLifecycleEventsTableName,
      'connectionType': connectionType,
      'eventHubConsumerGroup': ?eventHubConsumerGroup,
      'eventHubEndpointUri': eventHubEndpointUri,
      'eventHubEntityPath': eventHubEntityPath,
      'eventHubNamespaceResourceId': eventHubNamespaceResourceId,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityReferenceResponse, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'recordPropertyAndItemRemovals': ?recordPropertyAndItemRemovals,
    };
  }

  factory AzureDataExplorerConnectionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AzureDataExplorerConnectionPropertiesResponse(
      adxDatabaseName: (map['adxDatabaseName'] as String).input(),
      adxEndpointUri: (map['adxEndpointUri'] as String).input(),
      adxRelationshipLifecycleEventsTableName: map['adxRelationshipLifecycleEventsTableName'] == null ? null : (map['adxRelationshipLifecycleEventsTableName']! as String).input(),
      adxResourceId: (map['adxResourceId'] as String).input(),
      adxTableName: map['adxTableName'] == null ? null : (map['adxTableName']! as String).input(),
      adxTwinLifecycleEventsTableName: map['adxTwinLifecycleEventsTableName'] == null ? null : (map['adxTwinLifecycleEventsTableName']! as String).input(),
      connectionType: (map['connectionType'] as String).input(),
      eventHubConsumerGroup: map['eventHubConsumerGroup'] == null ? null : (map['eventHubConsumerGroup']! as String).input(),
      eventHubEndpointUri: (map['eventHubEndpointUri'] as String).input(),
      eventHubEntityPath: (map['eventHubEntityPath'] as String).input(),
      eventHubNamespaceResourceId: (map['eventHubNamespaceResourceId'] as String).input(),
      identity: map['identity'] == null ? null : (ManagedIdentityReferenceResponse.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      recordPropertyAndItemRemovals: map['recordPropertyAndItemRemovals'] == null ? null : (map['recordPropertyAndItemRemovals']! as String).input(),
    );
  }
}

