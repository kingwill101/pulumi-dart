// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3beta1_version_variants_variant_response.dart';

/// A list of flow version variants.
class GoogleCloudDialogflowCxV3beta1VersionVariantsResponse {
  /// A list of flow version variants.
  final List<GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse>
      variants;

  GoogleCloudDialogflowCxV3beta1VersionVariantsResponse({
    required this.variants,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['variants'] = Input.encodeList<
        GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse,
        Map<String, dynamic>>(variants, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudDialogflowCxV3beta1VersionVariantsResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudDialogflowCxV3beta1VersionVariantsResponse(
      variants: Input.decodeList<
              GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse>(
          map['variants'],
          (value) =>
              GoogleCloudDialogflowCxV3beta1VersionVariantsVariantResponse
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
