// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getGateway.
class GetGatewayArgs {
  /// Name of the gateway to retrieve.
  final pulumi.Input<String> name;

  /// A map of tags assigned to the gateway.
  final pulumi.Input<Map<String, String>>? tags;

  GetGatewayArgs({
    required this.name,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetGatewayArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayArgs(
      name: pulumi.Input.asInput<String>(map['name']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
