// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGlobalNetworks.
class GetGlobalNetworksArgs {
  /// Restricts the list to the global networks with these tags.
  final pulumi.Input<Map<String, String>>? tags;

  GetGlobalNetworksArgs({
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetGlobalNetworksArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworksArgs(
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
