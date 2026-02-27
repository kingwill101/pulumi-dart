import 'package:pulumi/pulumi.dart';
import 'organization_configuration_args4.dart';

/// Provides a resource to manage Amazon Macie configuration settings for an organization in AWS Organizations.
class OrganizationConfiguration4 extends CustomResource {
  /// Whether to enable Amazon Macie automatically for accounts that are added to the organization in AWS Organizations.
  late final Output<bool> autoEnable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  OrganizationConfiguration4(
    String name, {
    OrganizationConfigurationArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:macie2/organizationConfiguration:OrganizationConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoEnable = registerOutput<bool>('autoEnable');
    this.region = registerOutput<String>('region');
  }
}
