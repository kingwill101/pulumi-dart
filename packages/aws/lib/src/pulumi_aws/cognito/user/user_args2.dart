// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for User.
class UserArgs2 {
  /// A map that contains user attributes and attribute values to be set for the user.
  final Input<Map<String, String>>? attributes;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the `client_metadata` value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  final Input<Map<String, String>>? clientMetadata;

  /// A list of mediums to the welcome message will be sent through. Allowed values are `EMAIL` and `SMS`. If it's provided, make sure you have also specified `email` attribute for the `EMAIL` medium and `phone_number` for the `SMS`. More than one value can be specified. Amazon Cognito does not store the `desired_delivery_mediums` value. Defaults to `["SMS"]`.
  final Input<List<String>>? desiredDeliveryMediums;

  /// Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the `enabled` value. The behavior can be changed with `message_action` argument. Defaults to `true`.
  final Input<bool>? enabled;

  /// If this parameter is set to True and the `phone_number` or `email` address specified in the `attributes` parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the `force_alias_creation` value. Defaults to `false`.
  final Input<bool>? forceAliasCreation;

  /// Set to `RESEND` to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to `SUPPRESS` to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the `message_action` value.
  final Input<String>? messageAction;

  /// The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only `temporary_password` value. You can suppress sending the welcome message with the `message_action` argument. Amazon Cognito does not store the `password` value. Conflicts with `temporary_password`.
  final Input<String>? password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The user's temporary password. Conflicts with `password`.
  final Input<String>? temporaryPassword;

  /// The user pool ID for the user pool where the user will be created.
  final Input<String> userPoolId;

  /// The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.
  ///
  /// The following arguments are optional:
  final Input<String> username;

  /// The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the `validation_data` value. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  ///
  /// > **NOTE:** Clearing `password` or `temporary_password` does not reset user's password in Cognito.
  final Input<Map<String, String>>? validationData;

  UserArgs2({
    this.attributes,
    this.clientMetadata,
    this.desiredDeliveryMediums,
    this.enabled,
    this.forceAliasCreation,
    this.messageAction,
    this.password,
    this.region,
    this.temporaryPassword,
    required this.userPoolId,
    required this.username,
    this.validationData,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributesValue = attributes;
    if (attributesValue != null) {
      map['attributes'] = attributesValue;
    }
    final clientMetadataValue = clientMetadata;
    if (clientMetadataValue != null) {
      map['clientMetadata'] = clientMetadataValue;
    }
    final desiredDeliveryMediumsValue = desiredDeliveryMediums;
    if (desiredDeliveryMediumsValue != null) {
      map['desiredDeliveryMediums'] = desiredDeliveryMediumsValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final forceAliasCreationValue = forceAliasCreation;
    if (forceAliasCreationValue != null) {
      map['forceAliasCreation'] = forceAliasCreationValue;
    }
    final messageActionValue = messageAction;
    if (messageActionValue != null) {
      map['messageAction'] = messageActionValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final temporaryPasswordValue = temporaryPassword;
    if (temporaryPasswordValue != null) {
      map['temporaryPassword'] = temporaryPasswordValue;
    }
    map['userPoolId'] = userPoolId;
    map['username'] = username;
    final validationDataValue = validationData;
    if (validationDataValue != null) {
      map['validationData'] = validationDataValue;
    }
    return map;
  }

  factory UserArgs2.fromMap(Map<String, dynamic> map) {
    return UserArgs2(
      attributes: Input.asOptionalInput<Map<String, String>>(map['attributes']),
      clientMetadata:
          Input.asOptionalInput<Map<String, String>>(map['clientMetadata']),
      desiredDeliveryMediums:
          Input.asOptionalInput<List<String>>(map['desiredDeliveryMediums']),
      enabled: Input.asOptionalInput<bool>(map['enabled']),
      forceAliasCreation:
          Input.asOptionalInput<bool>(map['forceAliasCreation']),
      messageAction: Input.asOptionalInput<String>(map['messageAction']),
      password: Input.asOptionalInput<String>(map['password']),
      region: Input.asOptionalInput<String>(map['region']),
      temporaryPassword:
          Input.asOptionalInput<String>(map['temporaryPassword']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
      username: Input.asInput<String>(map['username']),
      validationData:
          Input.asOptionalInput<Map<String, String>>(map['validationData']),
    );
  }
}
