import 'package:pulumi/pulumi.dart' as pulumi;
import '../registry_scanning_configuration_rule/registry_scanning_configuration_rule.dart';
import 'registry_scanning_configuration_args.dart';

/// Provides an Elastic Container Registry Scanning Configuration. Can't be completely deleted, instead reverts to the default `BASIC` scanning configuration without rules.
///
/// ## Example Usage
///
/// ### Basic example
///
///
///
/// ### Multiple rules
///
///
///
/// ## Import
///
/// Using `pulumi import`, import ECR Scanning Configurations using the `registry_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ecr/registryScanningConfiguration:RegistryScanningConfiguration example 123456789012
/// ```
class RegistryScanningConfiguration extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The registry ID the scanning configuration applies to.
  late final pulumi.Output<String> registryId;

  /// One or multiple blocks specifying scanning rules to determine which repository filters are used and at what frequency scanning will occur. See below for schema.
  late final pulumi.Output<List<RegistryScanningConfigurationRule>?> rules;

  /// the scanning type to set for the registry. Can be either `ENHANCED` or `BASIC`.
  late final pulumi.Output<String> scanType;

  RegistryScanningConfiguration(
    String name, {
    RegistryScanningConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ecr/registryScanningConfiguration:RegistryScanningConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.registryId = registerOutput<String>('registryId');
    this.rules =
        registerOutput<List<RegistryScanningConfigurationRule>?>('rules');
    this.scanType = registerOutput<String>('scanType');
  }
}
