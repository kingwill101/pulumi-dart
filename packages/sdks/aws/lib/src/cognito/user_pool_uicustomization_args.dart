// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cognito_user_pool_uicustomization_user_pool_uicustomization_args_doc}
/// The set of arguments for UserPoolUICustomization.
/// {@endtemplate}
/// {@macro pulumi_cognito_user_pool_uicustomization_user_pool_uicustomization_args_doc}
class UserPoolUICustomizationArgs {
  /// The client ID for the client app. Defaults to `ALL`. If `ALL` is specified, the `css` and/or `image_file` settings will be used for every client that has no UI customization set previously.
  final pulumi.Input<String>? clientId;
  /// The CSS values in the UI customization, provided as a String. At least one of `css` or `image_file` is required.
  final pulumi.Input<String>? css;
  /// The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of `css` or `image_file` is required.
  final pulumi.Input<String>? imageFile;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The user pool ID for the user pool.
  final pulumi.Input<String> userPoolId;

  /// Creates a new [UserPoolUICustomizationArgs].
  /// [clientId] The client ID for the client app. Defaults to `ALL`. If `ALL` is specified, the `css` and/or `image_file` settings will be used for every client that has no UI customization set previously.
  /// [css] The CSS values in the UI customization, provided as a String. At least one of `css` or `image_file` is required.
  /// [imageFile] The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of `css` or `image_file` is required.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The user pool ID for the user pool.
  UserPoolUICustomizationArgs({
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
      clientId: map['clientId'] == null ? null : ((map['clientId'] as String).input()).input(),
      css: map['css'] == null ? null : ((map['css'] as String).input()).input(),
      imageFile: map['imageFile'] == null ? null : ((map['imageFile'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      userPoolId: (map['userPoolId'] as String).input(),
    );
  }
}

