// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterControlPlaneInstancePlacement {
  /// The tenancy for the instance. Possible values: TENANCY_UNSPECIFIED, DEFAULT, DEDICATED, HOST
  final String? tenancy;

  /// Creates a new [AwsClusterControlPlaneInstancePlacement].
  /// [tenancy] The tenancy for the instance. Possible values: TENANCY_UNSPECIFIED, DEFAULT, DEDICATED, HOST
  AwsClusterControlPlaneInstancePlacement({this.tenancy});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'tenancy': ?tenancy};
  }

  factory AwsClusterControlPlaneInstancePlacement.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsClusterControlPlaneInstancePlacement(
      tenancy: map['tenancy'] == null ? null : map['tenancy'] as String,
    );
  }
}
