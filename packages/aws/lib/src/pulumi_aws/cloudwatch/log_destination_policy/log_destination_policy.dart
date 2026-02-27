import 'package:pulumi/pulumi.dart';
import 'log_destination_policy_args.dart';

/// Provides a CloudWatch Logs destination policy resource.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Logs destination policies using the `destination_name`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/logDestinationPolicy:LogDestinationPolicy test_destination_policy test_destination
/// ```
class LogDestinationPolicy extends CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final Output<String> accessPolicy;

  /// A name for the subscription filter
  late final Output<String> destinationName;

  /// Specify true if you are updating an existing destination policy to grant permission to an organization ID instead of granting permission to individual AWS accounts.
  late final Output<bool?> forceUpdate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  LogDestinationPolicy(
    String name, {
    LogDestinationPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDestinationPolicy:LogDestinationPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accessPolicy = registerOutput<String>('accessPolicy');
    this.destinationName = registerOutput<String>('destinationName');
    this.forceUpdate = registerOutput<bool?>('forceUpdate');
    this.region = registerOutput<String>('region');
  }
}
