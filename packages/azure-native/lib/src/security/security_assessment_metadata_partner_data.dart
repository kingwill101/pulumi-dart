// ignore_for_file: unused_element, unnecessary_cast


/// Describes the partner that created the assessment
class SecurityAssessmentMetadataPartnerData {
  /// Name of the company of the partner
  final String partnerName;
  /// Name of the product of the partner that created the assessment
  final String? productName;
  /// Secret to authenticate the partner and verify it created the assessment - write only
  final String secret;

  /// Creates a new [SecurityAssessmentMetadataPartnerData].
  /// [partnerName] Name of the company of the partner
  /// [productName] Name of the product of the partner that created the assessment
  /// [secret] Secret to authenticate the partner and verify it created the assessment - write only
  SecurityAssessmentMetadataPartnerData({
    required this.partnerName,
    this.productName,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerName': partnerName,
      'productName': ?productName,
      'secret': secret,
    };
  }

  factory SecurityAssessmentMetadataPartnerData.fromMap(Map<String, dynamic> map) {
    return SecurityAssessmentMetadataPartnerData(
      partnerName: map['partnerName'] as String,
      productName: map['productName'] == null ? null : map['productName'] as String,
      secret: map['secret'] as String,
    );
  }
}

