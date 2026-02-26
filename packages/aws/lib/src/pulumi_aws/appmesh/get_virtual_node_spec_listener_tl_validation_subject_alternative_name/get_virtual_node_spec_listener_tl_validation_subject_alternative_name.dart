// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_listener_tl_validation_subject_alternative_name_match/get_virtual_node_spec_listener_tl_validation_subject_alternative_name_match.dart';

class GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName {
  final List<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch>
      matches;

  GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName({
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['matches'] = Input.encodeList<
        GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch,
        Map<String, dynamic>>(matches, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName.fromMap(
      Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName(
      matches: Input.decodeList<
              GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch>(
          map['matches'],
          (value) =>
              GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
