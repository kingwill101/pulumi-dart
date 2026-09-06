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
  final pulumi.Input<String?>? dataCollectionEndpointName;
  /// Description of the data collection endpoint.
  final pulumi.Input<String?>? description;
  /// Managed service identity of the resource.
  final pulumi.Input<DataCollectionEndpointResourceIdentity?>? identity;
  /// The immutable ID of this data collection endpoint resource. This property is READ-ONLY.
  final pulumi.Input<String?>? immutableId;
  /// The kind of the resource.
  final pulumi.Input<dynamic>? kind;
  /// The geo-location where the resource lives.
  final pulumi.Input<String?>? location;
  /// Network access control rules for the endpoints.
  final pulumi.Input<DataCollectionEndpointNetworkAcls?>? networkAcls;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Resource tags.
  final pulumi.Input<Map<String, String>?>? tags;

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
  const DataCollectionEndpointArgs({
    this.dataCollectionEndpointName,
    this.description,
    this.identity,
    this.immutableId,
    this.kind,
    this.location,
    this.networkAcls,
    required this.resourceGroupName,
    this.tags,
  });

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
      dataCollectionEndpointName: (() { final guardedValue = map['dataCollectionEndpointName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      identity: (() { final guardedValue = map['identity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionEndpointResourceIdentity.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      immutableId: (() { final guardedValue = map['immutableId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      networkAcls: (() { final guardedValue = map['networkAcls']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DataCollectionEndpointNetworkAcls.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
