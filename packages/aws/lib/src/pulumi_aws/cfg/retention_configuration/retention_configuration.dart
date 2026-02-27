import 'package:pulumi/pulumi.dart' as pulumi;
import 'retention_configuration_args.dart';

/// Provides a resource to manage the AWS Config retention configuration.
/// The retention configuration defines the number of days that AWS Config stores historical information.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import the AWS Config retention configuration using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/retentionConfiguration:RetentionConfiguration example default
/// ```
class RetentionConfiguration extends pulumi.CustomResource {
  /// The name of the retention configuration object. The object is always named **default**.
  late final pulumi.Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The number of days AWS Config stores historical information.
  late final pulumi.Output<int> retentionPeriodInDays;

  RetentionConfiguration(
    String name, {
    RetentionConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/retentionConfiguration:RetentionConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
  }
}
