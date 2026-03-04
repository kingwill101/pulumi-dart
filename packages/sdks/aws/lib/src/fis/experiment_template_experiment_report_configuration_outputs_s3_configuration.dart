// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration {
  /// The name of the destination bucket.
  final pulumi.Input<String> bucketName;

  /// The bucket prefix.
  final pulumi.Input<String>? prefix;

  /// Creates a new [ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration].
  /// [bucketName] The name of the destination bucket.
  /// [prefix] The bucket prefix.
  ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration({
    required this.bucketName,
    this.prefix,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'bucketName': bucketName, 'prefix': ?prefix};
  }

  factory ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration.fromMap(
    Map<String, dynamic> map,
  ) {
    return ExperimentTemplateExperimentReportConfigurationOutputsS3Configuration(
      bucketName: pulumi.Input.fromValue(map['bucketName'] as String),
      prefix: (() {
        final guardedValue = map['prefix'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
