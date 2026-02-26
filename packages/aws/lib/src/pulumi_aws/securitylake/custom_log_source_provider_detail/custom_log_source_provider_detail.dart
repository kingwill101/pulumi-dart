// ignore_for_file: unused_element, unnecessary_cast

class CustomLogSourceProviderDetail {
  /// The location of the partition in the Amazon S3 bucket for Security Lake.
  final String location;

  /// The ARN of the IAM role to be used by the entity putting logs into your custom source partition.
  final String roleArn;

  CustomLogSourceProviderDetail({
    required this.location,
    required this.roleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    map['roleArn'] = roleArn;
    return map;
  }

  factory CustomLogSourceProviderDetail.fromMap(Map<String, dynamic> map) {
    return CustomLogSourceProviderDetail(
      location: map['location'] as String,
      roleArn: map['roleArn'] as String,
    );
  }
}
