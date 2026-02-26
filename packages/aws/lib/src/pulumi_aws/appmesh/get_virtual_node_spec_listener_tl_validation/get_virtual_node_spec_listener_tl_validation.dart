// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_listener_tl_validation_subject_alternative_name/get_virtual_node_spec_listener_tl_validation_subject_alternative_name.dart';
import '../get_virtual_node_spec_listener_tl_validation_trust/get_virtual_node_spec_listener_tl_validation_trust.dart';

class GetVirtualNodeSpecListenerTlValidation {
  final List<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName>
      subjectAlternativeNames;
  final List<GetVirtualNodeSpecListenerTlValidationTrust> trusts;

  GetVirtualNodeSpecListenerTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['subjectAlternativeNames'] = Input.encodeList<
            GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName,
            Map<String, dynamic>>(
        subjectAlternativeNames, (value) => value.toMap());
    map['trusts'] = Input.encodeList<
        GetVirtualNodeSpecListenerTlValidationTrust,
        Map<String, dynamic>>(trusts, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerTlValidation.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidation(
      subjectAlternativeNames: Input.decodeList<
              GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName>(
          map['subjectAlternativeNames'],
          (value) =>
              GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName
                  .fromMap((value as Map).cast<String, dynamic>())),
      trusts: Input.decodeList<GetVirtualNodeSpecListenerTlValidationTrust>(
          map['trusts'],
          (value) => GetVirtualNodeSpecListenerTlValidationTrust.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
