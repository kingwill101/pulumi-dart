// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_gateway_spec_listener_tl_validation_subject_alternative_name_match/get_virtual_gateway_spec_listener_tl_validation_subject_alternative_name_match.dart';

class GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName {
  final List<
          GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch>
      matches;

  GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName({
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matches'] = Input.encodeList<
        GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName(
      matches: Input.decodeList<
              GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch>(
          map['matches'],
          (value) =>
              GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
