// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_gateway_spec_listener_tl_validation_subject_alternative_name.dart';
import 'get_virtual_gateway_spec_listener_tl_validation_trust.dart';

class GetVirtualGatewaySpecListenerTlValidation {
  final List<GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName> subjectAlternativeNames;
  final List<GetVirtualGatewaySpecListenerTlValidationTrust> trusts;

  /// Creates a new [GetVirtualGatewaySpecListenerTlValidation].
  /// [subjectAlternativeNames] Required.
  /// [trusts] Required.
  GetVirtualGatewaySpecListenerTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': pulumi.Input.encodeList<GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'trusts': pulumi.Input.encodeList<GetVirtualGatewaySpecListenerTlValidationTrust, Map<String, dynamic>>(trusts, (value) => value.toMap()),
    };
  }

  factory GetVirtualGatewaySpecListenerTlValidation.fromMap(Map<String, dynamic> map) {
    return GetVirtualGatewaySpecListenerTlValidation(
      subjectAlternativeNames: pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName>(map['subjectAlternativeNames'], (value) => GetVirtualGatewaySpecListenerTlValidationSubjectAlternativeName.fromMap((value as Map).cast<String, dynamic>())),
      trusts: pulumi.Input.decodeList<GetVirtualGatewaySpecListenerTlValidationTrust>(map['trusts'], (value) => GetVirtualGatewaySpecListenerTlValidationTrust.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

