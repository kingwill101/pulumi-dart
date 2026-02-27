// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// Arguments for getPublicAdvertisedPrefix.
class GetPublicAdvertisedPrefixArgs2 {
  final Input<String>? project;
  final Input<String> publicAdvertisedPrefix;

  GetPublicAdvertisedPrefixArgs2({
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

  factory GetPublicAdvertisedPrefixArgs2.fromMap(Map<String, dynamic> map) {
    return GetPublicAdvertisedPrefixArgs2(
      project: Input.asOptionalInput<String>(map['project']),
      publicAdvertisedPrefix:
          Input.asInput<String>(map['publicAdvertisedPrefix']),
    );
  }
}
