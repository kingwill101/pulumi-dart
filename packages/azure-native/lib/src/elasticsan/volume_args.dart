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
    SourceCreationData? creationData,
    required String elasticSanName,
    ManagedByInfo? managedBy,
    required String resourceGroupName,
    required double sizeGiB,
    required String volumeGroupName,
    String? volumeName,
  }) :
      creationData = pulumi.Input.asOptionalInput<SourceCreationData>(creationData),
      elasticSanName = pulumi.Input.asInput<String>(elasticSanName),
      managedBy = pulumi.Input.asOptionalInput<ManagedByInfo>(managedBy),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sizeGiB = pulumi.Input.asInput<double>(sizeGiB),
      volumeGroupName = pulumi.Input.asInput<String>(volumeGroupName),
      volumeName = pulumi.Input.asOptionalInput<String>(volumeName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'creationData': ?pulumi.Input.mapOptionalInputValue<SourceCreationData, Map<String, dynamic>>(creationData, (value) => value.toMap()),
      'elasticSanName': elasticSanName,
      'managedBy': ?pulumi.Input.mapOptionalInputValue<ManagedByInfo, Map<String, dynamic>>(managedBy, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sizeGiB': sizeGiB,
      'volumeGroupName': volumeGroupName,
      'volumeName': ?volumeName,
    };
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      creationData: map['creationData'] == null ? null : SourceCreationData.fromMap((map['creationData'] as Map).cast<String, dynamic>()),
      elasticSanName: map['elasticSanName'] as String,
      managedBy: map['managedBy'] == null ? null : ManagedByInfo.fromMap((map['managedBy'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      sizeGiB: map['sizeGiB'] as double,
      volumeGroupName: map['volumeGroupName'] as String,
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
    );
  }
}

