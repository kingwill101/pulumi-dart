import 'package:pulumi/pulumi.dart' as pulumi;
import 'organization_configuration_macie2_args.dart';

/// Provides a resource to manage Amazon Macie configuration settings for an organization in AWS Organizations.
class OrganizationConfigurationMacie2 extends pulumi.CustomResource {
  /// Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations.
  late final pulumi.Output<bool> autoEnable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  OrganizationConfigurationMacie2(
    String name, {
    OrganizationConfigurationMacie2Args? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:macie2/organizationConfiguration:OrganizationConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.autoEnable = registerOutput<bool>('autoEnable');
    this.region = registerOutput<String>('region');
  }
}
