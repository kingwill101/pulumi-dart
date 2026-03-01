// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_mse_get_gateways_get_gateways_args_doc}
/// Arguments for getGateways.
/// {@endtemplate}
/// {@macro pulumi_mse_get_gateways_get_gateways_args_doc}
class GetGatewaysArgs {
  /// Default to `false`. Set it to `true` can output more details about resource attributes.
  final pulumi.Input<bool>? enableDetails;
  /// The name of the Gateway.
  final pulumi.Input<String>? gatewayName;
  /// A list of Gateway IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Gateway name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the gateway. Valid values: `0`, `1`, `2`, `3`, `4`, `6`, `8`, `9`, `10`, `11`, `12`, `13`.
  final pulumi.Input<String>? status;
  /// The ID of the VPC.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetGatewaysArgs].
  /// [enableDetails] Default to `false`. Set it to `true` can output more details about resource attributes.
  /// [gatewayName] The name of the Gateway.
  /// [ids] A list of Gateway IDs.
  /// [nameRegex] A regex string to filter results by Gateway name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the gateway. Valid values: `0`, `1`, `2`, `3`, `4`, `6`, `8`, `9`, `10`, `11`, `12`, `13`.
  /// [vpcId] The ID of the VPC.
  GetGatewaysArgs({
    pulumi.Output<bool>? enableDetails,
    pulumi.Output<String>? gatewayName,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<String>? vpcId,
  }) :
      enableDetails = pulumi.Input.asOptionalInput<bool>(enableDetails),
      gatewayName = pulumi.Input.asOptionalInput<String>(gatewayName),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableDetails': ?enableDetails,
      'gatewayName': ?gatewayName,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'vpcId': ?vpcId,
    };
  }

  factory GetGatewaysArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewaysArgs(
      enableDetails: map['enableDetails'] == null ? null : pulumi.Output.create<bool>(map['enableDetails'] as bool),
      gatewayName: map['gatewayName'] == null ? null : pulumi.Output.create<String>(map['gatewayName'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

