// ignore_for_file: unused_element, unnecessary_cast


/// Definition of KinesisStreamSpecification
class KinesisStreamSpecification {
  /// The precision for the time and date that the stream was created.
  final String? approximateCreationDateTimePrecision;
  /// The ARN for a specific Kinesis data stream. Length Constraints: Minimum length of 37. Maximum length of 1024.
  final String? streamArn;

  /// Creates a new [KinesisStreamSpecification].
  /// [approximateCreationDateTimePrecision] The precision for the time and date that the stream was created.
  /// [streamArn] The ARN for a specific Kinesis data stream. Length Constraints: Minimum length of 37. Maximum length of 1024.
  KinesisStreamSpecification({
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
      approximateCreationDateTimePrecision: map['approximateCreationDateTimePrecision'] == null ? null : map['approximateCreationDateTimePrecision'] as String,
      streamArn: map['streamArn'] == null ? null : map['streamArn'] as String,
    );
  }
}

