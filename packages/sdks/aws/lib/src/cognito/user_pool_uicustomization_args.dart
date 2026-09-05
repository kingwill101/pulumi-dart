// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_user_pool_uicustomization_user_pool_uicustomization_args_doc}
/// The set of arguments for UserPoolUICustomization.
/// {@endtemplate}
/// {@macro pulumi_cognito_user_pool_uicustomization_user_pool_uicustomization_args_doc}
class UserPoolUICustomizationArgs {
  /// The client ID for the client app. Defaults to `ALL`. If `ALL` is specified, the `css` and/or `imageFile` settings will be used for every client that has no UI customization set previously.
  final pulumi.Input<String?>? clientId;
  /// The CSS values in the UI customization, provided as a String. At least one of `css` or `imageFile` is required.
  final pulumi.Input<String?>? css;
  /// The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of `css` or `imageFile` is required.
  final pulumi.Input<String?>? imageFile;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The user pool ID for the user pool.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [UserPoolUICustomizationArgs].
  /// [clientId] The client ID for the client app. Defaults to `ALL`. If `ALL` is specified, the `css` and/or `imageFile` settings will be used for every client that has no UI customization set previously.
  /// [css] The CSS values in the UI customization, provided as a String. At least one of `css` or `imageFile` is required.
  /// [imageFile] The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of `css` or `imageFile` is required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The user pool ID for the user pool.
  const UserPoolUICustomizationArgs({
    this.clientId,
    this.css,
    this.imageFile,
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'css': ?css,
      'imageFile': ?imageFile,
      'region': ?region,
      'userPoolId': userPoolId,
    };
  }

  factory UserPoolUICustomizationArgs.fromMap(Map<String, dynamic> map) {
    return UserPoolUICustomizationArgs(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      css: (() { final guardedValue = map['css']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageFile: (() { final guardedValue = map['imageFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPoolId: pulumi.Input.fromValue(map['userPoolId'] as String),
    );
  }
}
