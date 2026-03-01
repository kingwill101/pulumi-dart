// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_export_configuration_s3_destination.dart';

/// {@template pulumi_macie2_classification_export_configuration_classification_export_configuration_args_doc}
/// The set of arguments for ClassificationExportConfiguration.
/// {@endtemplate}
/// {@macro pulumi_macie2_classification_export_configuration_classification_export_configuration_args_doc}
class ClassificationExportConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for a S3 Destination. Defined below
  final pulumi.Input<ClassificationExportConfigurationS3Destination>
  s3Destination;

  /// Creates a new [ClassificationExportConfigurationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Destination] Configuration block for a S3 Destination. Defined below
  ClassificationExportConfigurationArgs({
    String? region,
    required ClassificationExportConfigurationS3Destination s3Destination,
  }) : region = pulumi.Input.asOptionalInput<String>(region),
       s3Destination =
           pulumi.Input.asInput<ClassificationExportConfigurationS3Destination>(
             s3Destination,
           );

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      's3Destination':
          pulumi.Input.mapInputValue<
            ClassificationExportConfigurationS3Destination,
            Map<String, dynamic>
          >(s3Destination, (value) => value.toMap()),
    };
  }

  factory ClassificationExportConfigurationArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClassificationExportConfigurationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      s3Destination: ClassificationExportConfigurationS3Destination.fromMap(
        (map['s3Destination'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
