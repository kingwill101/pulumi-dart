// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPublicAdvertisedPrefix.
class GetPublicAdvertisedPrefixComputeV1Args {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicAdvertisedPrefix;

  GetPublicAdvertisedPrefixComputeV1Args({
    this.project,
    required this.publicAdvertisedPrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['publicAdvertisedPrefix'] = publicAdvertisedPrefix;
    return map;
  }

  factory GetPublicAdvertisedPrefixComputeV1Args.fromMap(
      Map<String, dynamic> map) {
    return GetPublicAdvertisedPrefixComputeV1Args(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      publicAdvertisedPrefix:
          pulumi.Input.asInput<String>(map['publicAdvertisedPrefix']),
    );
  }
}
