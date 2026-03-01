// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_failover_group_read_only_endpoint_response.dart';
import 'instance_failover_group_read_write_endpoint_response.dart';
import 'managed_instance_pair_info_response.dart';
import 'partner_region_info_response.dart';

/// Result data returned by getInstanceFailoverGroup.
class GetInstanceFailoverGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Resource ID.
  final String id;
  /// List of managed instance pairs in the failover group.
  final List<ManagedInstancePairInfoResponse> managedInstancePairs;
  /// Resource name.
  final String name;
  /// Partner region information for the failover group.
  final List<PartnerRegionInfoResponse> partnerRegions;
  /// Read-only endpoint of the failover group instance.
  final InstanceFailoverGroupReadOnlyEndpointResponse? readOnlyEndpoint;
  /// Read-write endpoint of the failover group instance.
  final InstanceFailoverGroupReadWriteEndpointResponse readWriteEndpoint;
  /// Local replication role of the failover group instance.
  final String replicationRole;
  /// Replication state of the failover group instance.
  final String replicationState;
  /// Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
  final String? secondaryType;
  /// Resource type.
  final String type;

  /// Creates a new [GetInstanceFailoverGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Resource ID.
  /// [managedInstancePairs] List of managed instance pairs in the failover group.
  /// [name] Resource name.
  /// [partnerRegions] Partner region information for the failover group.
  /// [readOnlyEndpoint] Read-only endpoint of the failover group instance.
  /// [readWriteEndpoint] Read-write endpoint of the failover group instance.
  /// [replicationRole] Local replication role of the failover group instance.
  /// [replicationState] Replication state of the failover group instance.
  /// [secondaryType] Type of the geo-secondary instance. Set 'Standby' if the instance is used as a DR option only.
  /// [type] Resource type.
  GetInstanceFailoverGroupResult({
    required this.azureApiVersion,
    required this.id,
    required this.managedInstancePairs,
    required this.name,
    required this.partnerRegions,
    this.readOnlyEndpoint,
    required this.readWriteEndpoint,
    required this.replicationRole,
    required this.replicationState,
    this.secondaryType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'managedInstancePairs': pulumi.Input.encodeList<ManagedInstancePairInfoResponse, Map<String, dynamic>>(managedInstancePairs, (value) => value.toMap()),
      'name': name,
      'partnerRegions': pulumi.Input.encodeList<PartnerRegionInfoResponse, Map<String, dynamic>>(partnerRegions, (value) => value.toMap()),
      'readOnlyEndpoint': ?readOnlyEndpoint == null ? null : readOnlyEndpoint!.toMap(),
      'readWriteEndpoint': readWriteEndpoint.toMap(),
      'replicationRole': replicationRole,
      'replicationState': replicationState,
      'secondaryType': ?secondaryType,
      'type': type,
    };
  }

  factory GetInstanceFailoverGroupResult.fromMap(Map<String, dynamic> map) {
    return GetInstanceFailoverGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      managedInstancePairs: pulumi.Input.decodeList<ManagedInstancePairInfoResponse>(map['managedInstancePairs'], (value) => ManagedInstancePairInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      partnerRegions: pulumi.Input.decodeList<PartnerRegionInfoResponse>(map['partnerRegions'], (value) => PartnerRegionInfoResponse.fromMap((value as Map).cast<String, dynamic>())),
      readOnlyEndpoint: map['readOnlyEndpoint'] == null ? null : InstanceFailoverGroupReadOnlyEndpointResponse.fromMap((map['readOnlyEndpoint'] as Map).cast<String, dynamic>()),
      readWriteEndpoint: InstanceFailoverGroupReadWriteEndpointResponse.fromMap((map['readWriteEndpoint'] as Map).cast<String, dynamic>()),
      replicationRole: map['replicationRole'] as String,
      replicationState: map['replicationState'] as String,
      secondaryType: map['secondaryType'] == null ? null : map['secondaryType'] as String,
      type: map['type'] as String,
    );
  }
}

