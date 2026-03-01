// ignore_for_file: unused_element, unnecessary_cast


/// The customer billing metadata
class CustomerMetadata {
  /// Customer billing account id
  final String billingAccountId;
  /// Customer billing profile id
  final String billingProfileId;

  /// Creates a new [CustomerMetadata].
  /// [billingAccountId] Customer billing account id
  /// [billingProfileId] Customer billing profile id
  CustomerMetadata({
    required this.billingAccountId,
    required this.billingProfileId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingAccountId': billingAccountId,
      'billingProfileId': billingProfileId,
    };
  }

  factory CustomerMetadata.fromMap(Map<String, dynamic> map) {
    return CustomerMetadata(
      billingAccountId: map['billingAccountId'] as String,
      billingProfileId: map['billingProfileId'] as String,
    );
  }
}

