// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_lambda_access_point_configuration_transformation_configuration_content_transformation.dart';

class ObjectLambdaAccessPointConfigurationTransformationConfiguration {
  /// The actions of an Object Lambda Access Point configuration. Valid values: `GetObject`.
  final pulumi.Input<List<String>> actions;
  /// The content transformation of an Object Lambda Access Point configuration. See Content Transformation below for more details.
  final pulumi.Input<ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation> contentTransformation;

  /// Creates a new [ObjectLambdaAccessPointConfigurationTransformationConfiguration].
  /// [actions] The actions of an Object Lambda Access Point configuration. Valid values: `GetObject`.
  /// [contentTransformation] The content transformation of an Object Lambda Access Point configuration. See Content Transformation below for more details.
  ObjectLambdaAccessPointConfigurationTransformationConfiguration({
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
      actions: ((map['actions'] as List).cast<String>()).input(),
      contentTransformation: (ObjectLambdaAccessPointConfigurationTransformationConfigurationContentTransformation.fromMap((map['contentTransformation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

