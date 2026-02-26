// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLink.
class GetLinkArgs {
  final Input<String> bucketId;
  final Input<String> linkId;
  final Input<String> location;
  final Input<String>? project;

  GetLinkArgs({
    required this.bucketId,
    required this.linkId,
    required this.location,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bucketId'] = bucketId;
    map['linkId'] = linkId;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory GetLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkArgs(
      bucketId: Input.asInput<String>(map['bucketId']),
      linkId: Input.asInput<String>(map['linkId']),
      location: Input.asInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
