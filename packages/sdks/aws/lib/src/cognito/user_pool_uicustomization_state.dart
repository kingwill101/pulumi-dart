// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UserPoolUICustomization resources.
class UserPoolUICustomizationState {
  /// The client ID for the client app. Defaults to `ALL`. If `ALL` is specified, the `css` and/or `image_file` settings will be used for every client that has no UI customization set previously.
  final pulumi.Input<String>? clientId;
  /// The creation date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) for the UI customization.
  final pulumi.Input<String>? creationDate;
  /// The CSS values in the UI customization, provided as a String. At least one of `css` or `image_file` is required.
  final pulumi.Input<String>? css;
  /// The CSS version number.
  final pulumi.Input<String>? cssVersion;
  /// The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of `css` or `image_file` is required.
  final pulumi.Input<String>? imageFile;
  /// The logo image URL for the UI customization.
  final pulumi.Input<String>? imageUrl;
  /// The last-modified date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) for the UI customization.
  final pulumi.Input<String>? lastModifiedDate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The user pool ID for the user pool.
  final pulumi.Input<String>? userPoolId;

  /// Creates a new [UserPoolUICustomizationState].
  /// [clientId] The client ID for the client app. Defaults to `ALL`. If `ALL` is specified, the `css` and/or `image_file` settings will be used for every client that has no UI customization set previously.
  /// [creationDate] The creation date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) for the UI customization.
  /// [css] The CSS values in the UI customization, provided as a String. At least one of `css` or `image_file` is required.
  /// [cssVersion] The CSS version number.
  /// [imageFile] The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of `css` or `image_file` is required.
  /// [imageUrl] The logo image URL for the UI customization.
  /// [lastModifiedDate] The last-modified date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) for the UI customization.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [userPoolId] The user pool ID for the user pool.
  const UserPoolUICustomizationState({
    this.clientId,
    this.creationDate,
    this.css,
    this.cssVersion,
    this.imageFile,
    this.imageUrl,
    this.lastModifiedDate,
    this.region,
    this.userPoolId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': ?clientId,
      'creationDate': ?creationDate,
      'css': ?css,
      'cssVersion': ?cssVersion,
      'imageFile': ?imageFile,
      'imageUrl': ?imageUrl,
      'lastModifiedDate': ?lastModifiedDate,
      'region': ?region,
      'userPoolId': ?userPoolId,
    };
  }

  factory UserPoolUICustomizationState.fromMap(Map<String, dynamic> map) {
    return UserPoolUICustomizationState(
      clientId: (() { final guardedValue = map['clientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      css: (() { final guardedValue = map['css']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cssVersion: (() { final guardedValue = map['cssVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageFile: (() { final guardedValue = map['imageFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageUrl: (() { final guardedValue = map['imageUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      lastModifiedDate: (() { final guardedValue = map['lastModifiedDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userPoolId: (() { final guardedValue = map['userPoolId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

