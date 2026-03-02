// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'messaging_options_response.dart';
import 'schema_response.dart';
import 'selected_resource_response.dart';
import 'stream_source_addresses_response.dart';
import 'system_data_response.dart';

/// Pending flow object
class PendingFlowResponse {
  /// The connection associated with this flow
  final pulumi.Input<SelectedResourceResponse>? connection;
  /// Connection ID of the pending flow.
  final pulumi.Input<String> connectionId;
  /// The URI to the customer managed key for this flow
  final pulumi.Input<String>? customerManagedKeyVaultUri;
  /// Transfer Storage Blobs or Tables
  final pulumi.Input<String>? dataType;
  /// The destination endpoint ports of the stream
  final pulumi.Input<List<double>>? destinationEndpointPorts;
  /// The destination endpoints of the stream
  final pulumi.Input<List<String>>? destinationEndpoints;
  /// Dataflow GUID associated with this flow
  final pulumi.Input<String> flowId;
  /// The flow type for this flow
  final pulumi.Input<String>? flowType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// AME, PME, or TORUS only! AKV Chain Containing SAS Token
  final pulumi.Input<String>? keyVaultUri;
  /// Link status of the current flow
  final pulumi.Input<String> linkStatus;
  /// Resource ID of the linked flow
  final pulumi.Input<String> linkedFlowId;
  /// The geo-location where the resource lives
  final pulumi.Input<String> location;
  /// The messaging options for this flow
  final pulumi.Input<MessagingOptionsResponse>? messagingOptions;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// The passphrase used for SRT streams
  final pulumi.Input<String>? passphrase;
  /// The policies for this flow
  final pulumi.Input<List<String>>? policies;
  /// Provisioning state of the flow
  final pulumi.Input<String> provisioningState;
  /// The selected schema for this flow
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
  /// The flow stream identifier
  final pulumi.Input<String>? streamId;
  /// The latency of the stream in milliseconds
  final pulumi.Input<double>? streamLatency;
  /// The protocol of the stream
  final pulumi.Input<String>? streamProtocol;
  /// Subscription ID of the pending flow.
  final pulumi.Input<String> subscriptionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final pulumi.Input<String> type;

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
      'connection': ?pulumi.Input.mapOptionalInputValue<SelectedResourceResponse, Map<String, dynamic>>(connection, (value) => value.toMap()),
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
      'messagingOptions': ?pulumi.Input.mapOptionalInputValue<MessagingOptionsResponse, Map<String, dynamic>>(messagingOptions, (value) => value.toMap()),
      'name': name,
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
      'streamId': ?streamId,
      'streamLatency': ?streamLatency,
      'streamProtocol': ?streamProtocol,
      'subscriptionId': subscriptionId,
      'systemData': pulumi.Input.mapInputValue<SystemDataResponse, Map<String, dynamic>>(systemData, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory PendingFlowResponse.fromMap(Map<String, dynamic> map) {
    return PendingFlowResponse(
      connection: map['connection'] == null ? null : (SelectedResourceResponse.fromMap((map['connection']! as Map).cast<String, dynamic>())).input(),
      connectionId: (map['connectionId'] as String).input(),
      customerManagedKeyVaultUri: map['customerManagedKeyVaultUri'] == null ? null : (map['customerManagedKeyVaultUri']! as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      destinationEndpointPorts: map['destinationEndpointPorts'] == null ? null : ((map['destinationEndpointPorts']! as List).cast<double>()).input(),
      destinationEndpoints: map['destinationEndpoints'] == null ? null : ((map['destinationEndpoints']! as List).cast<String>()).input(),
      flowId: (map['flowId'] as String).input(),
      flowType: map['flowType'] == null ? null : (map['flowType']! as String).input(),
      id: (map['id'] as String).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri']! as String).input(),
      linkStatus: (map['linkStatus'] as String).input(),
      linkedFlowId: (map['linkedFlowId'] as String).input(),
      location: (map['location'] as String).input(),
      messagingOptions: map['messagingOptions'] == null ? null : (MessagingOptionsResponse.fromMap((map['messagingOptions']! as Map).cast<String, dynamic>())).input(),
      name: (map['name'] as String).input(),
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
      streamId: map['streamId'] == null ? null : (map['streamId']! as String).input(),
      streamLatency: map['streamLatency'] == null ? null : (map['streamLatency']! as double).input(),
      streamProtocol: map['streamProtocol'] == null ? null : (map['streamProtocol']! as String).input(),
      subscriptionId: (map['subscriptionId'] as String).input(),
      systemData: (SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>())).input(),
      tags: map['tags'] == null ? null : ((map['tags']! as Map).cast<String, String>()).input(),
      type: (map['type'] as String).input(),
    );
  }
}

