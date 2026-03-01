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
  UserPoolUICustomizationState({
    pulumi.Output<String>? clientId,
    pulumi.Output<String>? creationDate,
    pulumi.Output<String>? css,
    pulumi.Output<String>? cssVersion,
    pulumi.Output<String>? imageFile,
    pulumi.Output<String>? imageUrl,
    pulumi.Output<String>? lastModifiedDate,
    pulumi.Output<String>? region,
    pulumi.Output<String>? userPoolId,
  }) :
      clientId = pulumi.Input.asOptionalInput<String>(clientId),
      creationDate = pulumi.Input.asOptionalInput<String>(creationDate),
      css = pulumi.Input.asOptionalInput<String>(css),
      cssVersion = pulumi.Input.asOptionalInput<String>(cssVersion),
      imageFile = pulumi.Input.asOptionalInput<String>(imageFile),
      imageUrl = pulumi.Input.asOptionalInput<String>(imageUrl),
      lastModifiedDate = pulumi.Input.asOptionalInput<String>(lastModifiedDate),
      region = pulumi.Input.asOptionalInput<String>(region),
      userPoolId = pulumi.Input.asOptionalInput<String>(userPoolId);

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
      clientId: map['clientId'] == null ? null : pulumi.Output.create<String>(map['clientId'] as String),
      creationDate: map['creationDate'] == null ? null : pulumi.Output.create<String>(map['creationDate'] as String),
      css: map['css'] == null ? null : pulumi.Output.create<String>(map['css'] as String),
      cssVersion: map['cssVersion'] == null ? null : pulumi.Output.create<String>(map['cssVersion'] as String),
      imageFile: map['imageFile'] == null ? null : pulumi.Output.create<String>(map['imageFile'] as String),
      imageUrl: map['imageUrl'] == null ? null : pulumi.Output.create<String>(map['imageUrl'] as String),
      lastModifiedDate: map['lastModifiedDate'] == null ? null : pulumi.Output.create<String>(map['lastModifiedDate'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      userPoolId: map['userPoolId'] == null ? null : pulumi.Output.create<String>(map['userPoolId'] as String),
    );
  }
}

