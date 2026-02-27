// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getPublicAdvertisedPrefix.
class GetPublicAdvertisedPrefixArgs {
  final pulumi.Input<String>? project;
  final pulumi.Input<String> publicAdvertisedPrefix;

  GetPublicAdvertisedPrefixArgs({
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

  factory GetPublicAdvertisedPrefixArgs.fromMap(Map<String, dynamic> map) {
    return GetPublicAdvertisedPrefixArgs(
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      publicAdvertisedPrefix:
          pulumi.Input.asInput<String>(map['publicAdvertisedPrefix']),
    );
  }
}
