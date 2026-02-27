import 'package:pulumi/pulumi.dart' as pulumi;
import '../user_profile_detail/user_profile_detail.dart';
import '../user_profile_timeouts/user_profile_timeouts.dart';
import 'user_profile_args.dart';

/// Resource for managing an AWS DataZone User Profile.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone User Profile using the `user_identifier,domain_identifier,type`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/userProfile:UserProfile example arn:aws:iam::123456789012:user/example,dzd_54nakfrg9k6suo,IAM
/// ```
class UserProfile extends pulumi.CustomResource {
  /// Details about the user profile.
  late final pulumi.Output<List<UserProfileDetail>> details;

  /// The domain identifier.
  late final pulumi.Output<String> domainIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The user profile status.
  late final pulumi.Output<String> status;
  late final pulumi.Output<UserProfileTimeouts?> timeouts;

  /// The user profile type.
  late final pulumi.Output<String> type;

  /// The user identifier.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> userIdentifier;

  /// The user type.
  late final pulumi.Output<String> userType;

  UserProfile(
    String name, {
    UserProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/userProfile:UserProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.details = registerOutput<List<UserProfileDetail>>('details');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.region = registerOutput<String>('region');
    this.status = registerOutput<String>('status');
    this.timeouts = registerOutput<UserProfileTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
    this.userIdentifier = registerOutput<String>('userIdentifier');
    this.userType = registerOutput<String>('userType');
  }
}
