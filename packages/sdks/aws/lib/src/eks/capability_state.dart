// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capability_configuration.dart';
import 'capability_timeouts.dart';

/// Input properties used for looking up and filtering Capability resources.
class CapabilityState {
  /// ARN of the capability.
  final pulumi.Input<String>? arn;
  /// Name of the capability. Must be unique within the cluster.
  final pulumi.Input<String>? capabilityName;
  /// Name of the EKS cluster.
  final pulumi.Input<String>? clusterName;
  /// Configuration for the capability. See `configuration` below.
  final pulumi.Input<CapabilityConfiguration>? configuration;
  /// Delete propagation policy for the capability. Valid values: `RETAIN`.
  final pulumi.Input<String>? deletePropagationPolicy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of the IAM role to associate with the capability.
  final pulumi.Input<String>? roleArn;
  /// Key-value map of resource tags.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<CapabilityTimeouts>? timeouts;
  /// Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  final pulumi.Input<String>? type;
  /// Version of the capability.
  final pulumi.Input<String>? version;

  /// Creates a new [CapabilityState].
  /// [arn] ARN of the capability.
  /// [capabilityName] Name of the capability. Must be unique within the cluster.
  /// [clusterName] Name of the EKS cluster.
  /// [configuration] Configuration for the capability. See `configuration` below.
  /// [deletePropagationPolicy] Delete propagation policy for the capability. Valid values: `RETAIN`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of the IAM role to associate with the capability.
  /// [tags] Key-value map of resource tags.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  /// [type] Type of the capability. Valid values: `ACK`, `KRO`, `ARGOCD`.
  /// [version] Version of the capability.
  CapabilityState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? capabilityName,
    pulumi.Output<String>? clusterName,
    pulumi.Output<CapabilityConfiguration>? configuration,
    pulumi.Output<String>? deletePropagationPolicy,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<CapabilityTimeouts>? timeouts,
    pulumi.Output<String>? type,
    pulumi.Output<String>? version,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      capabilityName = pulumi.Input.asOptionalInput<String>(capabilityName),
      clusterName = pulumi.Input.asOptionalInput<String>(clusterName),
      configuration = pulumi.Input.asOptionalInput<CapabilityConfiguration>(configuration),
      deletePropagationPolicy = pulumi.Input.asOptionalInput<String>(deletePropagationPolicy),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<CapabilityTimeouts>(timeouts),
      type = pulumi.Input.asOptionalInput<String>(type),
      version = pulumi.Input.asOptionalInput<String>(version);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capabilityName': ?capabilityName,
      'clusterName': ?clusterName,
      'configuration': ?pulumi.Input.mapOptionalInputValue<CapabilityConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'deletePropagationPolicy': ?deletePropagationPolicy,
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<CapabilityTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
      'type': ?type,
      'version': ?version,
    };
  }

  factory CapabilityState.fromMap(Map<String, dynamic> map) {
    return CapabilityState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      capabilityName: map['capabilityName'] == null ? null : pulumi.Output.create<String>(map['capabilityName'] as String),
      clusterName: map['clusterName'] == null ? null : pulumi.Output.create<String>(map['clusterName'] as String),
      configuration: map['configuration'] == null ? null : pulumi.Output.create<CapabilityConfiguration>(CapabilityConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      deletePropagationPolicy: map['deletePropagationPolicy'] == null ? null : pulumi.Output.create<String>(map['deletePropagationPolicy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<CapabilityTimeouts>(CapabilityTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
    );
  }
}

