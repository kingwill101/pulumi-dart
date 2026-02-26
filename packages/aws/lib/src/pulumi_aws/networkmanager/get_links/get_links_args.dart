// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getLinks.
class GetLinksArgs {
  /// ID of the Global Network of the links to retrieve.
  final Input<String> globalNetworkId;

  /// Link provider to retrieve.
  final Input<String>? providerName;

  /// ID of the site of the links to retrieve.
  final Input<String>? siteId;

  /// Restricts the list to the links with these tags.
  final Input<Map<String, String>>? tags;

  /// Link type to retrieve.
  final Input<String>? type;

  GetLinksArgs({
    required this.globalNetworkId,
    this.providerName,
    this.siteId,
    this.tags,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalNetworkId'] = globalNetworkId;
    final providerNameValue = providerName;
    if (providerNameValue != null) {
      map['providerName'] = providerNameValue;
    }
    final siteIdValue = siteId;
    if (siteIdValue != null) {
      map['siteId'] = siteIdValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory GetLinksArgs.fromMap(Map<String, dynamic> map) {
    return GetLinksArgs(
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      providerName: Input.asOptionalInput<String>(map['providerName']),
      siteId: Input.asOptionalInput<String>(map['siteId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
      type: Input.asOptionalInput<String>(map['type']),
    );
  }
}
