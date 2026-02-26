// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLink.
class GetLinkArgs {
  /// ID of the Global Network of the link to retrieve.
  final Input<String> globalNetworkId;

  /// ID of the specific link to retrieve.
  final Input<String> linkId;

  /// Key-value tags for the link.
  final Input<Map<String, String>>? tags;

  GetLinkArgs({
    required this.globalNetworkId,
    required this.linkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalNetworkId'] = globalNetworkId;
    map['linkId'] = linkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetLinkArgs(
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      linkId: Input.asInput<String>(map['linkId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
