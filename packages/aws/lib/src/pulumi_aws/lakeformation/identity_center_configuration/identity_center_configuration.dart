import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_center_configuration_args.dart';

/// Manages an AWS Lake Formation Identity Center Configuration.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Lake Formation Identity Center Configuration using the `catalog_id`. For example:
///
/// ```sh
/// $ pulumi import aws:lakeformation/identityCenterConfiguration:IdentityCenterConfiguration example 123456789012
/// ```
class IdentityCenterConfiguration extends pulumi.CustomResource {
  /// ARN of the Lake Formation applicated integrated with IAM Identity Center.
  late final pulumi.Output<String> applicationArn;

  /// Identifier for the Data Catalog.
  /// By default, the account ID.
  late final pulumi.Output<String> catalogId;

  /// ARN of the IAM Identity Center Instance to associate.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> instanceArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// ARN of the Resource Access Manager (RAM) resource share.
  late final pulumi.Output<String> resourceShare;

  IdentityCenterConfiguration(
    String name, {
    IdentityCenterConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:lakeformation/identityCenterConfiguration:IdentityCenterConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.applicationArn = registerOutput<String>('applicationArn');
    this.catalogId = registerOutput<String>('catalogId');
    this.instanceArn = registerOutput<String>('instanceArn');
    this.region = registerOutput<String>('region');
    this.resourceShare = registerOutput<String>('resourceShare');
  }
}
