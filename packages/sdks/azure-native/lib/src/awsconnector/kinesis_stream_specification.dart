// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of KinesisStreamSpecification
class KinesisStreamSpecification {
  /// The precision for the time and date that the stream was created.
  final pulumi.Input<String>? approximateCreationDateTimePrecision;
  /// The ARN for a specific Kinesis data stream. Length Constraints: Minimum length of 37. Maximum length of 1024.
  final pulumi.Input<String>? streamArn;

  /// Creates a new [KinesisStreamSpecification].
  /// [approximateCreationDateTimePrecision] The precision for the time and date that the stream was created.
  /// [streamArn] The ARN for a specific Kinesis data stream. Length Constraints: Minimum length of 37. Maximum length of 1024.
  const KinesisStreamSpecification({
    this.approximateCreationDateTimePrecision,
    this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'approximateCreationDateTimePrecision': ?approximateCreationDateTimePrecision,
      'streamArn': ?streamArn,
    };
  }

  factory KinesisStreamSpecification.fromMap(Map<String, dynamic> map) {
    return KinesisStreamSpecification(
      approximateCreationDateTimePrecision: (() { final guardedValue = map['approximateCreationDateTimePrecision']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      streamArn: (() { final guardedValue = map['streamArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
