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
  final pulumi.Input<SelectedResourceResponse?>? connection;
  /// Connection ID of the pending flow.
  final pulumi.Input<String> connectionId;
  /// The URI to the customer managed key for this flow
  final pulumi.Input<String?>? customerManagedKeyVaultUri;
  /// Transfer Storage Blobs or Tables
  final pulumi.Input<String?>? dataType;
  /// The destination endpoint ports of the stream
  final pulumi.Input<List<double>?>? destinationEndpointPorts;
  /// The destination endpoints of the stream
  final pulumi.Input<List<String>?>? destinationEndpoints;
  /// Dataflow GUID associated with this flow
  final pulumi.Input<String> flowId;
  /// The flow type for this flow
  final pulumi.Input<String?>? flowType;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final pulumi.Input<String> id;
  /// AME, PME, or TORUS only! AKV Chain Containing SAS Token
  final pulumi.Input<String?>? keyVaultUri;
  /// Link status of the current flow
  final pulumi.Input<String> linkStatus;
  /// Resource ID of the linked flow
  final pulumi.Input<String> linkedFlowId;
  /// The geo-location where the resource lives
  final pulumi.Input<String> location;
  /// The messaging options for this flow
  final pulumi.Input<MessagingOptionsResponse?>? messagingOptions;
  /// The name of the resource
  final pulumi.Input<String> name;
  /// The passphrase used for SRT streams
  final pulumi.Input<String?>? passphrase;
  /// The policies for this flow
  final pulumi.Input<List<String>?>? policies;
  /// Provisioning state of the flow
  final pulumi.Input<String> provisioningState;
  /// The selected schema for this flow
  final pulumi.Input<SchemaResponse?>? schema;
  /// Service Bus Queue ID
  final pulumi.Input<String?>? serviceBusQueueId;
  /// The source IP address and CIDR ranges of the stream
  final pulumi.Input<StreamSourceAddressesResponse?>? sourceAddresses;
  /// Status of the current flow
  final pulumi.Input<String?>? status;
  /// Storage Account ID
  final pulumi.Input<String?>? storageAccountId;
  /// Storage Account
  final pulumi.Input<String?>? storageAccountName;
  /// Storage Container Name
  final pulumi.Input<String?>? storageContainerName;
  /// The flow stream identifier
  final pulumi.Input<String?>? streamId;
  /// The latency of the stream in milliseconds
  final pulumi.Input<double?>? streamLatency;
  /// The protocol of the stream
  final pulumi.Input<String?>? streamProtocol;
  /// Subscription ID of the pending flow.
  final pulumi.Input<String> subscriptionId;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final pulumi.Input<SystemDataResponse> systemData;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;
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
  const PendingFlowResponse({
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
      connection: (() { final guardedValue = map['connection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SelectedResourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      connectionId: pulumi.Input.fromValue(map['connectionId'] as String),
      customerManagedKeyVaultUri: (() { final guardedValue = map['customerManagedKeyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataType: (() { final guardedValue = map['dataType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationEndpointPorts: (() { final guardedValue = map['destinationEndpointPorts']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<double>()); })(),
      destinationEndpoints: (() { final guardedValue = map['destinationEndpoints']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      flowId: pulumi.Input.fromValue(map['flowId'] as String),
      flowType: (() { final guardedValue = map['flowType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      id: pulumi.Input.fromValue(map['id'] as String),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      linkStatus: pulumi.Input.fromValue(map['linkStatus'] as String),
      linkedFlowId: pulumi.Input.fromValue(map['linkedFlowId'] as String),
      location: pulumi.Input.fromValue(map['location'] as String),
      messagingOptions: (() { final guardedValue = map['messagingOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(MessagingOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
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
      streamId: (() { final guardedValue = map['streamId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamLatency: (() { final guardedValue = map['streamLatency']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      streamProtocol: (() { final guardedValue = map['streamProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriptionId: pulumi.Input.fromValue(map['subscriptionId'] as String),
      systemData: pulumi.Input.fromValue(SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>())),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
