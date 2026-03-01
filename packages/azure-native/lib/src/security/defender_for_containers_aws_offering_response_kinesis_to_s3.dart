// ignore_for_file: unused_element, unnecessary_cast


/// The kinesis to s3 connection configuration
class DefenderForContainersAwsOfferingResponseKinesisToS3 {
  /// The cloud role ARN in AWS used by Kinesis to transfer data into S3
  final String? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingResponseKinesisToS3].
  /// [cloudRoleArn] The cloud role ARN in AWS used by Kinesis to transfer data into S3
  DefenderForContainersAwsOfferingResponseKinesisToS3({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingResponseKinesisToS3.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingResponseKinesisToS3(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
    );
  }
}

