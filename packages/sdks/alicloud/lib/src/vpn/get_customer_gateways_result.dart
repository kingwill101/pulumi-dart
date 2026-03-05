// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_customer_gateways_gateway.dart';

/// Result data returned by getCustomerGateways.
class GetCustomerGatewaysResult {
  /// A list of VPN customer gateways. Each element contains the following attributes:
  final List<GetCustomerGatewaysGateway> gateways;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// IDs of VPN customer gateway.
  final List<String> ids;
  final String? nameRegex;
  /// names of VPN customer gateway.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetCustomerGatewaysResult].
  /// [gateways] A list of VPN customer gateways. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] IDs of VPN customer gateway.
  /// [nameRegex] Optional.
  /// [names] names of VPN customer gateway.
  /// [outputFile] Optional.
  GetCustomerGatewaysResult({
    required this.gateways,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gateways': pulumi.Input.encodeList<GetCustomerGatewaysGateway, Map<String, dynamic>>(gateways, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetCustomerGatewaysResult.fromMap(Map<String, dynamic> map) {
    return GetCustomerGatewaysResult(
      gateways: pulumi.Input.decodeList<GetCustomerGatewaysGateway>(map['gateways']!, (value) => GetCustomerGatewaysGateway.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

