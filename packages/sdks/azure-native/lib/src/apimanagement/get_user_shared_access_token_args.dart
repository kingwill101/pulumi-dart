// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_type.dart';

/// {@template pulumi_apimanagement_get_user_shared_access_token_args_doc}
/// Arguments for getUserSharedAccessToken.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_user_shared_access_token_args_doc}
class GetUserSharedAccessTokenArgs {
  /// The Expiry time of the Token. Maximum token expiry time is set to 30 days. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  final pulumi.Input<String> expiry;
  /// The Key to be used to generate token for user.
  final pulumi.Input<KeyType> keyType;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// User identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> userId;

  /// Creates a new [GetUserSharedAccessTokenArgs].
  /// [expiry] The Expiry time of the Token. Maximum token expiry time is set to 30 days. The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as specified by the ISO 8601 standard.
  /// [keyType] The Key to be used to generate token for user.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [userId] User identifier. Must be unique in the current API Management service instance.
  GetUserSharedAccessTokenArgs({
    required this.expiry,
    pulumi.Input<KeyType>? keyType,
    required this.resourceGroupName,
    required this.serviceName,
    required this.userId,
  }) : keyType = keyType ?? pulumi.Input.fromValue(KeyType.fromValue('primary'));

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expiry': expiry,
      'keyType': pulumi.Input.mapInputValue<KeyType, String>(keyType, (value) => value.wireValue),
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'userId': userId,
    };
  }

  factory GetUserSharedAccessTokenArgs.fromMap(Map<String, dynamic> map) {
    return GetUserSharedAccessTokenArgs(
      expiry: pulumi.Input.fromValue(map['expiry'] as String),
      keyType: pulumi.Input.fromValue(KeyType.fromValue(map['keyType']! as String)),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      userId: pulumi.Input.fromValue(map['userId'] as String),
    );
  }
}
