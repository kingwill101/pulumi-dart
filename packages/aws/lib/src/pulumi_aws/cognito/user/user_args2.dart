// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for User.
class UserArgs2 {
  /// A map that contains user attributes and attribute values to be set for the user.
  final Input<Map<String, String>>? attributes;

  /// A map of custom key-value pairs that you can provide as input for any custom workflows that user creation triggers. Amazon Cognito does not store the <span pulumi-lang-nodejs="`clientMetadata`" pulumi-lang-dotnet="`ClientMetadata`" pulumi-lang-go="`clientMetadata`" pulumi-lang-python="`client_metadata`" pulumi-lang-yaml="`clientMetadata`" pulumi-lang-java="`clientMetadata`">`client_metadata`</span> value. This data is available only to Lambda triggers that are assigned to a user pool to support custom workflows. If your user pool configuration does not include triggers, the ClientMetadata parameter serves no purpose. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  final Input<Map<String, String>>? clientMetadata;

  /// A list of mediums to the welcome message will be sent through. Allowed values are `EMAIL` and `SMS`. If it's provided, make sure you have also specified <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span> attribute for the `EMAIL` medium and <span pulumi-lang-nodejs="`phoneNumber`" pulumi-lang-dotnet="`PhoneNumber`" pulumi-lang-go="`phoneNumber`" pulumi-lang-python="`phone_number`" pulumi-lang-yaml="`phoneNumber`" pulumi-lang-java="`phoneNumber`">`phone_number`</span> for the `SMS`. More than one value can be specified. Amazon Cognito does not store the <span pulumi-lang-nodejs="`desiredDeliveryMediums`" pulumi-lang-dotnet="`DesiredDeliveryMediums`" pulumi-lang-go="`desiredDeliveryMediums`" pulumi-lang-python="`desired_delivery_mediums`" pulumi-lang-yaml="`desiredDeliveryMediums`" pulumi-lang-java="`desiredDeliveryMediums`">`desired_delivery_mediums`</span> value. Defaults to `["SMS"]`.
  final Input<List<String>>? desiredDeliveryMediums;

  /// Specifies whether the user should be enabled after creation. The welcome message will be sent regardless of the <span pulumi-lang-nodejs="`enabled`" pulumi-lang-dotnet="`Enabled`" pulumi-lang-go="`enabled`" pulumi-lang-python="`enabled`" pulumi-lang-yaml="`enabled`" pulumi-lang-java="`enabled`">`enabled`</span> value. The behavior can be changed with <span pulumi-lang-nodejs="`messageAction`" pulumi-lang-dotnet="`MessageAction`" pulumi-lang-go="`messageAction`" pulumi-lang-python="`message_action`" pulumi-lang-yaml="`messageAction`" pulumi-lang-java="`messageAction`">`message_action`</span> argument. Defaults to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final Input<bool>? enabled;

  /// If this parameter is set to True and the <span pulumi-lang-nodejs="`phoneNumber`" pulumi-lang-dotnet="`PhoneNumber`" pulumi-lang-go="`phoneNumber`" pulumi-lang-python="`phone_number`" pulumi-lang-yaml="`phoneNumber`" pulumi-lang-java="`phoneNumber`">`phone_number`</span> or <span pulumi-lang-nodejs="`email`" pulumi-lang-dotnet="`Email`" pulumi-lang-go="`email`" pulumi-lang-python="`email`" pulumi-lang-yaml="`email`" pulumi-lang-java="`email`">`email`</span> address specified in the <span pulumi-lang-nodejs="`attributes`" pulumi-lang-dotnet="`Attributes`" pulumi-lang-go="`attributes`" pulumi-lang-python="`attributes`" pulumi-lang-yaml="`attributes`" pulumi-lang-java="`attributes`">`attributes`</span> parameter already exists as an alias with a different user, Amazon Cognito will migrate the alias from the previous user to the newly created user. The previous user will no longer be able to log in using that alias. Amazon Cognito does not store the <span pulumi-lang-nodejs="`forceAliasCreation`" pulumi-lang-dotnet="`ForceAliasCreation`" pulumi-lang-go="`forceAliasCreation`" pulumi-lang-python="`force_alias_creation`" pulumi-lang-yaml="`forceAliasCreation`" pulumi-lang-java="`forceAliasCreation`">`force_alias_creation`</span> value. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final Input<bool>? forceAliasCreation;

  /// Set to `RESEND` to resend the invitation message to a user that already exists and reset the expiration limit on the user's account. Set to `SUPPRESS` to suppress sending the message. Only one value can be specified. Amazon Cognito does not store the <span pulumi-lang-nodejs="`messageAction`" pulumi-lang-dotnet="`MessageAction`" pulumi-lang-go="`messageAction`" pulumi-lang-python="`message_action`" pulumi-lang-yaml="`messageAction`" pulumi-lang-java="`messageAction`">`message_action`</span> value.
  final Input<String>? messageAction;

  /// The user's permanent password. This password must conform to the password policy specified by user pool the user belongs to. The welcome message always contains only <span pulumi-lang-nodejs="`temporaryPassword`" pulumi-lang-dotnet="`TemporaryPassword`" pulumi-lang-go="`temporaryPassword`" pulumi-lang-python="`temporary_password`" pulumi-lang-yaml="`temporaryPassword`" pulumi-lang-java="`temporaryPassword`">`temporary_password`</span> value. You can suppress sending the welcome message with the <span pulumi-lang-nodejs="`messageAction`" pulumi-lang-dotnet="`MessageAction`" pulumi-lang-go="`messageAction`" pulumi-lang-python="`message_action`" pulumi-lang-yaml="`messageAction`" pulumi-lang-java="`messageAction`">`message_action`</span> argument. Amazon Cognito does not store the <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span> value. Conflicts with <span pulumi-lang-nodejs="`temporaryPassword`" pulumi-lang-dotnet="`TemporaryPassword`" pulumi-lang-go="`temporaryPassword`" pulumi-lang-python="`temporary_password`" pulumi-lang-yaml="`temporaryPassword`" pulumi-lang-java="`temporaryPassword`">`temporary_password`</span>.
  final Input<String>? password;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The user's temporary password. Conflicts with <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span>.
  final Input<String>? temporaryPassword;

  /// The user pool ID for the user pool where the user will be created.
  final Input<String> userPoolId;

  /// The username for the user. Must be unique within the user pool. Must be a UTF-8 string between 1 and 128 characters. After the user is created, the username cannot be changed.
  ///
  /// The following arguments are optional:
  final Input<String> username;

  /// The user's validation data. This is an array of name-value pairs that contain user attributes and attribute values that you can use for custom validation, such as restricting the types of user accounts that can be registered. Amazon Cognito does not store the <span pulumi-lang-nodejs="`validationData`" pulumi-lang-dotnet="`ValidationData`" pulumi-lang-go="`validationData`" pulumi-lang-python="`validation_data`" pulumi-lang-yaml="`validationData`" pulumi-lang-java="`validationData`">`validation_data`</span> value. For more information, see [Customizing User Pool Workflows with Lambda Triggers](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-identity-pools-working-with-aws-lambda-triggers.html).
  ///
  /// > **NOTE:** Clearing <span pulumi-lang-nodejs="`password`" pulumi-lang-dotnet="`Password`" pulumi-lang-go="`password`" pulumi-lang-python="`password`" pulumi-lang-yaml="`password`" pulumi-lang-java="`password`">`password`</span> or <span pulumi-lang-nodejs="`temporaryPassword`" pulumi-lang-dotnet="`TemporaryPassword`" pulumi-lang-go="`temporaryPassword`" pulumi-lang-python="`temporary_password`" pulumi-lang-yaml="`temporaryPassword`" pulumi-lang-java="`temporaryPassword`">`temporary_password`</span> does not reset user's password in Cognito.
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
