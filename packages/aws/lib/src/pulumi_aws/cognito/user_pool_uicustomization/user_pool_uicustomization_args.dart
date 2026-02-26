// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';

/// The set of arguments for UserPoolUICustomization.
class UserPoolUICustomizationArgs {
  /// The client ID for the client app. Defaults to `ALL`. If `ALL` is specified, the <span pulumi-lang-nodejs="`css`" pulumi-lang-dotnet="`Css`" pulumi-lang-go="`css`" pulumi-lang-python="`css`" pulumi-lang-yaml="`css`" pulumi-lang-java="`css`">`css`</span> and/or <span pulumi-lang-nodejs="`imageFile`" pulumi-lang-dotnet="`ImageFile`" pulumi-lang-go="`imageFile`" pulumi-lang-python="`image_file`" pulumi-lang-yaml="`imageFile`" pulumi-lang-java="`imageFile`">`image_file`</span> settings will be used for every client that has no UI customization set previously.
  final Input<String>? clientId;

  /// The CSS values in the UI customization, provided as a String. At least one of <span pulumi-lang-nodejs="`css`" pulumi-lang-dotnet="`Css`" pulumi-lang-go="`css`" pulumi-lang-python="`css`" pulumi-lang-yaml="`css`" pulumi-lang-java="`css`">`css`</span> or <span pulumi-lang-nodejs="`imageFile`" pulumi-lang-dotnet="`ImageFile`" pulumi-lang-go="`imageFile`" pulumi-lang-python="`image_file`" pulumi-lang-yaml="`imageFile`" pulumi-lang-java="`imageFile`">`image_file`</span> is required.
  final Input<String>? css;

  /// The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of <span pulumi-lang-nodejs="`css`" pulumi-lang-dotnet="`Css`" pulumi-lang-go="`css`" pulumi-lang-python="`css`" pulumi-lang-yaml="`css`" pulumi-lang-java="`css`">`css`</span> or <span pulumi-lang-nodejs="`imageFile`" pulumi-lang-dotnet="`ImageFile`" pulumi-lang-go="`imageFile`" pulumi-lang-python="`image_file`" pulumi-lang-yaml="`imageFile`" pulumi-lang-java="`imageFile`">`image_file`</span> is required.
  final Input<String>? imageFile;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The user pool ID for the user pool.
  final Input<String> userPoolId;

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
      clientId: Input.asOptionalInput<String>(map['clientId']),
      css: Input.asOptionalInput<String>(map['css']),
      imageFile: Input.asOptionalInput<String>(map['imageFile']),
      region: Input.asOptionalInput<String>(map['region']),
      userPoolId: Input.asInput<String>(map['userPoolId']),
    );
  }
}
