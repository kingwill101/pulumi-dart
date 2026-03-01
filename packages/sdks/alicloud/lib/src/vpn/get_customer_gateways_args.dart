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
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetCustomerGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetCustomerGatewaysArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
    );
  }
}

