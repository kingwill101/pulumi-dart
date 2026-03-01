// ignore_for_file: unused_element, unnecessary_cast

import 'managed_identity_reference.dart';

/// Properties of a time series database connection to Azure Data Explorer with data being sent via an EventHub.
class AzureDataExplorerConnectionProperties {
  /// The name of the Azure Data Explorer database.
  final String adxDatabaseName;
  /// The URI of the Azure Data Explorer endpoint.
  final String adxEndpointUri;
  /// The name of the Azure Data Explorer table used for recording relationship lifecycle events. The table will not be created if this property is left unspecified.
  final String? adxRelationshipLifecycleEventsTableName;
  /// The resource ID of the Azure Data Explorer cluster.
  final String adxResourceId;
  /// The name of the Azure Data Explorer table used for storing updates to properties of twins and relationships. Defaults to AdtPropertyEvents.
  final String? adxTableName;
  /// The name of the Azure Data Explorer table used for recording twin lifecycle events. The table will not be created if this property is left unspecified.
  final String? adxTwinLifecycleEventsTableName;
  /// The type of time series connection resource.
  /// Expected value is 'AzureDataExplorer'.
  final String connectionType;
  /// The EventHub consumer group to use when ADX reads from EventHub. Defaults to $Default.
  final String? eventHubConsumerGroup;
  /// The URL of the EventHub namespace for identity-based authentication. It must include the protocol sb://
  final String eventHubEndpointUri;
  /// The EventHub name in the EventHub namespace for identity-based authentication.
  final String eventHubEntityPath;
  /// The resource ID of the EventHub namespace.
  final String eventHubNamespaceResourceId;
  /// Managed identity properties for the time series database connection resource.
  final ManagedIdentityReference? identity;
  /// Specifies whether or not to record twin / relationship property and item removals, including removals of indexed or keyed values (such as map entries, array elements, etc.). This feature is de-activated unless explicitly set to 'true'. Setting this property to 'true' will generate an additional column in the property events table in ADX.
  final String? recordPropertyAndItemRemovals;

  /// Creates a new [AzureDataExplorerConnectionProperties].
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
  /// [recordPropertyAndItemRemovals] Specifies whether or not to record twin / relationship property and item removals, including removals of indexed or keyed values (such as map entries, array elements, etc.). This feature is de-activated unless explicitly set to 'true'. Setting this property to 'true' will generate an additional column in the property events table in ADX.
  AzureDataExplorerConnectionProperties({
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
      'identity': ?identity == null ? null : identity!.toMap(),
      'recordPropertyAndItemRemovals': ?recordPropertyAndItemRemovals,
    };
  }

  factory AzureDataExplorerConnectionProperties.fromMap(Map<String, dynamic> map) {
    return AzureDataExplorerConnectionProperties(
      adxDatabaseName: map['adxDatabaseName'] as String,
      adxEndpointUri: map['adxEndpointUri'] as String,
      adxRelationshipLifecycleEventsTableName: map['adxRelationshipLifecycleEventsTableName'] == null ? null : map['adxRelationshipLifecycleEventsTableName'] as String,
      adxResourceId: map['adxResourceId'] as String,
      adxTableName: map['adxTableName'] == null ? null : map['adxTableName'] as String,
      adxTwinLifecycleEventsTableName: map['adxTwinLifecycleEventsTableName'] == null ? null : map['adxTwinLifecycleEventsTableName'] as String,
      connectionType: map['connectionType'] as String,
      eventHubConsumerGroup: map['eventHubConsumerGroup'] == null ? null : map['eventHubConsumerGroup'] as String,
      eventHubEndpointUri: map['eventHubEndpointUri'] as String,
      eventHubEntityPath: map['eventHubEntityPath'] as String,
      eventHubNamespaceResourceId: map['eventHubNamespaceResourceId'] as String,
      identity: map['identity'] == null ? null : ManagedIdentityReference.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      recordPropertyAndItemRemovals: map['recordPropertyAndItemRemovals'] == null ? null : map['recordPropertyAndItemRemovals'] as String,
    );
  }
}

