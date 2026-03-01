// ignore_for_file: unused_element, unnecessary_cast


/// The CSPM monitoring for AzureDevOps offering
class CspmMonitorAzureDevOpsOffering {
  /// The type of the security offering.
  /// Expected value is 'CspmMonitorAzureDevOps'.
  final String offeringType;

  /// Creates a new [CspmMonitorAzureDevOpsOffering].
  /// [offeringType] The type of the security offering.
  CspmMonitorAzureDevOpsOffering({
    required this.offeringType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offeringType': offeringType,
    };
  }

  factory CspmMonitorAzureDevOpsOffering.fromMap(Map<String, dynamic> map) {
    return CspmMonitorAzureDevOpsOffering(
      offeringType: map['offeringType'] as String,
    );
  }
}

