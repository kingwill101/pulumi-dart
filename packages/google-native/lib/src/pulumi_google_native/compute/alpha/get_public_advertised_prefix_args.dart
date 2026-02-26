// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getPublicAdvertisedPrefix.
class GetPublicAdvertisedPrefixArgs {
  final Input<String>? project;
  final Input<String> publicAdvertisedPrefix;

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
      project: Input.asOptionalInput<String>(map['project']),
      publicAdvertisedPrefix:
          Input.asInput<String>(map['publicAdvertisedPrefix']),
    );
  }
}
