// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_profile_config_category_response.dart';

/// ProfileConfig defines a set of categories and policies which will be used to compute security score.
class GoogleCloudApigeeV1ProfileConfigResponse {
  /// List of categories of profile config.
  final List<GoogleCloudApigeeV1ProfileConfigCategoryResponse> categories;

  GoogleCloudApigeeV1ProfileConfigResponse({
    required this.categories,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['categories'] = Input.encodeList<
        GoogleCloudApigeeV1ProfileConfigCategoryResponse,
        Map<String, dynamic>>(categories, (value) => value.toMap());
    return map;
  }

  factory GoogleCloudApigeeV1ProfileConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ProfileConfigResponse(
      categories:
          Input.decodeList<GoogleCloudApigeeV1ProfileConfigCategoryResponse>(
              map['categories'],
              (value) =>
                  GoogleCloudApigeeV1ProfileConfigCategoryResponse.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
