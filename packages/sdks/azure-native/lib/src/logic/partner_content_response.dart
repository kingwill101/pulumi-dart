// ignore_for_file: unused_element, unnecessary_cast

import 'b2_bpartner_content_response.dart';

/// The integration account partner content.
class PartnerContentResponse {
  /// The B2B partner content.
  final B2BPartnerContentResponse? b2b;

  /// Creates a new [PartnerContentResponse].
  /// [b2b] The B2B partner content.
  PartnerContentResponse({
    this.b2b,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'b2b': ?b2b == null ? null : b2b!.toMap(),
    };
  }

  factory PartnerContentResponse.fromMap(Map<String, dynamic> map) {
    return PartnerContentResponse(
      b2b: map['b2b'] == null ? null : B2BPartnerContentResponse.fromMap((map['b2b'] as Map).cast<String, dynamic>()),
    );
  }
}

