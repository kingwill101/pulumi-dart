// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// Arguments for getClient.
class GetClientArgs {
  /// The name of the brand.
  final Input<String> brand;

  /// The<span pulumi-lang-nodejs=" clientId " pulumi-lang-dotnet=" ClientId " pulumi-lang-go=" clientId " pulumi-lang-python=" client_id " pulumi-lang-yaml=" clientId " pulumi-lang-java=" clientId "> client_id </span>of the brand.
  final Input<String> clientId;

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
      brand: Input.asInput<String>(map['brand']),
      clientId: Input.asInput<String>(map['clientId']),
    );
  }
}
