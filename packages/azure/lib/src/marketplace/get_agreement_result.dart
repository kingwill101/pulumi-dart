// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getAgreement.
class GetAgreementResult {
  /// Whether the Marketplace Agreement has been accepted.
  final bool accepted;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String licenseTextLink;
  final String offer;
  final String plan;
  final String privacyPolicyLink;
  final String publisher;

  /// Creates a new [GetAgreementResult].
  /// [accepted] Whether the Marketplace Agreement has been accepted.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [licenseTextLink] Required.
  /// [offer] Required.
  /// [plan] Required.
  /// [privacyPolicyLink] Required.
  /// [publisher] Required.
  GetAgreementResult({
    required this.accepted,
    required this.id,
    required this.licenseTextLink,
    required this.offer,
    required this.plan,
    required this.privacyPolicyLink,
    required this.publisher,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accepted': accepted,
      'id': id,
      'licenseTextLink': licenseTextLink,
      'offer': offer,
      'plan': plan,
      'privacyPolicyLink': privacyPolicyLink,
      'publisher': publisher,
    };
  }

  factory GetAgreementResult.fromMap(Map<String, dynamic> map) {
    return GetAgreementResult(
      accepted: map['accepted'] as bool,
      id: map['id'] as String,
      licenseTextLink: map['licenseTextLink'] as String,
      offer: map['offer'] as String,
      plan: map['plan'] as String,
      privacyPolicyLink: map['privacyPolicyLink'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

