// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InferenceComponentSpecificationStartupParameters {
  /// Timeout in seconds for the inference container to pass health check. Valid values: `60`-`3600`.
  final pulumi.Input<int?>? containerStartupHealthCheckTimeoutInSeconds;
  /// Timeout in seconds to download and extract the model. Valid values: `60`-`3600`.
  final pulumi.Input<int?>? modelDataDownloadTimeoutInSeconds;

  /// Creates a new [InferenceComponentSpecificationStartupParameters].
  /// [containerStartupHealthCheckTimeoutInSeconds] Timeout in seconds for the inference container to pass health check. Valid values: `60`-`3600`.
  /// [modelDataDownloadTimeoutInSeconds] Timeout in seconds to download and extract the model. Valid values: `60`-`3600`.
  const InferenceComponentSpecificationStartupParameters({
    this.containerStartupHealthCheckTimeoutInSeconds,
    this.modelDataDownloadTimeoutInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerStartupHealthCheckTimeoutInSeconds': ?containerStartupHealthCheckTimeoutInSeconds,
      'modelDataDownloadTimeoutInSeconds': ?modelDataDownloadTimeoutInSeconds,
    };
  }

  factory InferenceComponentSpecificationStartupParameters.fromMap(Map<String, dynamic> map) {
    return InferenceComponentSpecificationStartupParameters(
      containerStartupHealthCheckTimeoutInSeconds: (() { final guardedValue = map['containerStartupHealthCheckTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      modelDataDownloadTimeoutInSeconds: (() { final guardedValue = map['modelDataDownloadTimeoutInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
