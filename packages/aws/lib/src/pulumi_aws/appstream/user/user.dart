import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_args.dart';

/// Provides an AppStream user.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.User` using the `user_name` and `authentication_type` separated by a slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:appstream/user:User example UserName/AuthenticationType
/// ```
class User extends pulumi.CustomResource {
  /// ARN of the appstream user.
  late final pulumi.Output<String> arn;

  /// Authentication type for the user. You must specify USERPOOL. Valid values: `API`, `SAML`, `USERPOOL`
  late final pulumi.Output<String> authenticationType;

  /// Date and time, in UTC and extended RFC 3339 format, when the user was created.
  late final pulumi.Output<String> createdTime;

  /// Whether the user in the user pool is enabled.
  late final pulumi.Output<bool?> enabled;

  /// First name, or given name, of the user.
  late final pulumi.Output<String?> firstName;

  /// Last name, or surname, of the user.
  late final pulumi.Output<String?> lastName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Send an email notification.
  late final pulumi.Output<bool?> sendEmailNotification;

  /// Email address of the user.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userName;

  User(
    String name, {
    UserArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/user:User',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.authenticationType = registerOutput<String>('authenticationType');
    this.createdTime = registerOutput<String>('createdTime');
    this.enabled = registerOutput<bool?>('enabled');
    this.firstName = registerOutput<String?>('firstName');
    this.lastName = registerOutput<String?>('lastName');
    this.region = registerOutput<String>('region');
    this.sendEmailNotification = registerOutput<bool?>('sendEmailNotification');
    this.userName = registerOutput<String>('userName');
  }
}
