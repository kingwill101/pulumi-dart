// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_listener_tl_validation_subject_alternative_name_match.dart';

class GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName {
  final pulumi.Input<List<GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch>> matches;

  /// Creates a new [GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName].
  /// [matches] Required.
  GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName({
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.mapInputValue<List<GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName(
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch>(map['matches']!, (value) => GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeNameMatch.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

