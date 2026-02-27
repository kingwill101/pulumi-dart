import 'package:pulumi/pulumi.dart' as pulumi;
import '../default_credit_specification_timeouts/default_credit_specification_timeouts.dart';
import 'default_credit_specification_args.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) Default Credit Specification.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EC2 (Elastic Compute Cloud) Default Credit Specification using the `instance_family`. For example:
///
/// ```console
/// % pulumi import aws_ec2_default_credit_specification.example t2
///
/// ```
class DefaultCreditSpecification extends pulumi.CustomResource {
  /// Credit option for CPU usage of the instance family. Valid values: `standard`, `unlimited`.
  late final pulumi.Output<String> cpuCredits;

  /// Instance family. Valid values are `t2`, `t3`, `t3a`, `t4g`.
  late final pulumi.Output<String> instanceFamily;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<DefaultCreditSpecificationTimeouts?> timeouts;

  DefaultCreditSpecification(
    String name, {
    DefaultCreditSpecificationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/defaultCreditSpecification:DefaultCreditSpecification',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cpuCredits = registerOutput<String>('cpuCredits');
    this.instanceFamily = registerOutput<String>('instanceFamily');
    this.region = registerOutput<String>('region');
    this.timeouts =
        registerOutput<DefaultCreditSpecificationTimeouts?>('timeouts');
  }
}
