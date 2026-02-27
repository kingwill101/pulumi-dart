import 'package:pulumi/pulumi.dart';
import 'authentication_profile_args.dart';

/// Creates a Redshift authentication profile
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Authentication by `authentication_profile_name`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/authenticationProfile:AuthenticationProfile test example
/// ```
class AuthenticationProfile extends CustomResource {
  /// The content of the authentication profile in JSON format. The maximum length of the JSON string is determined by a quota for your account.
  late final Output<String> authenticationProfileContent;

  /// The name of the authentication profile.
  late final Output<String> authenticationProfileName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  AuthenticationProfile(
    String name, {
    AuthenticationProfileArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshift/authenticationProfile:AuthenticationProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.authenticationProfileContent =
        registerOutput<String>('authenticationProfileContent');
    this.authenticationProfileName =
        registerOutput<String>('authenticationProfileName');
    this.region = registerOutput<String>('region');
  }
}
