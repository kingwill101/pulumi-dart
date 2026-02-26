// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../classification_export_configuration_s3_destination/classification_export_configuration_s3_destination.dart';

/// The set of arguments for ClassificationExportConfiguration.
class ClassificationExportConfigurationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// Configuration block for a S3 Destination. Defined below
  final Input<ClassificationExportConfigurationS3Destination> s3Destination;

  ClassificationExportConfigurationArgs({
    this.region,
    required this.s3Destination,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['s3Destination'] = Input.mapInputValue<
        ClassificationExportConfigurationS3Destination,
        Map<String, dynamic>>(s3Destination, (value) => value.toMap());
    return map;
  }

  factory ClassificationExportConfigurationArgs.fromMap(
      Map<String, dynamic> map) {
    return ClassificationExportConfigurationArgs(
      region: Input.asOptionalInput<String>(map['region']),
      s3Destination:
          Input.asInput<ClassificationExportConfigurationS3Destination>(
              map['s3Destination']),
    );
  }
}
