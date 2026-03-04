// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'classification_export_configuration_s3_destination.dart';

/// Input properties used for looking up and filtering ClassificationExportConfiguration resources.
class ClassificationExportConfigurationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Configuration block for a S3 Destination. Defined below
  final pulumi.Input<ClassificationExportConfigurationS3Destination>?
  s3Destination;

  /// Creates a new [ClassificationExportConfigurationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [s3Destination] Configuration block for a S3 Destination. Defined below
  ClassificationExportConfigurationState({this.region, this.s3Destination});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      's3Destination':
          ?pulumi.Input.mapOptionalInputValue<
            ClassificationExportConfigurationS3Destination,
            Map<String, dynamic>
          >(s3Destination, (value) => value.toMap()),
    };
  }

  factory ClassificationExportConfigurationState.fromMap(
    Map<String, dynamic> map,
  ) {
    return ClassificationExportConfigurationState(
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      s3Destination: (() {
        final guardedValue = map['s3Destination'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ClassificationExportConfigurationS3Destination.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
