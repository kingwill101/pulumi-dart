// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'object_lambda_access_point_configuration_transformation_configuration.dart';

class ObjectLambdaAccessPointConfiguration {
  /// Allowed features. Valid values: `GetObject-Range`, `GetObject-PartNumber`.
  final List<String>? allowedFeatures;
  /// Whether or not the CloudWatch metrics configuration is enabled.
  final bool? cloudWatchMetricsEnabled;
  /// Standard access point associated with the Object Lambda Access Point.
  final String supportingAccessPoint;
  /// List of transformation configurations for the Object Lambda Access Point. See Transformation Configuration below for more details.
  final List<ObjectLambdaAccessPointConfigurationTransformationConfiguration> transformationConfigurations;

  /// Creates a new [ObjectLambdaAccessPointConfiguration].
  /// [allowedFeatures] Allowed features. Valid values: `GetObject-Range`, `GetObject-PartNumber`.
  /// [cloudWatchMetricsEnabled] Whether or not the CloudWatch metrics configuration is enabled.
  /// [supportingAccessPoint] Standard access point associated with the Object Lambda Access Point.
  /// [transformationConfigurations] List of transformation configurations for the Object Lambda Access Point. See Transformation Configuration below for more details.
  ObjectLambdaAccessPointConfiguration({
    this.allowedFeatures,
    this.cloudWatchMetricsEnabled,
    required this.supportingAccessPoint,
    required this.transformationConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedFeatures': ?allowedFeatures,
      'cloudWatchMetricsEnabled': ?cloudWatchMetricsEnabled,
      'supportingAccessPoint': supportingAccessPoint,
      'transformationConfigurations': pulumi.Input.encodeList<ObjectLambdaAccessPointConfigurationTransformationConfiguration, Map<String, dynamic>>(transformationConfigurations, (value) => value.toMap()),
    };
  }

  factory ObjectLambdaAccessPointConfiguration.fromMap(Map<String, dynamic> map) {
    return ObjectLambdaAccessPointConfiguration(
      allowedFeatures: map['allowedFeatures'] == null ? null : (map['allowedFeatures'] as List).cast<String>(),
      cloudWatchMetricsEnabled: map['cloudWatchMetricsEnabled'] == null ? null : map['cloudWatchMetricsEnabled'] as bool,
      supportingAccessPoint: map['supportingAccessPoint'] as String,
      transformationConfigurations: pulumi.Input.decodeList<ObjectLambdaAccessPointConfigurationTransformationConfiguration>(map['transformationConfigurations'], (value) => ObjectLambdaAccessPointConfigurationTransformationConfiguration.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

