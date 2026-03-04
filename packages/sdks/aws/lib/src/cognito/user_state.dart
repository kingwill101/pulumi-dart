// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering User resources.
class UserState {
  /// A map that contains user attributes and attribute values to be set for the user.
  final pulumi.Input<Map<String, String>>? attributes;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the `client_metadata` value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  final pulumi.Input<Map<String, String>>? clientMetadata;
  final pulumi.Input<String>? creationDate;

  /// A list of mediums to the welcome message will be sent through. Allowed values are `EMAIL` and `SMS`. If it's provided, make sure you have also specified `email` attribute for the `EMAIL` medium and `phone_number` for the `SMS`. More than one value can be specified. Amazon Cognito does not store the `desired_delivery_mediums` value. Defaults to `["SMS"]`.
  final pulumi.Input<List<String>>? desiredDeliveryMediums;

  /// Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the `enabled` value. The behavior can be changed with `message_action` argument. Defaults to `true`.
  final pulumi.Input<bool>? enabled;

  /// If this parameter is set to True and the `phone_number` or `email` address specified in the `attributes` parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the `force_alias_creation` value. Defaults to `false`.
  final pulumi.Input<bool>? forceAliasCreation;
  final pulumi.Input<String>? lastModifiedDate;

  /// Set to `RESEND` to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to `SUPPRESS` to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the `message_action` value.
  final pulumi.Input<String>? messageAction;
  final pulumi.Input<List<String>>? mfaSettingLists;

  /// The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only `temporary_password` value. You can suppress sending the welcome message with the `message_action` argument. Amazon Cognito does not store the `password` value. Conflicts with `temporary_password`.
  final pulumi.Input<String>? password;
  final pulumi.Input<String>? preferredMfaSetting;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// current user status.
  final pulumi.Input<String>? status;

  /// unique user id that is never reassignable to another user.
  final pulumi.Input<String>? sub;

  /// The user's temporary password. Conflicts with `password`.
  final pulumi.Input<String>? temporaryPassword;

  /// The user pool ID for the user pool where the user will be created.
  final pulumi.Input<String>? userPoolId;

  /// The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? username;

  /// The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the `validation_data` value. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  ///
  /// &gt; **NOTE:** Clearing `password` or `temporary_password` does not reset user's password in Cognito.
  final pulumi.Input<Map<String, String>>? validationData;

  /// Creates a new [UserState].
  /// [attributes] A map that contains user attributes and attribute values to be set for the user.
  /// [clientMetadata] A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the `client_metadata` value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  /// [creationDate] Optional.
  /// [desiredDeliveryMediums] A list of mediums to the welcome message will be sent through. Allowed values are `EMAIL` and `SMS`. If it's provided, make sure you have also specified `email` attribute for the `EMAIL` medium and `phone_number` for the `SMS`. More than one value can be specified. Amazon Cognito does not store the `desired_delivery_mediums` value. Defaults to `["SMS"]`.
  /// [enabled] Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the `enabled` value. The behavior can be changed with `message_action` argument. Defaults to `true`.
  /// [forceAliasCreation] If this parameter is set to True and the `phone_number` or `email` address specified in the `attributes` parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the `force_alias_creation` value. Defaults to `false`.
  /// [lastModifiedDate] Optional.
  /// [messageAction] Set to `RESEND` to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to `SUPPRESS` to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the `message_action` value.
  /// [mfaSettingLists] Optional.
  /// [password] The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only `temporary_password` value. You can suppress sending the welcome message with the `message_action` argument. Amazon Cognito does not store the `password` value. Conflicts with `temporary_password`.
  /// [preferredMfaSetting] Optional.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] current user status.
  /// [sub] unique user id that is never reassignable to another user.
  /// [temporaryPassword] The user's temporary password. Conflicts with `password`.
  /// [userPoolId] The user pool ID for the user pool where the user will be created.
  /// [username] The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.
  /// [validationData] The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the `validation_data` value. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  UserState({
    this.attributes,
    this.clientMetadata,
    this.creationDate,
    this.desiredDeliveryMediums,
    this.enabled,
    this.forceAliasCreation,
    this.lastModifiedDate,
    this.messageAction,
    this.mfaSettingLists,
    this.password,
    this.preferredMfaSetting,
    this.region,
    this.status,
    this.sub,
    this.temporaryPassword,
    this.userPoolId,
    this.username,
    this.validationData,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributes': ?attributes,
      'clientMetadata': ?clientMetadata,
      'creationDate': ?creationDate,
      'desiredDeliveryMediums': ?desiredDeliveryMediums,
      'enabled': ?enabled,
      'forceAliasCreation': ?forceAliasCreation,
      'lastModifiedDate': ?lastModifiedDate,
      'messageAction': ?messageAction,
      'mfaSettingLists': ?mfaSettingLists,
      'password': ?password,
      'preferredMfaSetting': ?preferredMfaSetting,
      'region': ?region,
      'status': ?status,
      'sub': ?sub,
      'temporaryPassword': ?temporaryPassword,
      'userPoolId': ?userPoolId,
      'username': ?username,
      'validationData': ?validationData,
    };
  }

  factory UserState.fromMap(Map<String, dynamic> map) {
    return UserState(
      attributes: (() {
        final guardedValue = map['attributes'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      clientMetadata: (() {
        final guardedValue = map['clientMetadata'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      creationDate: (() {
        final guardedValue = map['creationDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      desiredDeliveryMediums: (() {
        final guardedValue = map['desiredDeliveryMediums'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      enabled: (() {
        final guardedValue = map['enabled'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      forceAliasCreation: (() {
        final guardedValue = map['forceAliasCreation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      lastModifiedDate: (() {
        final guardedValue = map['lastModifiedDate'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      messageAction: (() {
        final guardedValue = map['messageAction'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mfaSettingLists: (() {
        final guardedValue = map['mfaSettingLists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      preferredMfaSetting: (() {
        final guardedValue = map['preferredMfaSetting'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sub: (() {
        final guardedValue = map['sub'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      temporaryPassword: (() {
        final guardedValue = map['temporaryPassword'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      userPoolId: (() {
        final guardedValue = map['userPoolId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      validationData: (() {
        final guardedValue = map['validationData'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
