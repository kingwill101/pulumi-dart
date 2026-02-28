// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cmek_config_single_region_key.dart';

/// {@template pulumi_discoveryengine_cmek_config_cmek_config_args_doc}
/// The set of arguments for CmekConfig.
/// {@endtemplate}
/// {@macro pulumi_discoveryengine_cmek_config_cmek_config_args_doc}
class CmekConfigArgs {
  /// The unique id of the cmek config.
  final pulumi.Input<String> cmekConfigId;

  /// KMS key resource name which will be used to encrypt resources
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  final pulumi.Input<String> kmsKey;

  /// The geographic location where the CMEK config should reside. The value can
  /// only be one of "us" and "eu".
  final pulumi.Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Set the following CmekConfig as the default to be used for child resources
  /// if one is not specified. The default value is true.
  final pulumi.Input<bool>? setDefault;

  /// Single-regional CMEKs that are required for some VAIS features.
  /// Structure is documented below.
  final pulumi.Input<List<CmekConfigSingleRegionKey>>? singleRegionKeys;

  /// Creates a new [CmekConfigArgs].
  /// [cmekConfigId] The unique id of the cmek config.
  /// [kmsKey] KMS key resource name which will be used to encrypt resources
  /// [location] The geographic location where the CMEK config should reside. The value can
  /// [project] The ID of the project in which the resource belongs.
  /// [setDefault] Set the following CmekConfig as the default to be used for child resources
  /// [singleRegionKeys] Single-regional CMEKs that are required for some VAIS features.
  CmekConfigArgs({
    required String cmekConfigId,
    required String kmsKey,
    required String location,
    String? project,
    bool? setDefault,
    List<CmekConfigSingleRegionKey>? singleRegionKeys,
  })  : cmekConfigId = pulumi.Input.asInput<String>(cmekConfigId),
        kmsKey = pulumi.Input.asInput<String>(kmsKey),
        location = pulumi.Input.asInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        setDefault = pulumi.Input.asOptionalInput<bool>(setDefault),
        singleRegionKeys =
            pulumi.Input.asOptionalInput<List<CmekConfigSingleRegionKey>>(
                singleRegionKeys);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cmekConfigId'] = cmekConfigId;
    map['kmsKey'] = kmsKey;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final setDefaultValue = setDefault;
    if (setDefaultValue != null) {
      map['setDefault'] = setDefaultValue;
    }
    final singleRegionKeysValue = singleRegionKeys;
    if (singleRegionKeysValue != null) {
      map['singleRegionKeys'] = pulumi.Input.mapOptionalInputValue<
              List<CmekConfigSingleRegionKey>, List<Map<String, dynamic>>>(
          singleRegionKeysValue,
          (value) => pulumi.Input.encodeList<CmekConfigSingleRegionKey,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    return map;
  }

  factory CmekConfigArgs.fromMap(Map<String, dynamic> map) {
    return CmekConfigArgs(
      cmekConfigId: map['cmekConfigId'] as String,
      kmsKey: map['kmsKey'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      setDefault: map['setDefault'] == null ? null : map['setDefault'] as bool,
      singleRegionKeys: map['singleRegionKeys'] == null
          ? null
          : pulumi.Input.decodeList<CmekConfigSingleRegionKey>(
              map['singleRegionKeys'],
              (value) => CmekConfigSingleRegionKey.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
