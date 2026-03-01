// ignore_for_file: unused_element, unnecessary_cast


/// Domain purchase consent object, representing acceptance of applicable legal agreements.
class DomainPurchaseConsent {
  /// Timestamp when the agreements were accepted.
  final String? agreedAt;
  /// Client IP address.
  final String? agreedBy;
  /// List of applicable legal agreement keys. This list can be retrieved using ListLegalAgreements API under <code>TopLevelDomain</code> resource.
  final List<String>? agreementKeys;

  /// Creates a new [DomainPurchaseConsent].
  /// [agreedAt] Timestamp when the agreements were accepted.
  /// [agreedBy] Client IP address.
  /// [agreementKeys] List of applicable legal agreement keys. This list can be retrieved using ListLegalAgreements API under <code>TopLevelDomain</code> resource.
  DomainPurchaseConsent({
    this.agreedAt,
    this.agreedBy,
    this.agreementKeys,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'agreedAt': ?agreedAt,
      'agreedBy': ?agreedBy,
      'agreementKeys': ?agreementKeys,
    };
  }

  factory DomainPurchaseConsent.fromMap(Map<String, dynamic> map) {
    return DomainPurchaseConsent(
      agreedAt: map['agreedAt'] == null ? null : map['agreedAt'] as String,
      agreedBy: map['agreedBy'] == null ? null : map['agreedBy'] as String,
      agreementKeys: map['agreementKeys'] == null ? null : (map['agreementKeys'] as List).cast<String>(),
    );
  }
}

