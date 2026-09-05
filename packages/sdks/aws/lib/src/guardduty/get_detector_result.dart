// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_detector_feature.dart';

/// Result data returned by getDetector.
class GetDetectorResult {
  /// ARN of the detector.
  final String? arn;
  /// Current configuration of the detector features.
  final List<GetDetectorFeature>? features;
  /// The frequency of notifications sent about subsequent finding occurrences.
  final String? findingPublishingFrequency;
  final String? id;
  final String? region;
  /// Service-linked role that grants GuardDuty access to the resources in the AWS account.
  final String? serviceRoleArn;
  /// Current status of the detector.
  final String? status;
  /// Map of tags for the resource.
  final Map<String, String>? tags;

  /// Creates a new [GetDetectorResult].
  /// [arn] ARN of the detector.
  /// [features] Current configuration of the detector features.
  /// [findingPublishingFrequency] The frequency of notifications sent about subsequent finding occurrences.
  /// [id] Optional.
  /// [region] Optional.
  /// [serviceRoleArn] Service-linked role that grants GuardDuty access to the resources in the AWS account.
  /// [status] Current status of the detector.
  /// [tags] Map of tags for the resource.
  const GetDetectorResult({
    this.arn,
    this.features,
    this.findingPublishingFrequency,
    this.id,
    this.region,
    this.serviceRoleArn,
    this.status,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'features': ?(() { final guardedValue = features; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetDetectorFeature, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'findingPublishingFrequency': ?findingPublishingFrequency,
      'id': ?id,
      'region': ?region,
      'serviceRoleArn': ?serviceRoleArn,
      'status': ?status,
      'tags': ?tags,
    };
  }

  factory GetDetectorResult.fromMap(Map<String, dynamic> map) {
    return GetDetectorResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      features: (() { final guardedValue = map['features']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetDetectorFeature>(guardedValue, (value) => GetDetectorFeature.fromMap((value as Map).cast<String, dynamic>())); })(),
      findingPublishingFrequency: (() { final guardedValue = map['findingPublishingFrequency']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      serviceRoleArn: (() { final guardedValue = map['serviceRoleArn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
    );
  }
}
