// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering AccessLogSubscription resources.
class AccessLogSubscriptionState {
  /// Amazon Resource Name (ARN) of the access log subscription.
  final pulumi.Input<String>? arn;
  /// Amazon Resource Name (ARN) of the log destination.
  final pulumi.Input<String>? destinationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Amazon Resource Name (ARN) of the service network or service.
  final pulumi.Input<String>? resourceArn;
  /// ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? resourceIdentifier;
  /// Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  final pulumi.Input<String>? serviceNetworkLogType;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AccessLogSubscriptionState].
  /// [arn] Amazon Resource Name (ARN) of the access log subscription.
  /// [destinationArn] Amazon Resource Name (ARN) of the log destination.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Amazon Resource Name (ARN) of the service network or service.
  /// [resourceIdentifier] ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  /// [serviceNetworkLogType] Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Optional.
  const AccessLogSubscriptionState({
    this.arn,
    this.destinationArn,
    this.region,
    this.resourceArn,
    this.resourceIdentifier,
    this.serviceNetworkLogType,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'destinationArn': ?destinationArn,
      'region': ?region,
      'resourceArn': ?resourceArn,
      'resourceIdentifier': ?resourceIdentifier,
      'serviceNetworkLogType': ?serviceNetworkLogType,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AccessLogSubscriptionState.fromMap(Map<String, dynamic> map) {
    return AccessLogSubscriptionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      destinationArn: (() { final guardedValue = map['destinationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceArn: (() { final guardedValue = map['resourceArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceIdentifier: (() { final guardedValue = map['resourceIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      serviceNetworkLogType: (() { final guardedValue = map['serviceNetworkLogType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
