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
    required this.gatewayId,
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
  });

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
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

