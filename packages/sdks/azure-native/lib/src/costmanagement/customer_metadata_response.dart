// ignore_for_file: unused_element, unnecessary_cast


/// The customer billing metadata
class CustomerMetadataResponse {
  /// Customer billing account id
  final String billingAccountId;
  /// Customer billing profile id
  final String billingProfileId;

  /// Creates a new [CustomerMetadataResponse].
  /// [billingAccountId] Customer billing account id
  /// [billingProfileId] Customer billing profile id
  CustomerMetadataResponse({
    required this.billingAccountId,
    required this.billingProfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'billingProfileId': billingProfileId,
    };
  }

  factory CustomerMetadataResponse.fromMap(Map<String, dynamic> map) {
    return CustomerMetadataResponse(
      billingAccountId: map['billingAccountId'] as String,
      billingProfileId: map['billingProfileId'] as String,
    );
  }
}

