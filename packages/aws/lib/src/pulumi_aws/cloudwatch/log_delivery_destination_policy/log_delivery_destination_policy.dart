import 'package:pulumi/pulumi.dart' as pulumi;
import 'log_delivery_destination_policy_args.dart';

/// Resource for managing an AWS CloudWatch Logs Delivery Destination Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs Delivery Destination Policy using the `delivery_destination_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDeliveryDestinationPolicy:LogDeliveryDestinationPolicy example example
/// ```
class LogDeliveryDestinationPolicy extends pulumi.CustomResource {
  /// The name of the delivery destination to assign this policy to.
  late final pulumi.Output<String> deliveryDestinationName;

  /// The contents of the policy.
  late final pulumi.Output<String> deliveryDestinationPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LogDeliveryDestinationPolicy(
    String name, {
    LogDeliveryDestinationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDeliveryDestinationPolicy:LogDeliveryDestinationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.deliveryDestinationName =
        registerOutput<String>('deliveryDestinationName');
    this.deliveryDestinationPolicy =
        registerOutput<String>('deliveryDestinationPolicy');
    this.region = registerOutput<String>('region');
  }
}
