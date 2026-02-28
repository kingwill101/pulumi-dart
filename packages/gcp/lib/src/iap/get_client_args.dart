// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_iap_get_client_get_client_args_doc}
/// Arguments for getClient.
/// {@endtemplate}
/// {@macro pulumi_iap_get_client_get_client_args_doc}
class GetClientArgs {
  /// The name of the brand.
  final pulumi.Input<String> brand;
  /// The client_id of the brand.
  final pulumi.Input<String> clientId;

  /// Creates a new [GetClientArgs].
  /// [brand] The name of the brand.
  /// [clientId] The client_id of the brand.
  GetClientArgs({
    required String brand,
    required String clientId,
  }) :
      brand = pulumi.Input.asInput<String>(brand),
      clientId = pulumi.Input.asInput<String>(clientId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'brand': brand,
      'clientId': clientId,
    };
  }

  factory GetClientArgs.fromMap(Map<String, dynamic> map) {
    return GetClientArgs(
      brand: map['brand'] as String,
      clientId: map['clientId'] as String,
    );
  }
}

