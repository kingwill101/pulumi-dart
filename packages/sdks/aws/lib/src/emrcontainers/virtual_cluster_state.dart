// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_cluster_container_provider.dart';

/// Input properties used for looking up and filtering VirtualCluster resources.
class VirtualClusterState {
  /// ARN of the cluster.
  final pulumi.Input<String>? arn;
  /// Configuration block for the container provider associated with your cluster.
  final pulumi.Input<VirtualClusterContainerProvider>? containerProvider;
  /// Name of the virtual cluster.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [VirtualClusterState].
  /// [arn] ARN of the cluster.
  /// [containerProvider] Configuration block for the container provider associated with your cluster.
  /// [name] Name of the virtual cluster.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  VirtualClusterState({
    pulumi.Output<String>? arn,
    pulumi.Output<VirtualClusterContainerProvider>? containerProvider,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      containerProvider = pulumi.Input.asOptionalInput<VirtualClusterContainerProvider>(containerProvider),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'containerProvider': ?pulumi.Input.mapOptionalInputValue<VirtualClusterContainerProvider, Map<String, dynamic>>(containerProvider, (value) => value.toMap()),
      'name': ?name,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory VirtualClusterState.fromMap(Map<String, dynamic> map) {
    return VirtualClusterState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      containerProvider: map['containerProvider'] == null ? null : pulumi.Output.create<VirtualClusterContainerProvider>(VirtualClusterContainerProvider.fromMap((map['containerProvider'] as Map).cast<String, dynamic>())),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

