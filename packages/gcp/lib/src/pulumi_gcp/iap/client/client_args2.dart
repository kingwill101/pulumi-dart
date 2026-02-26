// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for Client.
class ClientArgs2 {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  final Input<String> brand;

  /// Human-friendly name given to the OAuth client.
  final Input<String> displayName;

  ClientArgs2({
    required this.brand,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brand'] = brand;
    map['displayName'] = displayName;
    return map;
  }

  factory ClientArgs2.fromMap(Map<String, dynamic> map) {
    return ClientArgs2(
      brand: Input.asInput<String>(map['brand']),
      displayName: Input.asInput<String>(map['displayName']),
    );
  }
}
