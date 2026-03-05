// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpn_get_customer_gateways_get_customer_gateways_args_doc}
/// Arguments for getCustomerGateways.
/// {@endtemplate}
/// {@macro pulumi_vpn_get_customer_gateways_get_customer_gateways_args_doc}
class GetCustomerGatewaysArgs {
  /// ID of the VPN customer gateways.
  final pulumi.Input<List<String>>? ids;
  /// A regex string of VPN customer gateways name.
  final pulumi.Input<String>? nameRegex;
  /// Save the result to the file.
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetCustomerGatewaysArgs].
  /// [ids] ID of the VPN customer gateways.
  /// [nameRegex] A regex string of VPN customer gateways name.
  /// [outputFile] Save the result to the file.
  GetCustomerGatewaysArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetCustomerGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerGatewaysArgs(
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

