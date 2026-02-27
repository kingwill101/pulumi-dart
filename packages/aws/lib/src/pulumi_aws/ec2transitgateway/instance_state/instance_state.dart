import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_state_args.dart';

/// Provides an EC2 instance state resource. This allows managing an instance power state.
///
/// > **NOTE on Instance State Management:** AWS does not currently have an EC2 API operation to determine an instance has finished processing user data. As a result, this resource can interfere with user data processing. For example, this resource may stop an instance while the user data script is in mid run.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2transitgateway.InstanceState` using the `instance_id` attribute. For example:
///
/// ```sh
/// $ pulumi import aws:ec2transitgateway/instanceState:InstanceState test i-02cae6557dfcf2f96
/// ```
class InstanceState extends pulumi.CustomResource {
  /// Whether to request a forced stop when `state` is `stopped`. Otherwise (_i.e._, `state` is `running`), ignored. When an instance is forced to stop, it does not flush file system caches or file system metadata, and you must subsequently perform file system check and repair. Not recommended for Windows instances. Defaults to `false`.
  late final pulumi.Output<bool?> force;

  /// ID of the instance.
  late final pulumi.Output<String> instanceId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// State of the instance. Valid values are `stopped`, `running`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> state;

  InstanceState(
    String name, {
    InstanceStateArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2transitgateway/instanceState:InstanceState',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.force = registerOutput<bool?>('force');
    this.instanceId = registerOutput<String>('instanceId');
    this.region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
  }
}
