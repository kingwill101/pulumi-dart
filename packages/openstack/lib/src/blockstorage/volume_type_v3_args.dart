// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_blockstorage_volume_type_v3_volume_type_v3_args_doc}
/// The set of arguments for VolumeTypeV3.
/// {@endtemplate}
/// {@macro pulumi_blockstorage_volume_type_v3_volume_type_v3_args_doc}
class VolumeTypeV3Args {
  /// Human-readable description of the port. Changing
  /// this updates the `description` of an existing volume type.
  final pulumi.Input<String>? description;
  /// Key/Value pairs of metadata for the volume type.
  final pulumi.Input<Map<String, String>>? extraSpecs;
  /// Whether the volume type is public. Changing
  /// this updates the `is_public` of an existing volume type.
  final pulumi.Input<bool>? isPublic;
  /// Name of the volume type.  Changing this
  /// updates the `name` of an existing volume type.
  final pulumi.Input<String>? name;
  /// The region in which to create the volume. If
  /// omitted, the `region` argument of the provider is used. Changing this
  /// creates a new quotaset.
  final pulumi.Input<String>? region;

  /// Creates a new [VolumeTypeV3Args].
  /// [description] Human-readable description of the port. Changing
  /// [extraSpecs] Key/Value pairs of metadata for the volume type.
  /// [isPublic] Whether the volume type is public. Changing
  /// [name] Name of the volume type.  Changing this
  /// [region] The region in which to create the volume. If
  VolumeTypeV3Args({
    String? description,
    Map<String, String>? extraSpecs,
    bool? isPublic,
    String? name,
    String? region,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      extraSpecs = pulumi.Input.asOptionalInput<Map<String, String>>(extraSpecs),
      isPublic = pulumi.Input.asOptionalInput<bool>(isPublic),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'extraSpecs': ?extraSpecs,
      'isPublic': ?isPublic,
      'name': ?name,
      'region': ?region,
    };
  }

  factory VolumeTypeV3Args.fromMap(Map<String, dynamic> map) {
    return VolumeTypeV3Args(
      description: map['description'] == null ? null : map['description'] as String,
      extraSpecs: map['extraSpecs'] == null ? null : (map['extraSpecs'] as Map).cast<String, String>(),
      isPublic: map['isPublic'] == null ? null : map['isPublic'] as bool,
      name: map['name'] == null ? null : map['name'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}

