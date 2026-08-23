// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_lambda_access_point_configuration_transformation_configuration_content_transformation.dart';

class ObjectLambdaAccessPointConfigurationTransformationConfiguration {
  /// Actions of an Object Lambda Access Point configuration. Valid values: `GetObject`.
  final pulumi.Input<List<String>> actions;
  /// Content transformation of an Object Lambda Access Point configuration. See `contentTransformation` Block below for more details.
  final pulumi.Input<ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation> contentTransformation;

  /// Creates a new [ObjectLambdaAccessPointConfigurationTransformationConfiguration].
  /// [actions] Actions of an Object Lambda Access Point configuration. Valid values: `GetObject`.
  /// [contentTransformation] Content transformation of an Object Lambda Access Point configuration. See `contentTransformation` Block below for more details.
  const ObjectLambdaAccessPointConfigurationTransformationConfiguration({
    required this.actions,
    required this.contentTransformation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': actions,
      'contentTransformation': pulumi.Input.mapInputValue<ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation, Map<String, dynamic>>(contentTransformation, (value) => value.toMap()),
    };
  }

  factory ObjectLambdaAccessPointConfigurationTransformationConfiguration.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointConfigurationTransformationConfiguration(
      actions: pulumi.Input.fromValue((map['actions'] as List).cast<String>()),
      contentTransformation: pulumi.Input.fromValue(ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation.fromMap((map['contentTransformation']! as Map).cast<String, dynamic>())),
    );
  }
}
