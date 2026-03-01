// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_timeouts.dart';

/// Input properties used for looking up and filtering Namespace resources.
class NamespaceState {
  /// ARN of the Namespace.
  final pulumi.Input<String>? arn;
  /// AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  final pulumi.Input<String>? awsAccountId;
  /// Namespace AWS Region.
  final pulumi.Input<String>? capacityRegion;
  /// Creation status of the namespace.
  final pulumi.Input<String>? creationStatus;
  /// User identity directory type. Defaults to `QUICKSIGHT`, the only current valid value.
  final pulumi.Input<String>? identityStore;
  /// Name of the namespace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? namespace;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<NamespaceTimeouts>? timeouts;

  /// Creates a new [NamespaceState].
  /// [arn] ARN of the Namespace.
  /// [awsAccountId] AWS account ID. Defaults to automatically determined account ID of the Terraform AWS provider.
  /// [capacityRegion] Namespace AWS Region.
  /// [creationStatus] Creation status of the namespace.
  /// [identityStore] User identity directory type. Defaults to `QUICKSIGHT`, the only current valid value.
  /// [namespace] Name of the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [timeouts] Optional.
  NamespaceState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? awsAccountId,
    pulumi.Output<String>? capacityRegion,
    pulumi.Output<String>? creationStatus,
    pulumi.Output<String>? identityStore,
    pulumi.Output<String>? namespace,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<NamespaceTimeouts>? timeouts,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      awsAccountId = pulumi.Input.asOptionalInput<String>(awsAccountId),
      capacityRegion = pulumi.Input.asOptionalInput<String>(capacityRegion),
      creationStatus = pulumi.Input.asOptionalInput<String>(creationStatus),
      identityStore = pulumi.Input.asOptionalInput<String>(identityStore),
      namespace = pulumi.Input.asOptionalInput<String>(namespace),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      timeouts = pulumi.Input.asOptionalInput<NamespaceTimeouts>(timeouts);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'awsAccountId': ?awsAccountId,
      'capacityRegion': ?capacityRegion,
      'creationStatus': ?creationStatus,
      'identityStore': ?identityStore,
      'namespace': ?namespace,
      'region': ?region,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<NamespaceTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory NamespaceState.fromMap(Map<String, dynamic> map) {
    return NamespaceState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      awsAccountId: map['awsAccountId'] == null ? null : pulumi.Output.create<String>(map['awsAccountId'] as String),
      capacityRegion: map['capacityRegion'] == null ? null : pulumi.Output.create<String>(map['capacityRegion'] as String),
      creationStatus: map['creationStatus'] == null ? null : pulumi.Output.create<String>(map['creationStatus'] as String),
      identityStore: map['identityStore'] == null ? null : pulumi.Output.create<String>(map['identityStore'] as String),
      namespace: map['namespace'] == null ? null : pulumi.Output.create<String>(map['namespace'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      timeouts: map['timeouts'] == null ? null : pulumi.Output.create<NamespaceTimeouts>(NamespaceTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())),
    );
  }
}

