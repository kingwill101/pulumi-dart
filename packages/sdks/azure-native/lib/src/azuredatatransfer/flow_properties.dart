// ignore_for_file: unused_element, unnecessary_cast

import 'messaging_options.dart';
import 'schema.dart';
import 'selected_resource.dart';
import 'stream_source_addresses.dart';

/// Properties of flow
class FlowProperties {
  /// The connection associated with this flow
  final SelectedResource? connection;
  /// The URI to the customer managed key for this flow
  final String? customerManagedKeyVaultUri;
  /// Transfer Storage Blobs or Tables
  final String? dataType;
  /// The destination endpoint ports of the stream
  final List<double>? destinationEndpointPorts;
  /// The destination endpoints of the stream
  final List<String>? destinationEndpoints;
  /// The flow type for this flow
  final String? flowType;
  /// AME, PME, or TORUS only! AKV Chain Containing SAS Token
  final String? keyVaultUri;
  /// The messaging options for this flow
  final MessagingOptions? messagingOptions;
  /// The passphrase used for SRT streams
  final String? passphrase;
  /// The policies for this flow
  final List<String>? policies;
  /// The selected schema for this flow
  final Schema? schema;
  /// Service Bus Queue ID
  final String? serviceBusQueueId;
  /// The source IP address and CIDR ranges of the stream
  final StreamSourceAddresses? sourceAddresses;
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

  /// Creates a new [FlowProperties].
  /// [connection] The connection associated with this flow
  /// [customerManagedKeyVaultUri] The URI to the customer managed key for this flow
  /// [dataType] Transfer Storage Blobs or Tables
  /// [destinationEndpointPorts] The destination endpoint ports of the stream
  /// [destinationEndpoints] The destination endpoints of the stream
  /// [flowType] The flow type for this flow
  /// [keyVaultUri] AME, PME, or TORUS only! AKV Chain Containing SAS Token
  /// [messagingOptions] The messaging options for this flow
  /// [passphrase] The passphrase used for SRT streams
  /// [policies] The policies for this flow
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
  FlowProperties({
    this.connection,
    this.customerManagedKeyVaultUri,
    this.dataType,
    this.destinationEndpointPorts,
    this.destinationEndpoints,
    this.flowType,
    this.keyVaultUri,
    this.messagingOptions,
    this.passphrase,
    this.policies,
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
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connection': ?connection == null ? null : connection!.toMap(),
      'customerManagedKeyVaultUri': ?customerManagedKeyVaultUri,
      'dataType': ?dataType,
      'destinationEndpointPorts': ?destinationEndpointPorts,
      'destinationEndpoints': ?destinationEndpoints,
      'flowType': ?flowType,
      'keyVaultUri': ?keyVaultUri,
      'messagingOptions': ?messagingOptions == null ? null : messagingOptions!.toMap(),
      'passphrase': ?passphrase,
      'policies': ?policies,
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
    };
  }

  factory FlowProperties.fromMap(Map<String, dynamic> map) {
    return FlowProperties(
      connection: map['connection'] == null ? null : SelectedResource.fromMap((map['connection'] as Map).cast<String, dynamic>()),
      customerManagedKeyVaultUri: map['customerManagedKeyVaultUri'] == null ? null : map['customerManagedKeyVaultUri'] as String,
      dataType: map['dataType'] == null ? null : map['dataType'] as String,
      destinationEndpointPorts: map['destinationEndpointPorts'] == null ? null : (map['destinationEndpointPorts'] as List).cast<double>(),
      destinationEndpoints: map['destinationEndpoints'] == null ? null : (map['destinationEndpoints'] as List).cast<String>(),
      flowType: map['flowType'] == null ? null : map['flowType'] as String,
      keyVaultUri: map['keyVaultUri'] == null ? null : map['keyVaultUri'] as String,
      messagingOptions: map['messagingOptions'] == null ? null : MessagingOptions.fromMap((map['messagingOptions'] as Map).cast<String, dynamic>()),
      passphrase: map['passphrase'] == null ? null : map['passphrase'] as String,
      policies: map['policies'] == null ? null : (map['policies'] as List).cast<String>(),
      schema: map['schema'] == null ? null : Schema.fromMap((map['schema'] as Map).cast<String, dynamic>()),
      serviceBusQueueId: map['serviceBusQueueId'] == null ? null : map['serviceBusQueueId'] as String,
      sourceAddresses: map['sourceAddresses'] == null ? null : StreamSourceAddresses.fromMap((map['sourceAddresses'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : map['status'] as String,
      storageAccountId: map['storageAccountId'] == null ? null : map['storageAccountId'] as String,
      storageAccountName: map['storageAccountName'] == null ? null : map['storageAccountName'] as String,
      storageContainerName: map['storageContainerName'] == null ? null : map['storageContainerName'] as String,
      streamId: map['streamId'] == null ? null : map['streamId'] as String,
      streamLatency: map['streamLatency'] == null ? null : map['streamLatency'] as double,
      streamProtocol: map['streamProtocol'] == null ? null : map['streamProtocol'] as String,
    );
  }
}

