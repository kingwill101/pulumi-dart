// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'messaging_options.dart';
import 'schema.dart';
import 'selected_resource.dart';
import 'stream_source_addresses.dart';

/// Properties of flow
class FlowProperties {
  /// The connection associated with this flow
  final pulumi.Input<SelectedResource>? connection;
  /// The URI to the customer managed key for this flow
  final pulumi.Input<String>? customerManagedKeyVaultUri;
  /// Transfer Storage Blobs or Tables
  final pulumi.Input<String>? dataType;
  /// The destination endpoint ports of the stream
  final pulumi.Input<List<double>>? destinationEndpointPorts;
  /// The destination endpoints of the stream
  final pulumi.Input<List<String>>? destinationEndpoints;
  /// The flow type for this flow
  final pulumi.Input<String>? flowType;
  /// AME, PME, or TORUS only! AKV Chain Containing SAS Token
  final pulumi.Input<String>? keyVaultUri;
  /// The messaging options for this flow
  final pulumi.Input<MessagingOptions>? messagingOptions;
  /// The passphrase used for SRT streams
  final pulumi.Input<String>? passphrase;
  /// The policies for this flow
  final pulumi.Input<List<String>>? policies;
  /// The selected schema for this flow
  final pulumi.Input<Schema>? schema;
  /// Service Bus Queue ID
  final pulumi.Input<String>? serviceBusQueueId;
  /// The source IP address and CIDR ranges of the stream
  final pulumi.Input<StreamSourceAddresses>? sourceAddresses;
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
      'connection': ?pulumi.Input.mapOptionalInputValue<SelectedResource, Map<String, dynamic>>(connection, (value) => value.toMap()),
      'customerManagedKeyVaultUri': ?customerManagedKeyVaultUri,
      'dataType': ?dataType,
      'destinationEndpointPorts': ?destinationEndpointPorts,
      'destinationEndpoints': ?destinationEndpoints,
      'flowType': ?flowType,
      'keyVaultUri': ?keyVaultUri,
      'messagingOptions': ?pulumi.Input.mapOptionalInputValue<MessagingOptions, Map<String, dynamic>>(messagingOptions, (value) => value.toMap()),
      'passphrase': ?passphrase,
      'policies': ?policies,
      'schema': ?pulumi.Input.mapOptionalInputValue<Schema, Map<String, dynamic>>(schema, (value) => value.toMap()),
      'serviceBusQueueId': ?serviceBusQueueId,
      'sourceAddresses': ?pulumi.Input.mapOptionalInputValue<StreamSourceAddresses, Map<String, dynamic>>(sourceAddresses, (value) => value.toMap()),
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
      connection: map['connection'] == null ? null : (SelectedResource.fromMap((map['connection']! as Map).cast<String, dynamic>())).input(),
      customerManagedKeyVaultUri: map['customerManagedKeyVaultUri'] == null ? null : (map['customerManagedKeyVaultUri']! as String).input(),
      dataType: map['dataType'] == null ? null : (map['dataType']! as String).input(),
      destinationEndpointPorts: map['destinationEndpointPorts'] == null ? null : ((map['destinationEndpointPorts']! as List).cast<double>()).input(),
      destinationEndpoints: map['destinationEndpoints'] == null ? null : ((map['destinationEndpoints']! as List).cast<String>()).input(),
      flowType: map['flowType'] == null ? null : (map['flowType']! as String).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri']! as String).input(),
      messagingOptions: map['messagingOptions'] == null ? null : (MessagingOptions.fromMap((map['messagingOptions']! as Map).cast<String, dynamic>())).input(),
      passphrase: map['passphrase'] == null ? null : (map['passphrase']! as String).input(),
      policies: map['policies'] == null ? null : ((map['policies']! as List).cast<String>()).input(),
      schema: map['schema'] == null ? null : (Schema.fromMap((map['schema']! as Map).cast<String, dynamic>())).input(),
      serviceBusQueueId: map['serviceBusQueueId'] == null ? null : (map['serviceBusQueueId']! as String).input(),
      sourceAddresses: map['sourceAddresses'] == null ? null : (StreamSourceAddresses.fromMap((map['sourceAddresses']! as Map).cast<String, dynamic>())).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
      storageAccountId: map['storageAccountId'] == null ? null : (map['storageAccountId']! as String).input(),
      storageAccountName: map['storageAccountName'] == null ? null : (map['storageAccountName']! as String).input(),
      storageContainerName: map['storageContainerName'] == null ? null : (map['storageContainerName']! as String).input(),
      streamId: map['streamId'] == null ? null : (map['streamId']! as String).input(),
      streamLatency: map['streamLatency'] == null ? null : (map['streamLatency']! as double).input(),
      streamProtocol: map['streamProtocol'] == null ? null : (map['streamProtocol']! as String).input(),
    );
  }
}

