// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_tl_validation_subject_alternative_name.dart';
import 'get_virtual_node_spec_listener_tl_validation_trust.dart';

class GetVirtualNodeSpecListenerTlValidation {
  final pulumi.Input<
    List<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName>
  >
  subjectAlternativeNames;
  final pulumi.Input<List<GetVirtualNodeSpecListenerTlValidationTrust>> trusts;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidation].
  /// [subjectAlternativeNames] Required.
  /// [trusts] Required.
  GetVirtualNodeSpecListenerTlValidation({
    required this.subjectAlternativeNames,
    required this.trusts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'subjectAlternativeNames':
          pulumi.Input.mapInputValue<
            List<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName>,
            List<Map<String, dynamic>>
          >(
            subjectAlternativeNames,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'trusts':
          pulumi.Input.mapInputValue<
            List<GetVirtualNodeSpecListenerTlValidationTrust>,
            List<Map<String, dynamic>>
          >(
            trusts,
            (value) =>
                pulumi.Input.encodeList<
                  GetVirtualNodeSpecListenerTlValidationTrust,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory GetVirtualNodeSpecListenerTlValidation.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecListenerTlValidation(
      subjectAlternativeNames: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName
        >(
          map['subjectAlternativeNames']!,
          (value) =>
              GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      trusts: pulumi.Input.fromValue(
        pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlValidationTrust>(
          map['trusts']!,
          (value) => GetVirtualNodeSpecListenerTlValidationTrust.fromMap(
            (value as Map).cast<String, dynamic>(),
          ),
        ),
      ),
    );
  }
}
