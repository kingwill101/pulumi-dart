// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_access_log_subscription_access_log_subscription_args_doc}
/// The set of arguments for AccessLogSubscription.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_access_log_subscription_access_log_subscription_args_doc}
class AccessLogSubscriptionArgs {
  /// ARN of the log destination.
  final pulumi.Input<String> destinationArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceIdentifier;
  /// Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  final pulumi.Input<String?>? serviceNetworkLogType;
  /// Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [AccessLogSubscriptionArgs].
  /// [destinationArn] ARN of the log destination.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceIdentifier] ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  /// [serviceNetworkLogType] Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const AccessLogSubscriptionArgs({
    required this.destinationArn,
    this.region,
    required this.resourceIdentifier,
    this.serviceNetworkLogType,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destinationArn': destinationArn,
      'region': ?region,
      'resourceIdentifier': resourceIdentifier,
      'serviceNetworkLogType': ?serviceNetworkLogType,
      'tags': ?tags,
    };
  }

  factory AccessLogSubscriptionArgs.fromMap(Map<String, dynamic> map) {
    return AccessLogSubscriptionArgs(
      destinationArn: pulumi.Input.fromValue(map['destinationArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceIdentifier: pulumi.Input.fromValue(map['resourceIdentifier'] as String),
      serviceNetworkLogType: (() { final guardedValue = map['serviceNetworkLogType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
