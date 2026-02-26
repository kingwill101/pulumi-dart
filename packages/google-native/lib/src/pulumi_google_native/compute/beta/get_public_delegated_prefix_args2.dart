// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPublicDelegatedPrefix.
class GetPublicDelegatedPrefixArgs2 {
  final Input<String>? project;
  final Input<String> publicDelegatedPrefix;
  final Input<String> region;

  GetPublicDelegatedPrefixArgs2({
    this.project,
    required this.publicDelegatedPrefix,
    required this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['publicDelegatedPrefix'] = publicDelegatedPrefix;
    map['region'] = region;
    return map;
  }

  factory GetPublicDelegatedPrefixArgs2.fromMap(Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      publicDelegatedPrefix:
          Input.asInput<String>(map['publicDelegatedPrefix']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
