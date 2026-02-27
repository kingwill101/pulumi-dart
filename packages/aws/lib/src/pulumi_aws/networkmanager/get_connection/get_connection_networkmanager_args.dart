// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getConnection.
class GetConnectionNetworkmanagerArgs {
  /// ID of the specific connection to retrieve.
  final pulumi.Input<String> connectionId;

  /// ID of the Global Network of the connection to retrieve.
  final pulumi.Input<String> globalNetworkId;

  /// Key-value tags for the connection.
  final pulumi.Input<Map<String, String>>? tags;

  GetConnectionNetworkmanagerArgs({
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

  factory GetConnectionNetworkmanagerArgs.fromMap(Map<String, dynamic> map) {
    return GetConnectionNetworkmanagerArgs(
      connectionId: pulumi.Input.asInput<String>(map['connectionId']),
      globalNetworkId: pulumi.Input.asInput<String>(map['globalNetworkId']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
