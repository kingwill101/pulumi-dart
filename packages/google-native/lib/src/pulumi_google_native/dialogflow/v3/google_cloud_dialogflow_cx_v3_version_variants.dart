// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_dialogflow_cx_v3_version_variants_variant.dart';

/// A list of flow version variants.
class GoogleCloudDialogflowCxV3VersionVariants {
  /// A list of flow version variants.
  final List<GoogleCloudDialogflowCxV3VersionVariantsVariant>? variants;

  GoogleCloudDialogflowCxV3VersionVariants({
    this.variants,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final variantsValue = variants;
    if (variantsValue != null) {
      map['variants'] = Input.encodeList<
          GoogleCloudDialogflowCxV3VersionVariantsVariant,
          Map<String, dynamic>>(variantsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3VersionVariants.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3VersionVariants(
      variants: map['variants'] == null
          ? null
          : Input.decodeList<GoogleCloudDialogflowCxV3VersionVariantsVariant>(
              map['variants'],
              (value) =>
                  GoogleCloudDialogflowCxV3VersionVariantsVariant.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
