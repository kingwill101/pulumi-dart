// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dialogflow_cx_v3beta1_version_variants_variant.dart';

/// A list of flow version variants.
class GoogleCloudDialogflowCxV3beta1VersionVariants {
  /// A list of flow version variants.
  final List<GoogleCloudDialogflowCxV3beta1VersionVariantsVariant>? variants;

  /// Creates a new [GoogleCloudDialogflowCxV3beta1VersionVariants].
  /// [variants] A list of flow version variants.
  GoogleCloudDialogflowCxV3beta1VersionVariants({
    this.variants,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final variantsValue = variants;
    if (variantsValue != null) {
      map['variants'] = pulumi.Input.encodeList<
          GoogleCloudDialogflowCxV3beta1VersionVariantsVariant,
          Map<String, dynamic>>(variantsValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1VersionVariants.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1VersionVariants(
      variants: map['variants'] == null
          ? null
          : pulumi.Input.decodeList<
                  GoogleCloudDialogflowCxV3beta1VersionVariantsVariant>(
              map['variants'],
              (value) =>
                  GoogleCloudDialogflowCxV3beta1VersionVariantsVariant.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
