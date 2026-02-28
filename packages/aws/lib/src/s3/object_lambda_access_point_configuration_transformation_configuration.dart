// ignore_for_file: unused_element, unnecessary_cast

import 'object_lambda_access_point_configuration_transformation_configuration_content_transformation.dart';

class ObjectLambdaAccessPointConfigurationTransformationConfiguration {
  /// The actions of an Object Lambda Access Point configuration. Valid values: `GetObject`.
  final List<String> actions;

  /// The content transformation of an Object Lambda Access Point configuration. See Content Transformation below for more details.
  final ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation
      contentTransformation;

  /// Creates a new [ObjectLambdaAccessPointConfigurationTransformationConfiguration].
  /// [actions] The actions of an Object Lambda Access Point configuration. Valid values: `GetObject`.
  /// [contentTransformation] The content transformation of an Object Lambda Access Point configuration. See Content Transformation below for more details.
  ObjectLambdaAccessPointConfigurationTransformationConfiguration({
    required this.actions,
    required this.contentTransformation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['actions'] = actions;
    map['contentTransformation'] = contentTransformation.toMap();
    return map;
  }

  factory ObjectLambdaAccessPointConfigurationTransformationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ObjectLambdaAccessPointConfigurationTransformationConfiguration(
      actions: (map['actions'] as List).cast<String>(),
      contentTransformation:
          ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation
              .fromMap((map['contentTransformation'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
