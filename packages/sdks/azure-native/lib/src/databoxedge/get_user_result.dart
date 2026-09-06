// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret_response.dart';
import 'share_access_right_response.dart';
import 'system_data_response.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// The password details.
  final AsymmetricEncryptedSecretResponse? encryptedPassword;
  /// The path ID that uniquely identifies the object.
  final String? id;
  /// The object name.
  final String? name;
  /// List of shares that the user has rights on. This field should not be specified during user creation.
  final List<ShareAccessRightResponse>? shareAccessRights;
  /// Metadata pertaining to creation and last modification of User
  final SystemDataResponse? systemData;
  /// The hierarchical type of the object.
  final String? type;
  /// Type of the user.
  final String? userType;

  /// Creates a new [GetUserResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [encryptedPassword] The password details.
  /// [id] The path ID that uniquely identifies the object.
  /// [name] The object name.
  /// [shareAccessRights] List of shares that the user has rights on. This field should not be specified during user creation.
  /// [systemData] Metadata pertaining to creation and last modification of User
  /// [type] The hierarchical type of the object.
  /// [userType] Type of the user.
  const GetUserResult({
    this.azureApiVersion,
    this.encryptedPassword,
    this.id,
    this.name,
    this.shareAccessRights,
    this.systemData,
    this.type,
    this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'encryptedPassword': ?encryptedPassword?.toMap(),
      'id': ?id,
      'name': ?name,
      'shareAccessRights': ?(() { final guardedValue = shareAccessRights; if (guardedValue == null) return null; return pulumi.Input.encodeList<ShareAccessRightResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'userType': ?userType,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      encryptedPassword: (() { final guardedValue = map['encryptedPassword']; if (guardedValue == null) return null; return AsymmetricEncryptedSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      shareAccessRights: (() { final guardedValue = map['shareAccessRights']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ShareAccessRightResponse>(guardedValue, (value) => ShareAccessRightResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userType: (() { final guardedValue = map['userType']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
