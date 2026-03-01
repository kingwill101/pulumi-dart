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
    required String gatewayId,
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
  }) :
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile);

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
      gatewayId: map['gatewayId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

