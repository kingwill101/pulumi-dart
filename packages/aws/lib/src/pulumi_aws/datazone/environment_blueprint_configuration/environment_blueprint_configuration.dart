import 'package:pulumi/pulumi.dart';
import 'environment_blueprint_configuration_args.dart';

/// Resource for managing an AWS DataZone Environment Blueprint Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Environment Blueprint Configuration using the `domain_id` and `environment_blueprint_id`, separated by a `/`. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/environmentBlueprintConfiguration:EnvironmentBlueprintConfiguration example domain-id-12345/environment-blueprint-id-54321
/// ```
class EnvironmentBlueprintConfiguration extends CustomResource {
  /// ID of the Domain.
  late final Output<String> domainId;

  /// Regions in which the blueprint is enabled
  ///
  /// The following arguments are optional:
  late final Output<List<String>> enabledRegions;

  /// ID of the Environment Blueprint
  late final Output<String> environmentBlueprintId;

  /// ARN of the manage access role with which this blueprint is created.
  late final Output<String?> manageAccessRoleArn;

  /// ARN of the provisioning role with which this blueprint is created.
  late final Output<String?> provisioningRoleArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Parameters for each region in which the blueprint is enabled
  late final Output<Map<String, Map<String, String>>?> regionalParameters;

  EnvironmentBlueprintConfiguration(
    String name, {
    EnvironmentBlueprintConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/environmentBlueprintConfiguration:EnvironmentBlueprintConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.domainId = registerOutput<String>('domainId');
    this.enabledRegions = registerOutput<List<String>>('enabledRegions');
    this.environmentBlueprintId =
        registerOutput<String>('environmentBlueprintId');
    this.manageAccessRoleArn = registerOutput<String?>('manageAccessRoleArn');
    this.provisioningRoleArn = registerOutput<String?>('provisioningRoleArn');
    this.region = registerOutput<String>('region');
    this.regionalParameters =
        registerOutput<Map<String, Map<String, String>>?>('regionalParameters');
  }
}
