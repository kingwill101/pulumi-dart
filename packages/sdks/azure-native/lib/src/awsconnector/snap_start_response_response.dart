// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SnapStartResponse
class SnapStartResponseResponse {
  /// When set to ``PublishedVersions``, Lambda creates a snapshot of the execution environment when you publish a function version.
  final pulumi.Input<String>? applyOn;
  /// When you provide a [qualified Amazon Resource Name (ARN)](https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using), this response element indicates whether SnapStart is activated for the specified function version.
  final pulumi.Input<String>? optimizationStatus;

  /// Creates a new [SnapStartResponseResponse].
  /// [applyOn] When set to ``PublishedVersions``, Lambda creates a snapshot of the execution environment when you publish a function version.
  /// [optimizationStatus] When you provide a [qualified Amazon Resource Name (ARN)](https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using), this response element indicates whether SnapStart is activated for the specified function version.
  SnapStartResponseResponse({
    this.applyOn,
    this.optimizationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOn': ?applyOn,
      'optimizationStatus': ?optimizationStatus,
    };
  }

  factory SnapStartResponseResponse.fromMap(Map<String, dynamic> map) {
    return SnapStartResponseResponse(
      applyOn: map['applyOn'] == null ? null : (map['applyOn'] as String).input(),
      optimizationStatus: map['optimizationStatus'] == null ? null : (map['optimizationStatus'] as String).input(),
    );
  }
}

