// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getGlobalPublicDelegatedPrefix.
class GetGlobalPublicDelegatedPrefixArgs2 {
  final Input<String>? project;
  final Input<String> publicDelegatedPrefix;

  GetGlobalPublicDelegatedPrefixArgs2({
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

  factory GetGlobalPublicDelegatedPrefixArgs2.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalPublicDelegatedPrefixArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      publicDelegatedPrefix:
          Input.asInput<String>(map['publicDelegatedPrefix']),
    );
  }
}
