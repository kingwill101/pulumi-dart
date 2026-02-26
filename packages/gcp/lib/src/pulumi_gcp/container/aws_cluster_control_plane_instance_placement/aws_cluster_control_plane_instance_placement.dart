// ignore_for_file: unused_element, unnecessary_cast

class AwsClusterControlPlaneInstancePlacement {
  /// The tenancy for the instance. Possible values: TENANCY_UNSPECIFIED, DEFAULT, DEDICATED, HOST
  final String? tenancy;

  AwsClusterControlPlaneInstancePlacement({
    this.tenancy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tenancyValue = tenancy;
    if (tenancyValue != null) {
      map['tenancy'] = tenancyValue;
    }
    return map;
  }

  factory AwsClusterControlPlaneInstancePlacement.fromMap(
      Map<String, dynamic> map) {
    return AwsClusterControlPlaneInstancePlacement(
      tenancy: map['tenancy'] == null ? null : map['tenancy'] as String,
    );
  }
}
