// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_tl_validation_subject_alternative_name.dart';
import 'get_virtual_node_spec_listener_tl_validation_trust.dart';

class GetVirtualNodeSpecListenerTlValidation {
  final List<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName> subjectAlternativeNames;
  final List<GetVirtualNodeSpecListenerTlValidationTrust> trusts;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidation].
  /// [subjectAlternativeNames] Required.
  /// [trusts] Required.
  GetVirtualNodeSpecListenerTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames': pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName, Map<String, dynamic>>(subjectAlternativeNames, (value) => value.toMap()),
      'trusts': pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlValidationTrust, Map<String, dynamic>>(trusts, (value) => value.toMap()),
    };
  }

  factory GetVirtualNodeSpecListenerTlValidation.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidation(
      subjectAlternativeNames: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName>(map['subjectAlternativeNames'], (value) => GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName.fromMap((value as Map).cast<String, dynamic>())),
      trusts: pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlValidationTrust>(map['trusts'], (value) => GetVirtualNodeSpecListenerTlValidationTrust.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

