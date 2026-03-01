// ignore_for_file: unused_element, unnecessary_cast


class SubscriberSourceCustomLogSourceResourceProvider {
  /// The location of the partition in the Amazon S3 bucket for Security Lake.
  final String location;
  /// The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  final String roleArn;

  /// Creates a new [SubscriberSourceCustomLogSourceResourceProvider].
  /// [location] The location of the partition in the Amazon S3 bucket for Security Lake.
  /// [roleArn] The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  SubscriberSourceCustomLogSourceResourceProvider({
    required this.location,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'roleArn': roleArn,
    };
  }

  factory SubscriberSourceCustomLogSourceResourceProvider.fromMap(Map<String, dynamic> map) {
    return SubscriberSourceCustomLogSourceResourceProvider(
      location: map['location'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}

