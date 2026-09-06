// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Domain purchase consent object, representing acceptance of applicable legal agreements.
class DomainPurchaseConsent {
  /// Timestamp when the agreements were accepted.
  final pulumi.Input<String?>? agreedAt;
  /// Client IP address.
  final pulumi.Input<String?>? agreedBy;
  /// List of applicable legal agreement keys. This list can be retrieved using ListLegalAgreements API under &lt;code&gt;TopLevelDomain&lt;/code&gt; resource.
  final pulumi.Input<List<String>?>? agreementKeys;

  /// Creates a new [DomainPurchaseConsent].
  /// [agreedAt] Timestamp when the agreements were accepted.
  /// [agreedBy] Client IP address.
  /// [agreementKeys] List of applicable legal agreement keys. This list can be retrieved using ListLegalAgreements API under &lt;code&gt;TopLevelDomain&lt;/code&gt; resource.
  const DomainPurchaseConsent({
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
      agreedAt: (() { final guardedValue = map['agreedAt']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agreedBy: (() { final guardedValue = map['agreedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      agreementKeys: (() { final guardedValue = map['agreementKeys']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
