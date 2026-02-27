// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for UserPoolUICustomization.
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

  UserPoolUICustomizationArgs({
    this.clientId,
    this.css,
    this.imageFile,
    this.region,
    required this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clientIdValue = clientId;
    if (clientIdValue != null) {
      map['clientId'] = clientIdValue;
    }
    final cssValue = css;
    if (cssValue != null) {
      map['css'] = cssValue;
    }
    final imageFileValue = imageFile;
    if (imageFileValue != null) {
      map['imageFile'] = imageFileValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['userPoolId'] = userPoolId;
    return map;
  }

  factory UserPoolUICustomizationArgs.fromMap(Map<String, dynamic> map) {
    return UserPoolUICustomizationArgs(
      clientId: pulumi.Input.asOptionalInput<String>(map['clientId']),
      css: pulumi.Input.asOptionalInput<String>(map['css']),
      imageFile: pulumi.Input.asOptionalInput<String>(map['imageFile']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      userPoolId: pulumi.Input.asInput<String>(map['userPoolId']),
    );
  }
}
