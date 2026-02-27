// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPublicDelegatedPrefix.
class GetPublicDelegatedPrefixComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;
  final pulumi.Input<String> region;

  GetPublicDelegatedPrefixComputeBetaArgs({
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

  factory GetPublicDelegatedPrefixComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      publicDelegatedPrefix:
          pulumi.Input.asInput<String>(map['publicDelegatedPrefix']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
