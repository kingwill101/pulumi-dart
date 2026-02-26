// ignore_for_file: unused_element, unnecessary_cast

class SubscriberSourceCustomLogSourceResourceProvider {
  /// The location of the partition in the Amazon S3 bucket for Security Lake.
  final String location;

  /// The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  final String roleArn;

  SubscriberSourceCustomLogSourceResourceProvider({
    required this.location,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['roleArn'] = roleArn;
    return map;
  }

  factory SubscriberSourceCustomLogSourceResourceProvider.fromMap(
      Map<String, dynamic> map) {
    return SubscriberSourceCustomLogSourceResourceProvider(
      location: map['location'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
