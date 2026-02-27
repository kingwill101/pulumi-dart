import 'package:pulumi/pulumi.dart';
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
class RetentionConfiguration extends CustomResource {
  /// The name of the retention configuration object. The object is always named **default**.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The number of days AWS Config stores historical information.
  late final Output<int> retentionPeriodInDays;

  RetentionConfiguration(
    String name, {
    RetentionConfigurationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cfg/retentionConfiguration:RetentionConfiguration',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.retentionPeriodInDays = registerOutput<int>('retentionPeriodInDays');
  }
}
