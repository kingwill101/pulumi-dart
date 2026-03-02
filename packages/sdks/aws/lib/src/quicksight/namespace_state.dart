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
    this.arn,
    this.awsAccountId,
    this.capacityRegion,
    this.creationStatus,
    this.identityStore,
    this.namespace,
    this.region,
    this.tags,
    this.tagsAll,
    this.timeouts,
  });

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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      awsAccountId: map['awsAccountId'] == null ? null : (map['awsAccountId'] as String).input(),
      capacityRegion: map['capacityRegion'] == null ? null : (map['capacityRegion'] as String).input(),
      creationStatus: map['creationStatus'] == null ? null : (map['creationStatus'] as String).input(),
      identityStore: map['identityStore'] == null ? null : (map['identityStore'] as String).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
      timeouts: map['timeouts'] == null ? null : (NamespaceTimeouts.fromMap((map['timeouts'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

