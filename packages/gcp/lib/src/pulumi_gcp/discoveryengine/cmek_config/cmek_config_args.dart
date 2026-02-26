// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../cmek_config_single_region_key/cmek_config_single_region_key.dart';

/// The set of arguments for CmekConfig.
class CmekConfigArgs {
  /// The unique id of the cmek config.
  final Input<String> cmekConfigId;

  /// KMS key resource name which will be used to encrypt resources
  /// `projects/{project}/locations/{location}/keyRings/{keyRing}/cryptoKeys/{keyId}`.
  final Input<String> kmsKey;

  /// The geographic location where the CMEK config should reside. The value can
  /// only be one of "us" and "eu".
  final Input<String> location;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Set the following CmekConfig as the default to be used for child resources
  /// if one is not specified. The default value is true.
  final Input<bool>? setDefault;

  /// Single-regional CMEKs that are required for some VAIS features.
  /// Structure is documented below.
  final Input<List<CmekConfigSingleRegionKey>>? singleRegionKeys;

  CmekConfigArgs({
    required this.cmekConfigId,
    required this.kmsKey,
    required this.location,
    this.project,
    this.setDefault,
    this.singleRegionKeys,
  });

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
      map['singleRegionKeys'] = Input.mapOptionalInputValue<
              List<CmekConfigSingleRegionKey>, List<Map<String, dynamic>>>(
          singleRegionKeysValue,
          (value) =>
              Input.encodeList<CmekConfigSingleRegionKey, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    return map;
  }

  factory CmekConfigArgs.fromMap(Map<String, dynamic> map) {
    return CmekConfigArgs(
      cmekConfigId: Input.asInput<String>(map['cmekConfigId']),
      kmsKey: Input.asInput<String>(map['kmsKey']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      setDefault: Input.asOptionalInput<bool>(map['setDefault']),
      singleRegionKeys: Input.asOptionalInput<List<CmekConfigSingleRegionKey>>(
          map['singleRegionKeys']),
    );
  }
}
