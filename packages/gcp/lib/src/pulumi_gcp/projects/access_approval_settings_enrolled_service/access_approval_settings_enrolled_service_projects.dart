// ignore_for_file: unused_element, unnecessary_cast

class AccessApprovalSettingsEnrolledServiceProjects {
  /// The product for which Access Approval will be enrolled. Allowed values are listed (case-sensitive):
  /// all
  /// appengine.googleapis.com
  /// bigquery.googleapis.com
  /// bigtable.googleapis.com
  /// cloudkms.googleapis.com
  /// compute.googleapis.com
  /// dataflow.googleapis.com
  /// iam.googleapis.com
  /// pubsub.googleapis.com
  /// storage.googleapis.com
  final String cloudProduct;

  /// The enrollment level of the service.
  /// Default value is `BLOCK_ALL`.
  /// Possible values are: `BLOCK_ALL`.
  final String? enrollmentLevel;

  AccessApprovalSettingsEnrolledServiceProjects({
    required this.cloudProduct,
    this.enrollmentLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudProduct'] = cloudProduct;
    final enrollmentLevelValue = enrollmentLevel;
    if (enrollmentLevelValue != null) {
      map['enrollmentLevel'] = enrollmentLevelValue;
    }
    return map;
  }

  factory AccessApprovalSettingsEnrolledServiceProjects.fromMap(
      Map<String, dynamic> map) {
    return AccessApprovalSettingsEnrolledServiceProjects(
      cloudProduct: map['cloudProduct'] as String,
      enrollmentLevel: map['enrollmentLevel'] == null
          ? null
          : map['enrollmentLevel'] as String,
    );
  }
}
