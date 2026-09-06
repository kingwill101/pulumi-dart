// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of SnapStartResponse
class SnapStartResponse {
  /// When set to ``PublishedVersions``, Lambda creates a snapshot of the execution environment when you publish a function version.
  final pulumi.Input<dynamic>? applyOn;
  /// When you provide a [qualified Amazon Resource Name (ARN)](https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using), this response element indicates whether SnapStart is activated for the specified function version.
  final pulumi.Input<dynamic>? optimizationStatus;

  /// Creates a new [SnapStartResponse].
  /// [applyOn] When set to ``PublishedVersions``, Lambda creates a snapshot of the execution environment when you publish a function version.
  /// [optimizationStatus] When you provide a [qualified Amazon Resource Name (ARN)](https://docs.aws.amazon.com/lambda/latest/dg/configuration-versions.html#versioning-versions-using), this response element indicates whether SnapStart is activated for the specified function version.
  const SnapStartResponse({
    this.applyOn,
    this.optimizationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applyOn': ?applyOn,
      'optimizationStatus': ?optimizationStatus,
    };
  }

  factory SnapStartResponse.fromMap(Map<String, dynamic> map) {
    return SnapStartResponse(
      applyOn: (() { final guardedValue = map['applyOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      optimizationStatus: (() { final guardedValue = map['optimizationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
    );
  }
}
