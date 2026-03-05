// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity_reference.dart';

/// Properties of a time series database connection to Azure Data Explorer with data being sent via an EventHub.
class AzureDataExplorerConnectionProperties {
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
  final pulumi.Input<ManagedIdentityReference>? identity;
  /// Specifies whether or not to record twin / relationship property and item removals, including removals of indexed or keyed values (such as map entries, array elements, etc.). This feature is de-activated unless explicitly set to 'true'. Setting this property to 'true' will generate an additional column in the property events table in ADX.
  final pulumi.Input<String>? recordPropertyAndItemRemovals;

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
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentityReference, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'recordPropertyAndItemRemovals': ?recordPropertyAndItemRemovals,
    };
  }

  factory AzureDataExplorerConnectionProperties.fromMap(Map<String, dynamic> map) {
    return AzureDataExplorerConnectionProperties(
      adxDatabaseName: pulumi.Input.fromValue(map['adxDatabaseName'] as String),
      adxEndpointUri: pulumi.Input.fromValue(map['adxEndpointUri'] as String),
      adxRelationshipLifecycleEventsTableName: (() { final guardedValue = map['adxRelationshipLifecycleEventsTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adxResourceId: pulumi.Input.fromValue(map['adxResourceId'] as String),
      adxTableName: (() { final guardedValue = map['adxTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      adxTwinLifecycleEventsTableName: (() { final guardedValue = map['adxTwinLifecycleEventsTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      connectionType: pulumi.Input.fromValue(map['connectionType'] as String),
      eventHubConsumerGroup: (() { final guardedValue = map['eventHubConsumerGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubEndpointUri: pulumi.Input.fromValue(map['eventHubEndpointUri'] as String),
      eventHubEntityPath: pulumi.Input.fromValue(map['eventHubEntityPath'] as String),
      eventHubNamespaceResourceId: pulumi.Input.fromValue(map['eventHubNamespaceResourceId'] as String),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ManagedIdentityReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      recordPropertyAndItemRemovals: (() { final guardedValue = map['recordPropertyAndItemRemovals']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

