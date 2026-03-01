// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'data_collection_endpoint_network_acls.dart';
import 'data_collection_endpoint_resource_identity.dart';

/// {@template pulumi_monitor_data_collection_endpoint_args_doc}
/// The set of arguments for DataCollectionEndpoint.
/// {@endtemplate}
/// {@macro pulumi_monitor_data_collection_endpoint_args_doc}
class DataCollectionEndpointArgs {
  /// The name of the data collection endpoint. The name is case insensitive.
  final pulumi.Input<String>? dataCollectionEndpointName;
  /// Description of the data collection endpoint.
  final pulumi.Input<String>? description;
  /// Managed service identity of the resource.
  final pulumi.Input<DataCollectionEndpointResourceIdentity>? identity;
  /// The immutable ID of this data collection endpoint resource. This property is READ-ONLY.
  final pulumi.Input<String>? immutableId;
  /// The kind of the resource.
  final pulumi.Input<String>? kind;
  /// The geo-location where the resource lives.
  final pulumi.Input<String>? location;
  /// Network access control rules for the endpoints.
  final pulumi.Input<DataCollectionEndpointNetworkAcls>? networkAcls;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DataCollectionEndpointArgs].
  /// [dataCollectionEndpointName] The name of the data collection endpoint. The name is case insensitive.
  /// [description] Description of the data collection endpoint.
  /// [identity] Managed service identity of the resource.
  /// [immutableId] The immutable ID of this data collection endpoint resource. This property is READ-ONLY.
  /// [kind] The kind of the resource.
  /// [location] The geo-location where the resource lives.
  /// [networkAcls] Network access control rules for the endpoints.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [tags] Resource tags.
  DataCollectionEndpointArgs({
    String? dataCollectionEndpointName,
    String? description,
    DataCollectionEndpointResourceIdentity? identity,
    String? immutableId,
    String? kind,
    String? location,
    DataCollectionEndpointNetworkAcls? networkAcls,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      dataCollectionEndpointName = pulumi.Input.asOptionalInput<String>(dataCollectionEndpointName),
      description = pulumi.Input.asOptionalInput<String>(description),
      identity = pulumi.Input.asOptionalInput<DataCollectionEndpointResourceIdentity>(identity),
      immutableId = pulumi.Input.asOptionalInput<String>(immutableId),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      networkAcls = pulumi.Input.asOptionalInput<DataCollectionEndpointNetworkAcls>(networkAcls),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataCollectionEndpointName': ?dataCollectionEndpointName,
      'description': ?description,
      'identity': ?pulumi.Input.mapOptionalInputValue<DataCollectionEndpointResourceIdentity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'immutableId': ?immutableId,
      'kind': ?kind,
      'location': ?location,
      'networkAcls': ?pulumi.Input.mapOptionalInputValue<DataCollectionEndpointNetworkAcls, Map<String, dynamic>>(networkAcls, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory DataCollectionEndpointArgs.fromMap(Map<String, dynamic> map) {
    return DataCollectionEndpointArgs(
      dataCollectionEndpointName: map['dataCollectionEndpointName'] == null ? null : map['dataCollectionEndpointName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      identity: map['identity'] == null ? null : DataCollectionEndpointResourceIdentity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      immutableId: map['immutableId'] == null ? null : map['immutableId'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      networkAcls: map['networkAcls'] == null ? null : DataCollectionEndpointNetworkAcls.fromMap((map['networkAcls'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

