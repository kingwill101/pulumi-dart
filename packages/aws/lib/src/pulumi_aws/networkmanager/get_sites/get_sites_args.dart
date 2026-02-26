// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getSites.
class GetSitesArgs {
  /// ID of the Global Network of the sites to retrieve.
  final Input<String> globalNetworkId;

  /// Restricts the list to the sites with these tags.
  final Input<Map<String, String>>? tags;

  GetSitesArgs({
    required this.globalNetworkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['globalNetworkId'] = globalNetworkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetSitesArgs.fromMap(Map<String, dynamic> map) {
    return GetSitesArgs(
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
