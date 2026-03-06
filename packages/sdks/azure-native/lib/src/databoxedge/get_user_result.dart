// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret_response.dart';
import 'share_access_right_response.dart';
import 'system_data_response.dart';

/// Result data returned by getUser.
class GetUserResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The password details.
  final AsymmetricEncryptedSecretResponse? encryptedPassword;
  /// The path ID that uniquely identifies the object.
  final String id;
  /// The object name.
  final String name;
  /// List of shares that the user has rights on. This field should not be specified during user creation.
  final List<ShareAccessRightResponse> shareAccessRights;
  /// Metadata pertaining to creation and last modification of User
  final SystemDataResponse systemData;
  /// The hierarchical type of the object.
  final String type;
  /// Type of the user.
  final String userType;

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
    required this.azureApiVersion,
    this.encryptedPassword,
    required this.id,
    required this.name,
    required this.shareAccessRights,
    required this.systemData,
    required this.type,
    required this.userType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'encryptedPassword': ?encryptedPassword?.toMap(),
      'id': id,
      'name': name,
      'shareAccessRights': pulumi.Input.encodeList<ShareAccessRightResponse, Map<String, dynamic>>(shareAccessRights, (value) => value.toMap()),
      'systemData': systemData.toMap(),
      'type': type,
      'userType': userType,
    };
  }

  factory GetUserResult.fromMap(Map<String, dynamic> map) {
    return GetUserResult(
      azureApiVersion: map['azureApiVersion'] as String,
      encryptedPassword: (() { final guardedValue = map['encryptedPassword']; if (guardedValue == null) return null; return AsymmetricEncryptedSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      name: map['name'] as String,
      shareAccessRights: pulumi.Input.decodeList<ShareAccessRightResponse>(map['shareAccessRights']!, (value) => ShareAccessRightResponse.fromMap((value as Map).cast<String, dynamic>())),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userType: map['userType'] as String,
    );
  }
}

