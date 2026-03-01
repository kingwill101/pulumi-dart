// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_meta_data_response.dart';
import 'volume_group_volume_properties_response.dart';

/// Result data returned by getVolumeGroup.
class GetVolumeGroupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Volume group details
  final VolumeGroupMetaDataResponse? groupMetaData;
  /// Resource Id
  final String id;
  /// Resource location
  final String? location;
  /// Resource name
  final String name;
  /// Azure lifecycle management
  final String provisioningState;
  /// Resource type
  final String type;
  /// List of volumes from group
  final List<VolumeGroupVolumePropertiesResponse>? volumes;

  /// Creates a new [GetVolumeGroupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [groupMetaData] Volume group details
  /// [id] Resource Id
  /// [location] Resource location
  /// [name] Resource name
  /// [provisioningState] Azure lifecycle management
  /// [type] Resource type
  /// [volumes] List of volumes from group
  GetVolumeGroupResult({
    required this.azureApiVersion,
    this.groupMetaData,
    required this.id,
    this.location,
    required this.name,
    required this.provisioningState,
    required this.type,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'groupMetaData': ?groupMetaData == null ? null : groupMetaData!.toMap(),
      'id': id,
      'location': ?location,
      'name': name,
      'provisioningState': provisioningState,
      'type': type,
      'volumes': ?volumes == null ? null : pulumi.Input.encodeList<VolumeGroupVolumePropertiesResponse, Map<String, dynamic>>(volumes!, (value) => value.toMap()),
    };
  }

  factory GetVolumeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      groupMetaData: map['groupMetaData'] == null ? null : VolumeGroupMetaDataResponse.fromMap((map['groupMetaData'] as Map).cast<String, dynamic>()),
      id: map['id'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      type: map['type'] as String,
      volumes: map['volumes'] == null ? null : pulumi.Input.decodeList<VolumeGroupVolumePropertiesResponse>(map['volumes'], (value) => VolumeGroupVolumePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

