// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlobalPublicDelegatedPrefix.
class GetGlobalPublicDelegatedPrefixComputeBetaArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;

  GetGlobalPublicDelegatedPrefixComputeBetaArgs({
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

  factory GetGlobalPublicDelegatedPrefixComputeBetaArgs.fromMap(
      Map<String, dynamic> map) {
    return GetGlobalPublicDelegatedPrefixComputeBetaArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      publicDelegatedPrefix:
          pulumi.Input.asInput<String>(map['publicDelegatedPrefix']),
    );
  }
}
