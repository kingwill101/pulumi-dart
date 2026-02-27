import 'package:pulumi/pulumi.dart';
import 'sink_policy_args.dart';

/// Resource for managing an AWS CloudWatch Observability Access Manager Sink Policy.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Observability Access Manager Sink Policy using the `sink_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:oam/sinkPolicy:SinkPolicy example arn:aws:oam:us-west-2:123456789012:sink/sink-id
/// ```
class SinkPolicy extends CustomResource {
  /// ARN of the Sink.
  late final Output<String> arn;

  /// JSON policy to use. If you are updating an existing policy, the entire existing policy is replaced by what you specify here.
  late final Output<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ID string that AWS generated as part of the sink ARN.
  late final Output<String> sinkId;

  /// ARN of the sink to attach this policy to.
  late final Output<String> sinkIdentifier;

  SinkPolicy(
    String name, {
    SinkPolicyArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:oam/sinkPolicy:SinkPolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.policy = registerOutput<String>('policy');
    this.region = registerOutput<String>('region');
    this.sinkId = registerOutput<String>('sinkId');
    this.sinkIdentifier = registerOutput<String>('sinkIdentifier');
  }
}
