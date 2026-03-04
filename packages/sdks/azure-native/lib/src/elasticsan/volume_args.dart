// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_by_info.dart';
import 'source_creation_data.dart';

/// {@template pulumi_elasticsan_volume_args_doc}
/// The set of arguments for Volume.
/// {@endtemplate}
/// {@macro pulumi_elasticsan_volume_args_doc}
class VolumeArgs {
  /// State of the operation on the resource.
  final pulumi.Input<SourceCreationData>? creationData;

  /// The name of the ElasticSan.
  final pulumi.Input<String> elasticSanName;

  /// Parent resource information.
  final pulumi.Input<ManagedByInfo>? managedBy;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Volume size.
  final pulumi.Input<double> sizeGiB;

  /// The name of the VolumeGroup.
  final pulumi.Input<String> volumeGroupName;

  /// The name of the Volume.
  final pulumi.Input<String>? volumeName;

  /// Creates a new [VolumeArgs].
  /// [creationData] State of the operation on the resource.
  /// [elasticSanName] The name of the ElasticSan.
  /// [managedBy] Parent resource information.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sizeGiB] Volume size.
  /// [volumeGroupName] The name of the VolumeGroup.
  /// [volumeName] The name of the Volume.
  VolumeArgs({
    this.creationData,
    required this.elasticSanName,
    this.managedBy,
    required this.resourceGroupName,
    required this.sizeGiB,
    required this.volumeGroupName,
    this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationData':
          ?pulumi.Input.mapOptionalInputValue<
            SourceCreationData,
            Map<String, dynamic>
          >(creationData, (value) => value.toMap()),
      'elasticSanName': elasticSanName,
      'managedBy':
          ?pulumi.Input.mapOptionalInputValue<
            ManagedByInfo,
            Map<String, dynamic>
          >(managedBy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sizeGiB': sizeGiB,
      'volumeGroupName': volumeGroupName,
      'volumeName': ?volumeName,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      creationData: (() {
        final guardedValue = map['creationData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          SourceCreationData.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      elasticSanName: pulumi.Input.fromValue(map['elasticSanName'] as String),
      managedBy: (() {
        final guardedValue = map['managedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ManagedByInfo.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      sizeGiB: pulumi.Input.fromValue(map['sizeGiB'] as double),
      volumeGroupName: pulumi.Input.fromValue(map['volumeGroupName'] as String),
      volumeName: (() {
        final guardedValue = map['volumeName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
