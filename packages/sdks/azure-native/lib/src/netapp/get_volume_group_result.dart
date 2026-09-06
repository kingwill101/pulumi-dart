// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_group_meta_data_response.dart';
import 'volume_group_volume_properties_response.dart';

/// Result data returned by getVolumeGroup.
class GetVolumeGroupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Volume group details
  final VolumeGroupMetaDataResponse? groupMetaData;
  /// Resource Id
  final String? id;
  /// Resource location
  final String? location;
  /// Resource name
  final String? name;
  /// Azure lifecycle management
  final String? provisioningState;
  /// Resource type
  final String? type;
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
  const GetVolumeGroupResult({
    this.azureApiVersion,
    this.groupMetaData,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.type,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'groupMetaData': ?groupMetaData?.toMap(),
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'type': ?type,
      'volumes': ?(() { final guardedValue = volumes; if (guardedValue == null) return null; return pulumi.Input.encodeList<VolumeGroupVolumePropertiesResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
    };
  }

  factory GetVolumeGroupResult.fromMap(Map<String, dynamic> map) {
    return GetVolumeGroupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      groupMetaData: (() { final guardedValue = map['groupMetaData']; if (guardedValue == null) return null; return VolumeGroupMetaDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeGroupVolumePropertiesResponse>(guardedValue, (value) => VolumeGroupVolumePropertiesResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
    );
  }
}
