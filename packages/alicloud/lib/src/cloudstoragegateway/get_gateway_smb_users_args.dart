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

  factory GetGatewaySmbUsersArgs.fromMap(Map<String, dynamic> map) {
    return GetGatewaySmbUsersArgs(
      gatewayId: map['gatewayId'] as String,
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
    );
  }
}

