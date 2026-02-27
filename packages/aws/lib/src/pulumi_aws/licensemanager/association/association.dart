import 'package:pulumi/pulumi.dart' as pulumi;
import 'association_args.dart';

/// Provides a License Manager association.
///
/// > **Note:** License configurations can also be associated with launch templates by specifying the `license_specifications` block for an `aws.ec2.LaunchTemplate`.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import license configurations using `resource_arn,license_configuration_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:licensemanager/association:Association example arn:aws:ec2:eu-west-1:123456789012:image/ami-123456789abcdef01,arn:aws:license-manager:eu-west-1:123456789012:license-configuration:lic-0123456789abcdef0123456789abcdef
/// ```
class Association extends pulumi.CustomResource {
  /// ARN of the license configuration.
  late final pulumi.Output<String> licenseConfigurationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the resource associated with the license configuration.
  late final pulumi.Output<String> resourceArn;

  Association(
    String name, {
    AssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:licensemanager/association:Association',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.licenseConfigurationArn =
        registerOutput<String>('licenseConfigurationArn');
    this.region = registerOutput<String>('region');
    this.resourceArn = registerOutput<String>('resourceArn');
  }
}
