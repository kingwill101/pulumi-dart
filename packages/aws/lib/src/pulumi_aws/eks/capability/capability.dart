import 'package:pulumi/pulumi.dart';
import '../capability_configuration/capability_configuration.dart';
import '../capability_timeouts/capability_timeouts.dart';
import 'capability_args.dart';

/// Manages an EKS Capability for an EKS cluster.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import EKS Capability using the `cluster_name` and `capability_name` separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:eks/capability:Capability example my-cluster,my-capability
/// ```
class Capability extends CustomResource {
  /// ARN of the capability.
  late final Output<String> arn;

  /// Name of the capability. Must be unique within the cluster.
  late final Output<String> capabilityName;

  /// Name of the EKS cluster.
  late final Output<String> clusterName;

  /// Configuration for the capability. See `configuration` below.
  late final Output<CapabilityConfiguration?> configuration;

  /// Delete propagation policy for the capability. Valid values: `RETAIN`.
  late final Output<String> deletePropagationPolicy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of the IAM role to associate with the capability.
  late final Output<String> roleArn;

  /// Key-value map of resource tags.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<CapabilityTimeouts?> timeouts;

  /// Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  late final Output<String> type;

  /// Version of the capability.
  late final Output<String> version;

  Capability(
    String name, {
    CapabilityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:eks/capability:Capability',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.capabilityName = registerOutput<String>('capabilityName');
    this.clusterName = registerOutput<String>('clusterName');
    this.configuration =
        registerOutput<CapabilityConfiguration?>('configuration');
    this.deletePropagationPolicy =
        registerOutput<String>('deletePropagationPolicy');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<CapabilityTimeouts?>('timeouts');
    this.type = registerOutput<String>('type');
    this.version = registerOutput<String>('version');
  }
}
