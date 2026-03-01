// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_get_gateway_block_volumes_get_gateway_block_volumes_args_doc}
/// Arguments for getGatewayBlockVolumes.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_get_gateway_block_volumes_get_gateway_block_volumes_args_doc}
class GetGatewayBlockVolumesArgs {
  /// The Gateway ID.
  final pulumi.Input<String> gatewayId;
  /// A list of Gateway Block Volume IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Gateway Block Volume name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of volume. Valid values:
  final pulumi.Input<int>? status;

  /// Creates a new [GetGatewayBlockVolumesArgs].
  /// [gatewayId] The Gateway ID.
  /// [ids] A list of Gateway Block Volume IDs.
  /// [nameRegex] A regex string to filter results by Gateway Block Volume name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of volume. Valid values:
  GetGatewayBlockVolumesArgs({
    required pulumi.Output<String> gatewayId,
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<int>? status,
  }) :
      gatewayId = pulumi.Input.asInput<String>(gatewayId),
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<int>(status);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetGatewayBlockVolumesArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewayBlockVolumesArgs(
      gatewayId: pulumi.Output.create<String>(map['gatewayId'] as String),
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<int>(map['status'] as int),
    );
  }
}

