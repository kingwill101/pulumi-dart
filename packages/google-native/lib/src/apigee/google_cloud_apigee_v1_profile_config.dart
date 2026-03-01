// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_apigee_v1_profile_config_category.dart';

/// ProfileConfig defines a set of categories and policies which will be used to compute security score.
class GoogleCloudApigeeV1ProfileConfig {
  /// List of categories of profile config.
  final List<GoogleCloudApigeeV1ProfileConfigCategory>? categories;

  /// Creates a new [GoogleCloudApigeeV1ProfileConfig].
  /// [categories] List of categories of profile config.
  GoogleCloudApigeeV1ProfileConfig({this.categories});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'categories': ?categories == null
          ? null
          : pulumi.Input.encodeList<
              GoogleCloudApigeeV1ProfileConfigCategory,
              Map<String, dynamic>
            >(categories!, (value) => value.toMap()),
    };
  }

  factory GoogleCloudApigeeV1ProfileConfig.fromMap(Map<String, dynamic> map) {
    return GoogleCloudApigeeV1ProfileConfig(
      categories: map['categories'] == null
          ? null
          : pulumi.Input.decodeList<GoogleCloudApigeeV1ProfileConfigCategory>(
              map['categories'],
              (value) => GoogleCloudApigeeV1ProfileConfigCategory.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
    );
  }
}
