// ignore_for_file: unused_element, unnecessary_cast

class AwsNodePoolConfigInstancePlacement {
  /// The tenancy for the instance. Possible values: TENANCY_UNSPECIFIED, DEFAULT, DEDICATED, HOST
  final String? tenancy;

  /// Creates a new [AwsNodePoolConfigInstancePlacement].
  /// [tenancy] The tenancy for the instance. Possible values: TENANCY_UNSPECIFIED, DEFAULT, DEDICATED, HOST
  AwsNodePoolConfigInstancePlacement({this.tenancy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tenancy': ?tenancy};
  }

  factory AwsNodePoolConfigInstancePlacement.fromMap(Map<String, dynamic> map) {
    return AwsNodePoolConfigInstancePlacement(
      tenancy: map['tenancy'] == null ? null : map['tenancy'] as String,
    );
  }
}
