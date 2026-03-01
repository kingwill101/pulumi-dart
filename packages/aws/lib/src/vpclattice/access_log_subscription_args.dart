// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpclattice_access_log_subscription_access_log_subscription_args_doc}
/// The set of arguments for AccessLogSubscription.
/// {@endtemplate}
/// {@macro pulumi_vpclattice_access_log_subscription_access_log_subscription_args_doc}
class AccessLogSubscriptionArgs {
  /// Amazon Resource Name (ARN) of the log destination.
  final pulumi.Input<String> destinationArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> resourceIdentifier;

  /// Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  final pulumi.Input<String>? serviceNetworkLogType;
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [AccessLogSubscriptionArgs].
  /// [destinationArn] Amazon Resource Name (ARN) of the log destination.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceIdentifier] The ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  /// [serviceNetworkLogType] Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  /// [tags] Optional.
  AccessLogSubscriptionArgs({
    required String destinationArn,
    String? region,
    required String resourceIdentifier,
    String? serviceNetworkLogType,
    Map<String, String>? tags,
  }) : destinationArn = pulumi.Input.asInput<String>(destinationArn),
       region = pulumi.Input.asOptionalInput<String>(region),
       resourceIdentifier = pulumi.Input.asInput<String>(resourceIdentifier),
       serviceNetworkLogType = pulumi.Input.asOptionalInput<String>(
         serviceNetworkLogType,
       ),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

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
      destinationArn: map['destinationArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceIdentifier: map['resourceIdentifier'] as String,
      serviceNetworkLogType: map['serviceNetworkLogType'] == null
          ? null
          : map['serviceNetworkLogType'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
