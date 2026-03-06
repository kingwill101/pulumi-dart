// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_listener_tl_validation_subject_alternative_name_match.dart';

class GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName {
  final pulumi.Input<List<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch>> matches;

  /// Creates a new [GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName].
  /// [matches] Required.
  const GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName({
    required this.matches,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'matches': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch>, List<Map<String, dynamic>>>(matches, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecListenerTlValidationSubjectAlternativeName(
      matches: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch>(map['matches']!, (value) => GetVirtualNodeSpecListenerTlValidationSubjectAlternativeNameMatch.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

