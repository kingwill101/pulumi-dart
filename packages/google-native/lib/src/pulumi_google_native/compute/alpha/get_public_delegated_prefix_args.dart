// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPublicDelegatedPrefix.
class GetPublicDelegatedPrefixArgs {
  final Input<String>? project;
  final Input<String> publicDelegatedPrefix;
  final Input<String> region;

  GetPublicDelegatedPrefixArgs({
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

  factory GetPublicDelegatedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixArgs(
      project: Input.asOptionalInput<String>(map['project']),
      publicDelegatedPrefix:
          Input.asInput<String>(map['publicDelegatedPrefix']),
      region: Input.asInput<String>(map['region']),
    );
  }
}
