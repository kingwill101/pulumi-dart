// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_detector_feature_additional_configuration.dart';

class GetDetectorFeature {
  /// Additional feature configuration.
  final pulumi.Input<List<GetDetectorFeatureAdditionalConfiguration>> additionalConfigurations;
  /// The name of the detector feature.
  final pulumi.Input<String> name;
  /// Current status of the detector.
  final pulumi.Input<String> status;

  /// Creates a new [GetDetectorFeature].
  /// [additionalConfigurations] Additional feature configuration.
  /// [name] The name of the detector feature.
  /// [status] Current status of the detector.
  const GetDetectorFeature({
    required this.additionalConfigurations,
    required this.name,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalConfigurations': pulumi.Input.mapInputValue<List<GetDetectorFeatureAdditionalConfiguration>, List<Map<String, dynamic>>>(additionalConfigurations, (value) => pulumi.Input.encodeList<GetDetectorFeatureAdditionalConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'status': status,
    };
  }

  factory GetDetectorFeature.fromMap(Map<String, dynamic> map) {
    return GetDetectorFeature(
      additionalConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetDetectorFeatureAdditionalConfiguration>(map['additionalConfigurations']!, (value) => GetDetectorFeatureAdditionalConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
