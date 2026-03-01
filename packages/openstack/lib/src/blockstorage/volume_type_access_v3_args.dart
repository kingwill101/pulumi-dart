// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_volume_type_access_v3_volume_type_access_v3_args_doc}
/// The set of arguments for VolumeTypeAccessV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_volume_type_access_v3_volume_type_access_v3_args_doc}
class VolumeTypeAccessV3Args {
  /// ID of the project to give access to. Changing this
  /// creates a new resource.
  final pulumi.Input<String> projectId;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  final pulumi.Input<String>? region;
  /// ID of the volume type to give access to. Changing
  /// this creates a new resource.
  final pulumi.Input<String> volumeTypeId;

  /// Creates a new [VolumeTypeAccessV3Args].
  /// [projectId] ID of the project to give access to. Changing this
  /// [region] The region in which to create the volume. If
  /// [volumeTypeId] ID of the volume type to give access to. Changing
  VolumeTypeAccessV3Args({
    required String projectId,
    String? region,
    required String volumeTypeId,
  }) :
      projectId = pulumi.Input.asInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      volumeTypeId = pulumi.Input.asInput<String>(volumeTypeId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'projectId': projectId,
      'region': ?region,
      'volumeTypeId': volumeTypeId,
    };
  }

  factory VolumeTypeAccessV3Args.fromMap(Map<String, dynamic> map) {
    return VolumeTypeAccessV3Args(
      projectId: map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      volumeTypeId: map['volumeTypeId'] as String,
    );
  }
}

