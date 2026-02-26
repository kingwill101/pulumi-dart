// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_version_variants_variant_response.dart';

/// A list of flow version variants.
class GoogleCloudDialogflowCxV3VersionVariantsResponse {
  /// A list of flow version variants.
  final List<GoogleCloudDialogflowCxV3VersionVariantsVariantResponse> variants;

  GoogleCloudDialogflowCxV3VersionVariantsResponse({
    required this.variants,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['variants'] = Input.encodeList<
        GoogleCloudDialogflowCxV3VersionVariantsVariantResponse,
        Map<String, dynamic>>(variants, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowCxV3VersionVariantsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3VersionVariantsResponse(
      variants: Input.decodeList<
              GoogleCloudDialogflowCxV3VersionVariantsVariantResponse>(
          map['variants'],
          (value) =>
              GoogleCloudDialogflowCxV3VersionVariantsVariantResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
