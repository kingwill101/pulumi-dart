// ignore_for_file: unused_element, unnecessary_cast

import 'api_flow_options_response.dart';
import 'messaging_options_response.dart';
import 'schema_response.dart';
import 'selected_resource_response.dart';
import 'stream_source_addresses_response.dart';

/// Properties of flow
class FlowPropertiesResponse {
  /// The API Flow configuration options for Azure Data Transfer API Flow type.
  final ApiFlowOptionsResponse? apiFlowOptions;
  /// The connection associated with this flow
  final SelectedResourceResponse? connection;
  /// Event Hub Consumer Group
  final String? consumerGroup;
  /// The URI to the customer managed key for this flow
  final String? customerManagedKeyVaultUri;
  /// Type of data to transfer via the flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  final String? dataType;
  /// The destination endpoint ports of the stream
  final List<double>? destinationEndpointPorts;
  /// The destination endpoints of the stream
  final List<String>? destinationEndpoints;
  /// Event Hub ID
  final String? eventHubId;
  /// Dataflow GUID associated with this flow
  final String flowId;
  /// The flow type for this flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  final String? flowType;
  /// Force disablement status of the current flow
  final List<String> forceDisabledStatus;
  /// URI to a Key Vault Secret containing a SAS token.
  final String? keyVaultUri;
  /// Link status of the current flow
  final String linkStatus;
  /// Resource ID of the linked flow
  final String linkedFlowId;
  /// The messaging options for this flow
  final MessagingOptionsResponse? messagingOptions;
  /// The passphrase used for SRT streams
  final String? passphrase;
  /// The policies for this flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  final List<String>? policies;
  /// Provisioning state of the flow
  final String provisioningState;
  /// The selected schema for this flow. The property has reached end of life support starting version 2025-05-30-preview. Please create and use a FlowProfile resource instead.
  final SchemaResponse? schema;
  /// Service Bus Queue ID
  final String? serviceBusQueueId;
  /// The source IP address and CIDR ranges of the stream
  final StreamSourceAddressesResponse? sourceAddresses;
  /// Status of the current flow
  final String? status;
  /// Storage Account ID
  final String? storageAccountId;
  /// Storage Account
  final String? storageAccountName;
  /// Storage Container Name
  final String? storageContainerName;
  /// Storage Table Name
  final String? storageTableName;
  /// The flow stream identifier
  final String? streamId;
  /// The latency of the stream in milliseconds
  final double? streamLatency;
  /// The protocol of the stream
  final String? streamProtocol;

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
  FlowPropertiesResponse({
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
      'apiFlowOptions': ?apiFlowOptions == null ? null : apiFlowOptions!.toMap(),
      'connection': ?connection == null ? null : connection!.toMap(),
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
      'messagingOptions': ?messagingOptions == null ? null : messagingOptions!.toMap(),
      'passphrase': ?passphrase,
      'policies': ?policies,
      'provisioningState': provisioningState,
      'schema': ?schema == null ? null : schema!.toMap(),
      'serviceBusQueueId': ?serviceBusQueueId,
      'sourceAddresses': ?sourceAddresses == null ? null : sourceAddresses!.toMap(),
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
      apiFlowOptions: map['apiFlowOptions'] == null ? null : ApiFlowOptionsResponse.fromMap((map['apiFlowOptions'] as Map).cast<String, dynamic>()),
      connection: map['connection'] == null ? null : SelectedResourceResponse.fromMap((map['connection'] as Map).cast<String, dynamic>()),
      consumerGroup: map['consumerGroup'] == null ? null : map['consumerGroup'] as String,
      customerManagedKeyVaultUri: map['customerManagedKeyVaultUri'] == null ? null : map['customerManagedKeyVaultUri'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      destinationEndpointPorts: map['destinationEndpointPorts'] == null ? null : (map['destinationEndpointPorts'] as List).cast<double>(),
      destinationEndpoints: map['destinationEndpoints'] == null ? null : (map['destinationEndpoints'] as List).cast<String>(),
      eventHubId: map['eventHubId'] == null ? null : map['eventHubId'] as String,
      flowId: map['flowId'] as String,
      flowType: map['flowType'] == null ? null : map['flowType'] as String,
      forceDisabledStatus: (map['forceDisabledStatus'] as List).cast<String>(),
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      linkStatus: map['linkStatus'] as String,
      linkedFlowId: map['linkedFlowId'] as String,
      messagingOptions: map['messagingOptions'] == null ? null : MessagingOptionsResponse.fromMap((map['messagingOptions'] as Map).cast<String, dynamic>()),
      passphrase: map['passphrase'] == null ? null : map['passphrase'] as String,
      policies: map['policies'] == null ? null : (map['policies'] as List).cast<String>(),
      provisioningState: map['provisioningState'] as String,
      schema: map['schema'] == null ? null : SchemaResponse.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      serviceBusQueueId: map['serviceBusQueueId'] == null ? null : map['serviceBusQueueId'] as String,
      sourceAddresses: map['sourceAddresses'] == null ? null : StreamSourceAddressesResponse.fromMap((map['sourceAddresses'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
      storageContainerName: map['storageContainerName'] == null ? null : map['storageContainerName'] as String,
      storageTableName: map['storageTableName'] == null ? null : map['storageTableName'] as String,
      streamId: map['streamId'] == null ? null : map['streamId'] as String,
      streamLatency: map['streamLatency'] == null ? null : map['streamLatency'] as double,
      streamProtocol: map['streamProtocol'] == null ? null : map['streamProtocol'] as String,
    );
  }
}

