// ignore_for_file: unused_element, unnecessary_cast


/// The cloudwatch to kinesis connection configuration
class DefenderForContainersAwsOfferingResponseCloudWatchToKinesis {
  /// The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  final String? cloudRoleArn;

  /// Creates a new [DefenderForContainersAwsOfferingResponseCloudWatchToKinesis].
  /// [cloudRoleArn] The cloud role ARN in AWS used by CloudWatch to transfer data into Kinesis
  DefenderForContainersAwsOfferingResponseCloudWatchToKinesis({
    this.cloudRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudRoleArn': ?cloudRoleArn,
    };
  }

  factory DefenderForContainersAwsOfferingResponseCloudWatchToKinesis.fromMap(Map<String, dynamic> map) {
    return DefenderForContainersAwsOfferingResponseCloudWatchToKinesis(
      cloudRoleArn: map['cloudRoleArn'] == null ? null : map['cloudRoleArn'] as String,
    );
  }
}

