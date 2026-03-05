// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'b2_bpartner_content.dart';

/// The integration account partner content.
class PartnerContent {
  /// The B2B partner content.
  final pulumi.Input<B2BPartnerContent>? b2b;

  /// Creates a new [PartnerContent].
  /// [b2b] The B2B partner content.
  PartnerContent({
    this.b2b,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'b2b': ?pulumi.Input.mapOptionalInputValue<B2BPartnerContent, Map<String, dynamic>>(b2b, (value) => value.toMap()),
    };
  }

  factory PartnerContent.fromMap(Map<String, dynamic> map) {
    return PartnerContent(
      b2b: (() { final guardedValue = map['b2b']; if (guardedValue == null) return null; return pulumi.Input.fromValue(B2BPartnerContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

