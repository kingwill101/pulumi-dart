// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_storage_blob_container_endpoint_properties.dart';

/// {@template pulumi_storagemover_endpoint_args_doc}
/// The set of arguments for Endpoint.
/// {@endtemplate}
/// {@macro pulumi_storagemover_endpoint_args_doc}
class EndpointArgs {
  /// The name of the Endpoint resource.
  final pulumi.Input<String>? endpointName;
  /// The resource specific properties for the Storage Mover resource.
  final pulumi.Input<AzureStorageBlobContainerEndpointProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the Storage Mover resource.
  final pulumi.Input<String> storageMoverName;

  /// Creates a new [EndpointArgs].
  /// [endpointName] The name of the Endpoint resource.
  /// [properties] The resource specific properties for the Storage Mover resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [storageMoverName] The name of the Storage Mover resource.
  EndpointArgs({
    String? endpointName,
    required AzureStorageBlobContainerEndpointProperties properties,
    required String resourceGroupName,
    required String storageMoverName,
  }) :
      endpointName = pulumi.Input.asOptionalInput<String>(endpointName),
      properties = pulumi.Input.asInput<AzureStorageBlobContainerEndpointProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      storageMoverName = pulumi.Input.asInput<String>(storageMoverName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endpointName': ?endpointName,
      'properties': pulumi.Input.mapInputValue<AzureStorageBlobContainerEndpointProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'storageMoverName': storageMoverName,
    };
  }

  factory EndpointArgs.fromMap(Map<String, dynamic> map) {
    return EndpointArgs(
      endpointName: map['endpointName'] == null ? null : map['endpointName'] as String,
      properties: AzureStorageBlobContainerEndpointProperties.fromMap((map['properties'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      storageMoverName: map['storageMoverName'] as String,
    );
  }
}

