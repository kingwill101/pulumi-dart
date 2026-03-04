// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_get_gateway_file_shares_get_gateway_file_shares_args_doc}
/// Arguments for getGatewayFileShares.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_get_gateway_file_shares_get_gateway_file_shares_args_doc}
class GetGatewayFileSharesArgs {
  /// The ID of the gateway.
  final pulumi.Input<String> gatewayId;

  /// A list of Gateway File Share IDs.
  final pulumi.Input<List<String>>? ids;

  /// A regex string to filter results by Gateway File Share name.
  final pulumi.Input<String>? nameRegex;

  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetGatewayFileSharesArgs].
  /// [gatewayId] The ID of the gateway.
  /// [ids] A list of Gateway File Share IDs.
  /// [nameRegex] A regex string to filter results by Gateway File Share name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetGatewayFileSharesArgs({
    required this.gatewayId,
    this.ids,
    this.nameRegex,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
    };
  }

  factory GetGatewayFileSharesArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayFileSharesArgs(
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      ids: (() {
        final guardedValue = map['ids'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
