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
  /// The ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? resourceIdentifier;
  /// Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  final pulumi.Input<String>? serviceNetworkLogType;
  final pulumi.Input<Map<String, String>>? tags;
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AccessLogSubscriptionState].
  /// [arn] Amazon Resource Name (ARN) of the access log subscription.
  /// [destinationArn] Amazon Resource Name (ARN) of the log destination.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceArn] Amazon Resource Name (ARN) of the service network or service.
  /// [resourceIdentifier] The ID or Amazon Resource Identifier (ARN) of the service network or service. You must use the ARN if the resources specified in the operation are in different accounts.
  /// [serviceNetworkLogType] Type of log that monitors your Amazon VPC Lattice service networks. Valid values are: `SERVICE`, `RESOURCE`. Defaults to `SERVICE`.
  /// [tags] Optional.
  /// [tagsAll] Optional.
  AccessLogSubscriptionState({
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
      arn: map['arn'] == null ? null : (map['arn'] as String).input(),
      destinationArn: map['destinationArn'] == null ? null : (map['destinationArn'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      resourceArn: map['resourceArn'] == null ? null : (map['resourceArn'] as String).input(),
      resourceIdentifier: map['resourceIdentifier'] == null ? null : (map['resourceIdentifier'] as String).input(),
      serviceNetworkLogType: map['serviceNetworkLogType'] == null ? null : (map['serviceNetworkLogType'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      tagsAll: map['tagsAll'] == null ? null : ((map['tagsAll'] as Map).cast<String, String>()).input(),
    );
  }
}

