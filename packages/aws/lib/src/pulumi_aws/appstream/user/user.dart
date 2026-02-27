import 'package:pulumi/pulumi.dart';
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
class User extends CustomResource {
  /// ARN of the appstream user.
  late final Output<String> arn;

  /// Authentication type for the user. You must specify USERPOOL. Valid values: `API`, `SAML`, `USERPOOL`
  late final Output<String> authenticationType;

  /// Date and time, in UTC and extended RFC 3339 format, when the user was created.
  late final Output<String> createdTime;

  /// Whether the user in the user pool is enabled.
  late final Output<bool?> enabled;

  /// First name, or given name, of the user.
  late final Output<String?> firstName;

  /// Last name, or surname, of the user.
  late final Output<String?> lastName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Send an email notification.
  late final Output<bool?> sendEmailNotification;

  /// Email address of the user.
  ///
  /// The following arguments are optional:
  late final Output<String> userName;

  User(
    String name, {
    UserArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:appstream/user:User',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
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
