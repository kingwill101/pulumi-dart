// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPublicDelegatedPrefix.
class GetPublicDelegatedPrefixComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicDelegatedPrefix;
  final pulumi.Input<String> region;

  GetPublicDelegatedPrefixComputeV1Args({
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

  factory GetPublicDelegatedPrefixComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPublicDelegatedPrefixComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      publicDelegatedPrefix:
          pulumi.Input.asInput<String>(map['publicDelegatedPrefix']),
      region: pulumi.Input.asInput<String>(map['region']),
    );
  }
}
