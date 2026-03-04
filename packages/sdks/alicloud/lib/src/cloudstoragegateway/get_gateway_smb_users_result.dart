// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_gateway_smb_users_user.dart';

/// Result data returned by getGatewaySmbUsers.
class GetGatewaySmbUsersResult {
  final String gatewayId;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  final String? outputFile;
  final List<GetGatewaySmbUsersUser> users;

  /// Creates a new [GetGatewaySmbUsersResult].
  /// [gatewayId] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [outputFile] Optional.
  /// [users] Required.
  GetGatewaySmbUsersResult({
    required this.gatewayId,
    required this.id,
    required this.ids,
    this.nameRegex,
    this.outputFile,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': gatewayId,
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'users':
          pulumi.Input.encodeList<GetGatewaySmbUsersUser, Map<String, dynamic>>(
            users,
            (value) => value.toMap(),
          ),
    };
  }

  factory GetGatewaySmbUsersResult.fromMap(Map<String, dynamic> map) {
    return GetGatewaySmbUsersResult(
      gatewayId: map['gatewayId'] as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      users: pulumi.Input.decodeList<GetGatewaySmbUsersUser>(
        map['users']!,
        (value) => GetGatewaySmbUsersUser.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
