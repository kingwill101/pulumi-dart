// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGlobalNetwork.
class GetGlobalNetworkArgs {
  /// ID of the specific global network to retrieve.
  final Input<String> globalNetworkId;

  /// Map of resource tags.
  final Input<Map<String, String>>? tags;

  GetGlobalNetworkArgs({
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

  factory GetGlobalNetworkArgs.fromMap(Map<String, dynamic> map) {
    return GetGlobalNetworkArgs(
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
