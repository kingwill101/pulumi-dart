// ignore_for_file: unused_element, unnecessary_cast

import 'messaging_options_response.dart';
import 'schema_response.dart';
import 'selected_resource_response.dart';
import 'stream_source_addresses_response.dart';
import 'system_data_response.dart';

/// Pending flow object
class PendingFlowResponse {
  /// The connection associated with this flow
  final SelectedResourceResponse? connection;
  /// Connection ID of the pending flow.
  final String connectionId;
  /// The URI to the customer managed key for this flow
  final String? customerManagedKeyVaultUri;
  /// Transfer Storage Blobs or Tables
  final String? dataType;
  /// The destination endpoint ports of the stream
  final List<double>? destinationEndpointPorts;
  /// The destination endpoints of the stream
  final List<String>? destinationEndpoints;
  /// Dataflow GUID associated with this flow
  final String flowId;
  /// The flow type for this flow
  final String? flowType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// AME, PME, or TORUS only! AKV Chain Containing SAS Token
  final String? keyVaultUri;
  /// Link status of the current flow
  final String linkStatus;
  /// Resource ID of the linked flow
  final String linkedFlowId;
  /// The geo-location where the resource lives
  final String location;
  /// The messaging options for this flow
  final MessagingOptionsResponse? messagingOptions;
  /// The name of the resource
  final String name;
  /// The passphrase used for SRT streams
  final String? passphrase;
  /// The policies for this flow
  final List<String>? policies;
  /// Provisioning state of the flow
  final String provisioningState;
  /// The selected schema for this flow
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
  /// The flow stream identifier
  final String? streamId;
  /// The latency of the stream in milliseconds
  final double? streamLatency;
  /// The protocol of the stream
  final String? streamProtocol;
  /// Subscription ID of the pending flow.
  final String subscriptionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [PendingFlowResponse].
  /// [connection] The connection associated with this flow
  /// [connectionId] Connection ID of the pending flow.
  /// [customerManagedKeyVaultUri] The URI to the customer managed key for this flow
  /// [dataType] Transfer Storage Blobs or Tables
  /// [destinationEndpointPorts] The destination endpoint ports of the stream
  /// [destinationEndpoints] The destination endpoints of the stream
  /// [flowId] Dataflow GUID associated with this flow
  /// [flowType] The flow type for this flow
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [keyVaultUri] AME, PME, or TORUS only! AKV Chain Containing SAS Token
  /// [linkStatus] Link status of the current flow
  /// [linkedFlowId] Resource ID of the linked flow
  /// [location] The geo-location where the resource lives
  /// [messagingOptions] The messaging options for this flow
  /// [name] The name of the resource
  /// [passphrase] The passphrase used for SRT streams
  /// [policies] The policies for this flow
  /// [provisioningState] Provisioning state of the flow
  /// [schema] The selected schema for this flow
  /// [serviceBusQueueId] Service Bus Queue ID
  /// [sourceAddresses] The source IP address and CIDR ranges of the stream
  /// [status] Status of the current flow
  /// [storageAccountId] Storage Account ID
  /// [storageAccountName] Storage Account
  /// [storageContainerName] Storage Container Name
  /// [streamId] The flow stream identifier
  /// [streamLatency] The latency of the stream in milliseconds
  /// [streamProtocol] The protocol of the stream
  /// [subscriptionId] Subscription ID of the pending flow.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  PendingFlowResponse({
    this.connection,
    required this.connectionId,
    this.customerManagedKeyVaultUri,
    this.dataType,
    this.destinationEndpointPorts,
    this.destinationEndpoints,
    required this.flowId,
    this.flowType,
    required this.id,
    this.keyVaultUri,
    required this.linkStatus,
    required this.linkedFlowId,
    required this.location,
    this.messagingOptions,
    required this.name,
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
    this.streamId,
    this.streamLatency,
    this.streamProtocol,
    required this.subscriptionId,
    required this.systemData,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection == null ? null : connection!.toMap(),
      'connectionId': connectionId,
      'customerManagedKeyVaultUri': ?customerManagedKeyVaultUri,
      'dataType': ?dataType,
      'destinationEndpointPorts': ?destinationEndpointPorts,
      'destinationEndpoints': ?destinationEndpoints,
      'flowId': flowId,
      'flowType': ?flowType,
      'id': id,
      'keyVaultUri': ?keyVaultUri,
      'linkStatus': linkStatus,
      'linkedFlowId': linkedFlowId,
      'location': location,
      'messagingOptions': ?messagingOptions == null ? null : messagingOptions!.toMap(),
      'name': name,
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
      'streamId': ?streamId,
      'streamLatency': ?streamLatency,
      'streamProtocol': ?streamProtocol,
      'subscriptionId': subscriptionId,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
    };
  }

  factory PendingFlowResponse.fromMap(Map<String, dynamic> map) {
    return PendingFlowResponse(
      connection: map['connection'] == null ? null : SelectedResourceResponse.fromMap((map['connection'] as Map).cast<String, dynamic>()),
      connectionId: map['connectionId'] as String,
      customerManagedKeyVaultUri: map['customerManagedKeyVaultUri'] == null ? null : map['customerManagedKeyVaultUri'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      destinationEndpointPorts: map['destinationEndpointPorts'] == null ? null : (map['destinationEndpointPorts'] as List).cast<double>(),
      destinationEndpoints: map['destinationEndpoints'] == null ? null : (map['destinationEndpoints'] as List).cast<String>(),
      flowId: map['flowId'] as String,
      flowType: map['flowType'] == null ? null : map['flowType'] as String,
      id: map['id'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      linkStatus: map['linkStatus'] as String,
      linkedFlowId: map['linkedFlowId'] as String,
      location: map['location'] as String,
      messagingOptions: map['messagingOptions'] == null ? null : MessagingOptionsResponse.fromMap((map['messagingOptions'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
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
      streamId: map['streamId'] == null ? null : map['streamId'] as String,
      streamLatency: map['streamLatency'] == null ? null : map['streamLatency'] as double,
      streamProtocol: map['streamProtocol'] == null ? null : map['streamProtocol'] as String,
      subscriptionId: map['subscriptionId'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

