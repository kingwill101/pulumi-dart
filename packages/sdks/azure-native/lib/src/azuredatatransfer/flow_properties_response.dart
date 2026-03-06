// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'api_flow_options_response.dart';
import 'messaging_options_response.dart';
import 'schema_response.dart';
import 'selected_resource_response.dart';
import 'stream_source_addresses_response.dart';

/// Properties of flow
class FlowPropertiesResponse {
  /// The API Flow configuration options for Azure Data Transfer API Flow type.
  final pulumi.Input<ApiFlowOptionsResponse>? apiFlowOptions;
  /// The connection associated with this flow
  final pulumi.Input<SelectedResourceResponse>? connection;
  /// Event Hub Consumer Group
  final pulumi.Input<String>? consumerGroup;
  /// The URI to the customer managed key for this flow
  final pulumi.Input<String>? customerManagedKeyVaultUri;
  /// Type of data to transfer via the flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  final pulumi.Input<String>? dataType;
  /// The destination endpoint ports of the stream
  final pulumi.Input<List<double>>? destinationEndpointPorts;
  /// The destination endpoints of the stream
  final pulumi.Input<List<String>>? destinationEndpoints;
  /// Event Hub ID
  final pulumi.Input<String>? eventHubId;
  /// Dataflow GUID associated with this flow
  final pulumi.Input<String> flowId;
  /// The flow type for this flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  final pulumi.Input<String>? flowType;
  /// Force disablement status of the current flow
  final pulumi.Input<List<String>> forceDisabledStatus;
  /// URI to a Key Vault Secret containing a SAS token.
  final pulumi.Input<String>? keyVaultUri;
  /// Link status of the current flow
  final pulumi.Input<String> linkStatus;
  /// Resource ID of the linked flow
  final pulumi.Input<String> linkedFlowId;
  /// The messaging options for this flow
  final pulumi.Input<MessagingOptionsResponse>? messagingOptions;
  /// The passphrase used for SRT streams
  final pulumi.Input<String>? passphrase;
  /// The policies for this flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  final pulumi.Input<List<String>>? policies;
  /// Provisioning state of the flow
  final pulumi.Input<String> provisioningState;
  /// The selected schema for this flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  final pulumi.Input<SchemaResponse>? schema;
  /// Service Bus Queue ID
  final pulumi.Input<String>? serviceBusQueueId;
  /// The source IP address and CIDR ranges of the stream
  final pulumi.Input<StreamSourceAddressesResponse>? sourceAddresses;
  /// Status of the current flow
  final pulumi.Input<String>? status;
  /// Storage Account ID
  final pulumi.Input<String>? storageAccountId;
  /// Storage Account
  final pulumi.Input<String>? storageAccountName;
  /// Storage Container Name
  final pulumi.Input<String>? storageContainerName;
  /// Storage Table Name
  final pulumi.Input<String>? storageTableName;
  /// The flow stream identifier
  final pulumi.Input<String>? streamId;
  /// The latency of the stream in milliseconds
  final pulumi.Input<double>? streamLatency;
  /// The protocol of the stream
  final pulumi.Input<String>? streamProtocol;

  /// Creates a new [FlowPropertiesResponse].
  /// [apiFlowOptions] The API Flow configuration options for Azure Data Transfer API Flow type.
  /// [connection] The connection associated with this flow
  /// [consumerGroup] Event Hub Consumer Group
  /// [customerManagedKeyVaultUri] The URI to the customer managed key for this flow
  /// [dataType] Type of data to transfer via the flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  /// [destinationEndpointPorts] The destination endpoint ports of the stream
  /// [destinationEndpoints] The destination endpoints of the stream
  /// [eventHubId] Event Hub ID
  /// [flowId] Dataflow GUID associated with this flow
  /// [flowType] The flow type for this flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  /// [forceDisabledStatus] Force disablement status of the current flow
  /// [keyVaultUri] URI to a Key Vault Secret containing a SAS token.
  /// [linkStatus] Link status of the current flow
  /// [linkedFlowId] Resource ID of the linked flow
  /// [messagingOptions] The messaging options for this flow
  /// [passphrase] The passphrase used for SRT streams
  /// [policies] The policies for this flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  /// [provisioningState] Provisioning state of the flow
  /// [schema] The selected schema for this flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  /// [serviceBusQueueId] Service Bus Queue ID
  /// [sourceAddresses] The source IP address and CIDR ranges of the stream
  /// [status] Status of the current flow
  /// [storageAccountId] Storage Account ID
  /// [storageAccountName] Storage Account
  /// [storageContainerName] Storage Container Name
  /// [storageTableName] Storage Table Name
  /// [streamId] The flow stream identifier
  /// [streamLatency] The latency of the stream in milliseconds
  /// [streamProtocol] The protocol of the stream
  const FlowPropertiesResponse({
    this.apiFlowOptions,
    this.connection,
    this.consumerGroup,
    this.customerManagedKeyVaultUri,
    this.dataType,
    this.destinationEndpointPorts,
    this.destinationEndpoints,
    this.eventHubId,
    required this.flowId,
    this.flowType,
    required this.forceDisabledStatus,
    this.keyVaultUri,
    required this.linkStatus,
    required this.linkedFlowId,
    this.messagingOptions,
    this.passphrase,
    this.policies,
    required this.provisioningState,
    this.schema,
    this.serviceBusQueueId,
    this.sourceAddresses,
    this.status,
    this.storageAccountId,
    this.storageAccountName,
    this.storageContainerName,
    this.storageTableName,
    this.streamId,
    this.streamLatency,
    this.streamProtocol,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiFlowOptions': ?pulumi.Input.mapOptionalInputValue<ApiFlowOptionsResponse, Map<String, dynamic>>(apiFlowOptions, (value) => value.toMap()),
      'connection': ?pulumi.Input.mapOptionalInputValue<SelectedResourceResponse, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'consumerGroup': ?consumerGroup,
      'customerManagedKeyVaultUri': ?customerManagedKeyVaultUri,
      'dataType': ?dataType,
      'destinationEndpointPorts': ?destinationEndpointPorts,
      'destinationEndpoints': ?destinationEndpoints,
      'eventHubId': ?eventHubId,
      'flowId': flowId,
      'flowType': ?flowType,
      'forceDisabledStatus': forceDisabledStatus,
      'keyVaultUri': ?keyVaultUri,
      'linkStatus': linkStatus,
      'linkedFlowId': linkedFlowId,
      'messagingOptions': ?pulumi.Input.mapOptionalInputValue<MessagingOptionsResponse, Map<String, dynamic>>(messagingOptions, (value) => value.toMap()),
      'passphrase': ?passphrase,
      'policies': ?policies,
      'provisioningState': provisioningState,
      'schema': ?pulumi.Input.mapOptionalInputValue<SchemaResponse, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'serviceBusQueueId': ?serviceBusQueueId,
      'sourceAddresses': ?pulumi.Input.mapOptionalInputValue<StreamSourceAddressesResponse, Map<String, dynamic>>(sourceAddresses, (value) => value.toMap()),
      'status': ?status,
      'storageAccountId': ?storageAccountId,
      'storageAccountName': ?storageAccountName,
      'storageContainerName': ?storageContainerName,
      'storageTableName': ?storageTableName,
      'streamId': ?streamId,
      'streamLatency': ?streamLatency,
      'streamProtocol': ?streamProtocol,
    };
  }

  factory FlowPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return FlowPropertiesResponse(
      apiFlowOptions: (() { final guardedValue = map['apiFlowOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ApiFlowOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connection: (() { final guardedValue = map['connection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelectedResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      consumerGroup: (() { final guardedValue = map['consumerGroup']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      customerManagedKeyVaultUri: (() { final guardedValue = map['customerManagedKeyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointPorts: (() { final guardedValue = map['destinationEndpointPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      destinationEndpoints: (() { final guardedValue = map['destinationEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      eventHubId: (() { final guardedValue = map['eventHubId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flowId: pulumi.Input.fromValue(map['flowId'] as String),
      flowType: (() { final guardedValue = map['flowType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      forceDisabledStatus: pulumi.Input.fromValue((map['forceDisabledStatus'] as List).cast<String>()),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkStatus: pulumi.Input.fromValue(map['linkStatus'] as String),
      linkedFlowId: pulumi.Input.fromValue(map['linkedFlowId'] as String),
      messagingOptions: (() { final guardedValue = map['messagingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MessagingOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      passphrase: (() { final guardedValue = map['passphrase']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policies: (() { final guardedValue = map['policies']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      schema: (() { final guardedValue = map['schema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SchemaResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serviceBusQueueId: (() { final guardedValue = map['serviceBusQueueId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      sourceAddresses: (() { final guardedValue = map['sourceAddresses']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StreamSourceAddressesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountId: (() { final guardedValue = map['storageAccountId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageAccountName: (() { final guardedValue = map['storageAccountName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageContainerName: (() { final guardedValue = map['storageContainerName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageTableName: (() { final guardedValue = map['storageTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamId: (() { final guardedValue = map['streamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamLatency: (() { final guardedValue = map['streamLatency']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      streamProtocol: (() { final guardedValue = map['streamProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

