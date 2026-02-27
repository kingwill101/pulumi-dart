import 'package:pulumi/pulumi.dart' as pulumi;
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
class LogDestinationPolicy extends pulumi.CustomResource {
  /// The policy document. This is a JSON formatted string.
  late final pulumi.Output<String> accessPolicy;

  /// A name for the subscription filter
  late final pulumi.Output<String> destinationName;

  /// Specify true if you are updating an existing destination policy to grant permission to an organization ID instead of granting permission to individual AWS accounts.
  late final pulumi.Output<bool?> forceUpdate;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  LogDestinationPolicy(
    String name, {
    LogDestinationPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/logDestinationPolicy:LogDestinationPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accessPolicy = registerOutput<String>('accessPolicy');
    this.destinationName = registerOutput<String>('destinationName');
    this.forceUpdate = registerOutput<bool?>('forceUpdate');
    this.region = registerOutput<String>('region');
  }
}
