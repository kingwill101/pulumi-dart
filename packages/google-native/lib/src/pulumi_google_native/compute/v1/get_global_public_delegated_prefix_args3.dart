// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGlobalPublicDelegatedPrefix.
class GetGlobalPublicDelegatedPrefixArgs3 {
  final Input<String>? project;
  final Input<String> publicDelegatedPrefix;

  GetGlobalPublicDelegatedPrefixArgs3({
    this.project,
    required this.publicDelegatedPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['publicDelegatedPrefix'] = publicDelegatedPrefix;
    return map;
  }

  factory GetGlobalPublicDelegatedPrefixArgs3.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalPublicDelegatedPrefixArgs3(
      project: Input.asOptionalInput<String>(map['project']),
      publicDelegatedPrefix:
          Input.asInput<String>(map['publicDelegatedPrefix']),
    );
  }
}
