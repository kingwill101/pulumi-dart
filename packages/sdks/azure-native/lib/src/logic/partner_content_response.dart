// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'b2_bpartner_content_response.dart';

/// The integration account partner content.
class PartnerContentResponse {
  /// The B2B partner content.
  final pulumi.Input<B2BPartnerContentResponse>? b2b;

  /// Creates a new [PartnerContentResponse].
  /// [b2b] The B2B partner content.
  PartnerContentResponse({this.b2b});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'b2b':
          ?pulumi.Input.mapOptionalInputValue<
            B2BPartnerContentResponse,
            Map<String, dynamic>
          >(b2b, (value) => value.toMap()),
    };
  }

  factory PartnerContentResponse.fromMap(Map<String, dynamic> map) {
    return PartnerContentResponse(
      b2b: (() {
        final guardedValue = map['b2b'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          B2BPartnerContentResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
