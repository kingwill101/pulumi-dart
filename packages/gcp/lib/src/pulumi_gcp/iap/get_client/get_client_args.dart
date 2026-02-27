// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getClient.
class GetClientArgs {
  /// The name of the brand.
  final pulumi.Input<String> brand;

  /// The client_id of the brand.
  final pulumi.Input<String> clientId;

  GetClientArgs({
    required this.brand,
    required this.clientId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brand'] = brand;
    map['clientId'] = clientId;
    return map;
  }

  factory GetClientArgs.fromMap(Map<String, dynamic> map) {
    return GetClientArgs(
      brand: pulumi.Input.asInput<String>(map['brand']),
      clientId: pulumi.Input.asInput<String>(map['clientId']),
    );
  }
}
