// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for Client.
class ClientIapArgs {
  /// Identifier of the brand to which this client
  /// is attached to. The format is
  /// `projects/{project_number}/brands/{brand_id}`.
  final pulumi.Input<String> brand;

  /// Human-friendly name given to the OAuth client.
  final pulumi.Input<String> displayName;

  ClientIapArgs({
    required this.brand,
    required this.displayName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brand'] = brand;
    map['displayName'] = displayName;
    return map;
  }

  factory ClientIapArgs.fromMap(Map<String, dynamic> map) {
    return ClientIapArgs(
      brand: pulumi.Input.asInput<String>(map['brand']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
    );
  }
}
