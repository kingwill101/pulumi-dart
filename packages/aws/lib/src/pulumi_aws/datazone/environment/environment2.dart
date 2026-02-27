import 'package:pulumi/pulumi.dart';
import '../environment_last_deployment/environment_last_deployment.dart';
import '../environment_provisioned_resource/environment_provisioned_resource.dart';
import '../environment_timeouts/environment_timeouts.dart';
import '../environment_user_parameter/environment_user_parameter.dart';
import 'environment_args2.dart';

/// Resource for managing an AWS DataZone Environment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Environment using the `domain_idntifier,id`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/environment:Environment example dzd_d2i7tzk3tnjjf4,5vpywijpwryec0
/// ```
class Environment2 extends CustomResource {
  /// The ID of the Amazon Web Services account where the environment exists
  late final Output<String> accountIdentifier;

  /// The Amazon Web Services region where the environment exists.
  late final Output<String> accountRegion;

  /// The blueprint with which the environment is created.
  late final Output<String> blueprintIdentifier;

  /// The time the environment was created.
  late final Output<String> createdAt;

  /// The user who created the environment.
  late final Output<String> createdBy;

  /// The description of the environment.
  late final Output<String?> description;

  /// The ID of the domain where the environment exists.
  late final Output<String> domainIdentifier;

  /// The business glossary terms that can be used in this environment.
  late final Output<List<String>?> glossaryTerms;

  /// The details of the last deployment of the environment.
  late final Output<List<EnvironmentLastDeployment>> lastDeployments;

  /// The name of the environment.
  late final Output<String> name;

  /// The ID of the profile with which the environment is created.
  late final Output<String> profileIdentifier;

  /// The ID of the project where the environment exists.
  ///
  /// The following arguments are optional:
  late final Output<String> projectIdentifier;

  /// The provider of the environment.
  late final Output<String> providerEnvironment;
  late final Output<List<EnvironmentProvisionedResource>> provisionedResources;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;
  late final Output<EnvironmentTimeouts?> timeouts;

  /// The user parameters that are used in the environment.
  /// See User Parameters for more information.
  /// Changing these values recreates the resource.
  late final Output<List<EnvironmentUserParameter>?> userParameters;

  Environment2(
    String name, {
    EnvironmentArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environment:Environment',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountIdentifier = registerOutput<String>('accountIdentifier');
    this.accountRegion = registerOutput<String>('accountRegion');
    this.blueprintIdentifier = registerOutput<String>('blueprintIdentifier');
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String?>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.glossaryTerms = registerOutput<List<String>?>('glossaryTerms');
    this.lastDeployments =
        registerOutput<List<EnvironmentLastDeployment>>('lastDeployments');
    this.name = registerOutput<String>('name');
    this.profileIdentifier = registerOutput<String>('profileIdentifier');
    this.projectIdentifier = registerOutput<String>('projectIdentifier');
    this.providerEnvironment = registerOutput<String>('providerEnvironment');
    this.provisionedResources =
        registerOutput<List<EnvironmentProvisionedResource>>(
            'provisionedResources');
    this.region = registerOutput<String>('region');
    this.timeouts = registerOutput<EnvironmentTimeouts?>('timeouts');
    this.userParameters =
        registerOutput<List<EnvironmentUserParameter>?>('userParameters');
  }
}
