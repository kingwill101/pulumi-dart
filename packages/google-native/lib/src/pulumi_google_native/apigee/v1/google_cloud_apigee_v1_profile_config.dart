// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'google_cloud_apigee_v1_profile_config_category.dart';

/// ProfileConfig defines a set of categories and policies which will be used to compute security score.
class GoogleCloudApigeeV1ProfileConfig {
  /// List of categories of profile config.
  final List<GoogleCloudApigeeV1ProfileConfigCategory>? categories;

  GoogleCloudApigeeV1ProfileConfig({
    this.categories,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final categoriesValue = categories;
    if (categoriesValue != null) {
      map['categories'] = Input.encodeList<
          GoogleCloudApigeeV1ProfileConfigCategory,
          Map<String, dynamic>>(categoriesValue, (value) => value.toMap());
    }
    return map;
  }

  factory GoogleCloudApigeeV1ProfileConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ProfileConfig(
      categories: map['categories'] == null
          ? null
          : Input.decodeList<GoogleCloudApigeeV1ProfileConfigCategory>(
              map['categories'],
              (value) => GoogleCloudApigeeV1ProfileConfigCategory.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
