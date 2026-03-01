// ignore_for_file: unused_element, unnecessary_cast

import 'b2_bpartner_content.dart';

/// The integration account partner content.
class PartnerContent {
  /// The B2B partner content.
  final B2BPartnerContent? b2b;

  /// Creates a new [PartnerContent].
  /// [b2b] The B2B partner content.
  PartnerContent({
    this.b2b,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'b2b': ?b2b == null ? null : b2b!.toMap(),
    };
  }

  factory PartnerContent.fromMap(Map<String, dynamic> map) {
    return PartnerContent(
      b2b: map['b2b'] == null ? null : B2BPartnerContent.fromMap((map['b2b'] as Map).cast<String, dynamic>()),
    );
  }
}

