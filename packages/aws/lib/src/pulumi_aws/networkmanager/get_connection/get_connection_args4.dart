// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getConnection.
class GetConnectionArgs4 {
  /// ID of the specific connection to retrieve.
  final Input<String> connectionId;

  /// ID of the Global Network of the connection to retrieve.
  final Input<String> globalNetworkId;

  /// Key-value tags for the connection.
  final Input<Map<String, String>>? tags;

  GetConnectionArgs4({
    required this.connectionId,
    required this.globalNetworkId,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionId'] = connectionId;
    map['globalNetworkId'] = globalNetworkId;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory GetConnectionArgs4.fromMap(Map<String, dynamic> map) {
    return GetConnectionArgs4(
      connectionId: Input.asInput<String>(map['connectionId']),
      globalNetworkId: Input.asInput<String>(map['globalNetworkId']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
