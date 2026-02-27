// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getSites.
class GetSitesArgs {
  /// ID of the Global Network of the sites to retrieve.
  final pulumi.Input<String> globalNetworkId;

  /// Restricts the list to the sites with these tags.
  final pulumi.Input<Map<String, String>>? tags;

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
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
