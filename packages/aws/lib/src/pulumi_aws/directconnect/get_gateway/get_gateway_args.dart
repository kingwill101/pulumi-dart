// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getGateway.
class GetGatewayArgs {
  /// Name of the gateway to retrieve.
  final Input<String> name;

  /// A map of tags assigned to the gateway.
  final Input<Map<String, String>>? tags;

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
      name: Input.asInput<String>(map['name']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
