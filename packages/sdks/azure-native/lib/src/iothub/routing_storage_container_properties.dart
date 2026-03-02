// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_identity.dart';

/// The properties related to a storage container endpoint.
class RoutingStorageContainerProperties {
  /// Method used to authenticate against the storage endpoint
  final pulumi.Input<String>? authenticationType;
  /// Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds.
  final pulumi.Input<int>? batchFrequencyInSeconds;
  /// The connection string of the storage account.
  final pulumi.Input<String>? connectionString;
  /// The name of storage container in the storage account.
  final pulumi.Input<String> containerName;
  /// Encoding that is used to serialize messages to blobs. Supported values are 'avro', 'avrodeflate', and 'JSON'. Default value is 'avro'.
  final pulumi.Input<String>? encoding;
  /// The url of the storage endpoint. It must include the protocol https://
  final pulumi.Input<String>? endpointUri;
  /// File name format for the blob. Default format is {iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}. All parameters are mandatory but can be reordered.
  final pulumi.Input<String>? fileNameFormat;
  /// Id of the storage container endpoint
  final pulumi.Input<String>? id;
  /// Managed identity properties of routing storage endpoint.
  final pulumi.Input<ManagedIdentity>? identity;
  /// Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB).
  final pulumi.Input<int>? maxChunkSizeInBytes;
  /// The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types.
  final pulumi.Input<String> name;
  /// The name of the resource group of the storage account.
  final pulumi.Input<String>? resourceGroup;
  /// The subscription identifier of the storage account.
  final pulumi.Input<String>? subscriptionId;

  /// Creates a new [RoutingStorageContainerProperties].
  /// [authenticationType] Method used to authenticate against the storage endpoint
  /// [batchFrequencyInSeconds] Time interval at which blobs are written to storage. Value should be between 60 and 720 seconds. Default value is 300 seconds.
  /// [connectionString] The connection string of the storage account.
  /// [containerName] The name of storage container in the storage account.
  /// [encoding] Encoding that is used to serialize messages to blobs. Supported values are 'avro', 'avrodeflate', and 'JSON'. Default value is 'avro'.
  /// [endpointUri] The url of the storage endpoint. It must include the protocol https://
  /// [fileNameFormat] File name format for the blob. Default format is {iothub}/{partition}/{YYYY}/{MM}/{DD}/{HH}/{mm}. All parameters are mandatory but can be reordered.
  /// [id] Id of the storage container endpoint
  /// [identity] Managed identity properties of routing storage endpoint.
  /// [maxChunkSizeInBytes] Maximum number of bytes for each blob written to storage. Value should be between 10485760(10MB) and 524288000(500MB). Default value is 314572800(300MB).
  /// [name] The name that identifies this endpoint. The name can only include alphanumeric characters, periods, underscores, hyphens and has a maximum length of 64 characters. The following names are reserved:  events, fileNotifications, $default. Endpoint names must be unique across endpoint types.
  /// [resourceGroup] The name of the resource group of the storage account.
  /// [subscriptionId] The subscription identifier of the storage account.
  RoutingStorageContainerProperties({
    this.authenticationType,
    this.batchFrequencyInSeconds,
    this.connectionString,
    required this.containerName,
    this.encoding,
    this.endpointUri,
    this.fileNameFormat,
    this.id,
    this.identity,
    this.maxChunkSizeInBytes,
    required this.name,
    this.resourceGroup,
    this.subscriptionId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticationType': ?authenticationType,
      'batchFrequencyInSeconds': ?batchFrequencyInSeconds,
      'connectionString': ?connectionString,
      'containerName': containerName,
      'encoding': ?encoding,
      'endpointUri': ?endpointUri,
      'fileNameFormat': ?fileNameFormat,
      'id': ?id,
      'identity': ?pulumi.Input.mapOptionalInputValue<ManagedIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'maxChunkSizeInBytes': ?maxChunkSizeInBytes,
      'name': name,
      'resourceGroup': ?resourceGroup,
      'subscriptionId': ?subscriptionId,
    };
  }

  factory RoutingStorageContainerProperties.fromMap(Map<String, dynamic> map) {
    return RoutingStorageContainerProperties(
      authenticationType: map['authenticationType'] == null ? null : (map['authenticationType']! as String).input(),
      batchFrequencyInSeconds: map['batchFrequencyInSeconds'] == null ? null : (map['batchFrequencyInSeconds']! as int).input(),
      connectionString: map['connectionString'] == null ? null : (map['connectionString']! as String).input(),
      containerName: (map['containerName'] as String).input(),
      encoding: map['encoding'] == null ? null : (map['encoding']! as String).input(),
      endpointUri: map['endpointUri'] == null ? null : (map['endpointUri']! as String).input(),
      fileNameFormat: map['fileNameFormat'] == null ? null : (map['fileNameFormat']! as String).input(),
      id: map['id'] == null ? null : (map['id']! as String).input(),
      identity: map['identity'] == null ? null : (ManagedIdentity.fromMap((map['identity']! as Map).cast<String, dynamic>())).input(),
      maxChunkSizeInBytes: map['maxChunkSizeInBytes'] == null ? null : (map['maxChunkSizeInBytes']! as int).input(),
      name: (map['name'] as String).input(),
      resourceGroup: map['resourceGroup'] == null ? null : (map['resourceGroup']! as String).input(),
      subscriptionId: map['subscriptionId'] == null ? null : (map['subscriptionId']! as String).input(),
    );
  }
}

