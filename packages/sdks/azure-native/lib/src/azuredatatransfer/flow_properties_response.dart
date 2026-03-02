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
      apiFlowOptions: map['apiFlowOptions'] == null ? null : (ApiFlowOptionsResponse.fromMap((map['apiFlowOptions']! as Map).cast<String, dynamic>())).input(),
      connection: map['connection'] == null ? null : (SelectedResourceResponse.fromMap((map['connection']! as Map).cast<String, dynamic>())).input(),
      consumerGroup: map['consumerGroup'] == null ? null : (map['consumerGroup']! as String).input(),
      customerManagedKeyVaultUri: map['customerManagedKeyVaultUri'] == null ? null : (map['customerManagedKeyVaultUri']! as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      destinationEndpointPorts: map['destinationEndpointPorts'] == null ? null : ((map['destinationEndpointPorts']! as List).cast<double>()).input(),
      destinationEndpoints: map['destinationEndpoints'] == null ? null : ((map['destinationEndpoints']! as List).cast<String>()).input(),
      eventHubId: map['eventHubId'] == null ? null : (map['eventHubId']! as String).input(),
      flowId: (map['flowId'] as String).input(),
      flowType: map['flowType'] == null ? null : (map['flowType']! as String).input(),
      forceDisabledStatus: ((map['forceDisabledStatus'] as List).cast<String>()).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri']! as String).input(),
      linkStatus: (map['linkStatus'] as String).input(),
      linkedFlowId: (map['linkedFlowId'] as String).input(),
      messagingOptions: map['messagingOptions'] == null ? null : (MessagingOptionsResponse.fromMap((map['messagingOptions']! as Map).cast<String, dynamic>())).input(),
      passphrase: map['passphrase'] == null ? null : (map['passphrase']! as String).input(),
      policies: map['policies'] == null ? null : ((map['policies']! as List).cast<String>()).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      schema: map['schema'] == null ? null : (SchemaResponse.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      serviceBusQueueId: map['serviceBusQueueId'] == null ? null : (map['serviceBusQueueId']! as String).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : (StreamSourceAddressesResponse.fromMap((map['sourceAddresses']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId']! as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName']! as String).input(),
      storageContainerName: map['storageContainerName'] == null ? null : (map['storageContainerName']! as String).input(),
      storageTableName: map['storageTableName'] == null ? null : (map['storageTableName']! as String).input(),
      streamId: map['streamId'] == null ? null : (map['streamId']! as String).input(),
      streamLatency: map['streamLatency'] == null ? null : (map['streamLatency']! as double).input(),
      streamProtocol: map['streamProtocol'] == null ? null : (map['streamProtocol']! as String).input(),
    );
  }
}

