// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_detector_feature.dart';

/// Result data returned by getDetector.
class GetDetectorResult {
  /// ARN of the detector.
  final String arn;

  /// Current configuration of the detector features.
  final List<GetDetectorFeature> features;

  /// The frequency of notifications sent about subsequent finding occurrences.
  final String findingPublishingFrequency;
  final String id;
  final String region;

  /// Service-linked role that grants GuardDuty access to the resources in the AWS account.
  final String serviceRoleArn;

  /// Current status of the detector.
  final String status;

  /// Map of tags for the resource.
  final Map<String, String> tags;

  /// Creates a new [GetDetectorResult].
  /// [arn] ARN of the detector.
  /// [features] Current configuration of the detector features.
  /// [findingPublishingFrequency] The frequency of notifications sent about subsequent finding occurrences.
  /// [id] Required.
  /// [region] Required.
  /// [serviceRoleArn] Service-linked role that grants GuardDuty access to the resources in the AWS account.
  /// [status] Current status of the detector.
  /// [tags] Map of tags for the resource.
  GetDetectorResult({
    required this.arn,
    required this.features,
    required this.findingPublishingFrequency,
    required this.id,
    required this.region,
    required this.serviceRoleArn,
    required this.status,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': arn,
      'features':
          pulumi.Input.encodeList<GetDetectorFeature, Map<String, dynamic>>(
            features,
            (value) => value.toMap(),
          ),
      'findingPublishingFrequency': findingPublishingFrequency,
      'id': id,
      'region': region,
      'serviceRoleArn': serviceRoleArn,
      'status': status,
      'tags': tags,
    };
  }

  factory GetDetectorResult.fromMap(Map<String, dynamic> map) {
    return GetDetectorResult(
      arn: map['arn'] as String,
      features: pulumi.Input.decodeList<GetDetectorFeature>(
        map['features'],
        (value) =>
            GetDetectorFeature.fromMap((value as Map).cast<String, dynamic>()),
      ),
      findingPublishingFrequency: map['findingPublishingFrequency'] as String,
      id: map['id'] as String,
      region: map['region'] as String,
      serviceRoleArn: map['serviceRoleArn'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
