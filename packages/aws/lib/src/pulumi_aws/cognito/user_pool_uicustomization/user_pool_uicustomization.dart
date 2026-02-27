import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_uicustomization_args.dart';

/// Provides a Cognito User Pool UI Customization resource.
///
/// > **Note:** To use this resource, the user pool must have a domain associated with it. For more information, see the Amazon Cognito Developer Guide on [Customizing the Built-in Sign-In and Sign-up Webpages](https://docs.aws.amazon.com/cognito/latest/developerguide/cognito-user-pools-app-ui-customization.html).
///
/// ## Example Usage
///
/// ### UI customization settings for a single client
///
///
///
/// ### UI customization settings for all clients
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Cognito User Pool UI Customizations using the `user_pool_id` and `client_id` separated by `,`. For example:
///
/// ```sh
/// $ pulumi import aws:cognito/userPoolUICustomization:UserPoolUICustomization example us-west-2_ZCTarbt5C,12bu4fuk3mlgqa2rtrujgp6egq
/// ```
class UserPoolUICustomization extends pulumi.CustomResource {
  /// The client ID for the client app. Defaults to `ALL`. If `ALL` is specified, the `css` and/or `image_file` settings will be used for every client that has no UI customization set previously.
  late final pulumi.Output<String?> clientId;

  /// The creation date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) for the UI customization.
  late final pulumi.Output<String> creationDate;

  /// The CSS values in the UI customization, provided as a String. At least one of `css` or `image_file` is required.
  late final pulumi.Output<String?> css;

  /// The CSS version number.
  late final pulumi.Output<String> cssVersion;

  /// The uploaded logo image for the UI customization, provided as a base64-encoded String. Drift detection is not possible for this argument. At least one of `css` or `image_file` is required.
  late final pulumi.Output<String?> imageFile;

  /// The logo image URL for the UI customization.
  late final pulumi.Output<String> imageUrl;

  /// The last-modified date in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) for the UI customization.
  late final pulumi.Output<String> lastModifiedDate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The user pool ID for the user pool.
  late final pulumi.Output<String> userPoolId;

  UserPoolUICustomization(
    String name, {
    UserPoolUICustomizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cognito/userPoolUICustomization:UserPoolUICustomization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.clientId = registerOutput<String?>('clientId');
    this.creationDate = registerOutput<String>('creationDate');
    this.css = registerOutput<String?>('css');
    this.cssVersion = registerOutput<String>('cssVersion');
    this.imageFile = registerOutput<String?>('imageFile');
    this.imageUrl = registerOutput<String>('imageUrl');
    this.lastModifiedDate = registerOutput<String>('lastModifiedDate');
    this.region = registerOutput<String>('region');
    this.userPoolId = registerOutput<String>('userPoolId');
  }
}
