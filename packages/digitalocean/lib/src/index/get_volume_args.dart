// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_volume_get_volume_args_doc}
/// Arguments for getVolume.
/// {@endtemplate}
/// {@macro pulumi_index_get_volume_get_volume_args_doc}
class GetVolumeArgs {
  /// Text describing a block storage volume.
  final pulumi.Input<String>? description;
  /// The name of block storage volume.
  final pulumi.Input<String> name;
  /// The region the block storage volume is provisioned in.
  final pulumi.Input<String>? region;

  /// Creates a new [GetVolumeArgs].
  /// [description] Text describing a block storage volume.
  /// [name] The name of block storage volume.
  /// [region] The region the block storage volume is provisioned in.
  GetVolumeArgs({
    String? description,
    required String name,
    String? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      name = pulumi.Input.asInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'region': ?region,
    };
  }

  factory GetVolumeArgs.fromMap(Map<String, dynamic> map) {
    return GetVolumeArgs(
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

