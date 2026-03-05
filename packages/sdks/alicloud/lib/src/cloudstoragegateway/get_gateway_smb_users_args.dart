// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudstoragegateway_get_gateway_smb_users_get_gateway_smb_users_args_doc}
/// Arguments for getGatewaySmbUsers.
/// {@endtemplate}
/// {@macro pulumi_cloudstoragegateway_get_gateway_smb_users_get_gateway_smb_users_args_doc}
class GetGatewaySmbUsersArgs {
  /// The Gateway ID.
  final pulumi.Input<String> gatewayId;
  /// A list of Gateway SMB User IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Gateway SMB username.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;

  /// Creates a new [GetGatewaySmbUsersArgs].
  /// [gatewayId] The Gateway ID.
  /// [ids] A list of Gateway SMB User IDs.
  /// [nameRegex] A regex string to filter results by Gateway SMB username.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  GetGatewaySmbUsersArgs({
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

  factory GetGatewaySmbUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewaySmbUsersArgs(
      gatewayId: pulumi.Input.fromValue(map['gatewayId'] as String),
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

