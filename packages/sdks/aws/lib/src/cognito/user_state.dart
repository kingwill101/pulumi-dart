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
  /// > **NOTE:** Clearing `password` or `temporary_password` does not reset user's password in Cognito.
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
    pulumi.Output<Map<String, String>>? attributes,
    pulumi.Output<Map<String, String>>? clientMetadata,
    pulumi.Output<String>? creationDate,
    pulumi.Output<List<String>>? desiredDeliveryMediums,
    pulumi.Output<bool>? enabled,
    pulumi.Output<bool>? forceAliasCreation,
    pulumi.Output<String>? lastModifiedDate,
    pulumi.Output<String>? messageAction,
    pulumi.Output<List<String>>? mfaSettingLists,
    pulumi.Output<String>? password,
    pulumi.Output<String>? preferredMfaSetting,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<String>? sub,
    pulumi.Output<String>? temporaryPassword,
    pulumi.Output<String>? userPoolId,
    pulumi.Output<String>? username,
    pulumi.Output<Map<String, String>>? validationData,
  }) :
      attributes = pulumi.Input.asOptionalInput<Map<String, String>>(attributes),
      clientMetadata = pulumi.Input.asOptionalInput<Map<String, String>>(clientMetadata),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      desiredDeliveryMediums = pulumi.Input.asOptionalInput<List<String>>(desiredDeliveryMediums),
      enabled = pulumi.Input.asOptionalInput<bool>(enabled),
      forceAliasCreation = pulumi.Input.asOptionalInput<bool>(forceAliasCreation),
      lastModifiedDate = pulumi.Input.asOptionalInput<String>(lastModifiedDate),
      messageAction = pulumi.Input.asOptionalInput<String>(messageAction),
      mfaSettingLists = pulumi.Input.asOptionalInput<List<String>>(mfaSettingLists),
      password = pulumi.Input.asOptionalInput<String>(password),
      preferredMfaSetting = pulumi.Input.asOptionalInput<String>(preferredMfaSetting),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      sub = pulumi.Input.asOptionalInput<String>(sub),
      temporaryPassword = pulumi.Input.asOptionalInput<String>(temporaryPassword),
      userPoolId = pulumi.Input.asOptionalInput<String>(userPoolId),
      username = pulumi.Input.asOptionalInput<String>(username),
      validationData = pulumi.Input.asOptionalInput<Map<String, String>>(validationData);

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
      attributes: map['attributes'] == null ? null : pulumi.Output.create<Map<String, String>>((map['attributes'] as Map).cast<String, String>()),
      clientMetadata: map['clientMetadata'] == null ? null : pulumi.Output.create<Map<String, String>>((map['clientMetadata'] as Map).cast<String, String>()),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      desiredDeliveryMediums: map['desiredDeliveryMediums'] == null ? null : pulumi.Output.create<List<String>>((map['desiredDeliveryMediums'] as List).cast<String>()),
      enabled: map['enabled'] == null ? null : pulumi.Output.create<bool>(map['enabled'] as bool),
      forceAliasCreation: map['forceAliasCreation'] == null ? null : pulumi.Output.create<bool>(map['forceAliasCreation'] as bool),
      lastModifiedDate: map['lastModifiedDate'] == null ? null : pulumi.Output.create<String>(map['lastModifiedDate'] as String),
      messageAction: map['messageAction'] == null ? null : pulumi.Output.create<String>(map['messageAction'] as String),
      mfaSettingLists: map['mfaSettingLists'] == null ? null : pulumi.Output.create<List<String>>((map['mfaSettingLists'] as List).cast<String>()),
      password: map['password'] == null ? null : pulumi.Output.create<String>(map['password'] as String),
      preferredMfaSetting: map['preferredMfaSetting'] == null ? null : pulumi.Output.create<String>(map['preferredMfaSetting'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      sub: map['sub'] == null ? null : pulumi.Output.create<String>(map['sub'] as String),
      temporaryPassword: map['temporaryPassword'] == null ? null : pulumi.Output.create<String>(map['temporaryPassword'] as String),
      userPoolId: map['userPoolId'] == null ? null : pulumi.Output.create<String>(map['userPoolId'] as String),
      username: map['username'] == null ? null : pulumi.Output.create<String>(map['username'] as String),
      validationData: map['validationData'] == null ? null : pulumi.Output.create<Map<String, String>>((map['validationData'] as Map).cast<String, String>()),
    );
  }
}

