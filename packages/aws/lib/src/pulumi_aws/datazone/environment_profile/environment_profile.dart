import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_profile_user_parameter/environment_profile_user_parameter.dart';
import 'environment_profile_args.dart';

/// Resource for managing an AWS DataZone Environment Profile.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Environment Profile using a comma-delimited string combining `id` and `domain_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/environmentProfile:EnvironmentProfile example environment_profile-id-12345678,domain-id-12345678
/// ```
class EnvironmentProfile extends pulumi.CustomResource {
  /// Id of the AWS account being used.
  late final pulumi.Output<String> awsAccountId;

  /// Desired region for environment profile.
  late final pulumi.Output<String> awsAccountRegion;

  /// Creation time of environment profile.
  late final pulumi.Output<String> createdAt;

  /// Creator of environment profile.
  late final pulumi.Output<String> createdBy;

  /// Description of environment profile.
  late final pulumi.Output<String> description;

  /// Domain Identifier for environment profile.
  late final pulumi.Output<String> domainIdentifier;

  /// ID of the blueprint which the environment will be created with.
  late final pulumi.Output<String> environmentBlueprintIdentifier;

  /// Name of the environment profile.
  late final pulumi.Output<String> name;

  /// Project identifier for environment profile.
  late final pulumi.Output<String> projectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Time of last update to environment profile.
  late final pulumi.Output<String> updatedAt;

  /// Array of user parameters of the environment profile with the following attributes:
  late final pulumi.Output<List<EnvironmentProfileUserParameter>?>
      userParameters;

  EnvironmentProfile(
    String name, {
    EnvironmentProfileArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environmentProfile:EnvironmentProfile',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.awsAccountId = registerOutput<String>('awsAccountId');
    this.awsAccountRegion = registerOutput<String>('awsAccountRegion');
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.environmentBlueprintIdentifier =
        registerOutput<String>('environmentBlueprintIdentifier');
    this.name = registerOutput<String>('name');
    this.projectIdentifier = registerOutput<String>('projectIdentifier');
    this.region = registerOutput<String>('region');
    this.updatedAt = registerOutput<String>('updatedAt');
    this.userParameters =
        registerOutput<List<EnvironmentProfileUserParameter>?>(
            'userParameters');
  }
}
