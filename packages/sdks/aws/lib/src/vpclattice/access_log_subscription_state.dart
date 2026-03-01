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
    pulumi.Output<String>? arn,
    pulumi.Output<String>? destinationArn,
    pulumi.Output<String>? region,
    pulumi.Output<String>? resourceArn,
    pulumi.Output<String>? resourceIdentifier,
    pulumi.Output<String>? serviceNetworkLogType,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      destinationArn = pulumi.Input.asOptionalInput<String>(destinationArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceArn = pulumi.Input.asOptionalInput<String>(resourceArn),
      resourceIdentifier = pulumi.Input.asOptionalInput<String>(resourceIdentifier),
      serviceNetworkLogType = pulumi.Input.asOptionalInput<String>(serviceNetworkLogType),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      destinationArn: map['destinationArn'] == null ? null : pulumi.Output.create<String>(map['destinationArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      resourceArn: map['resourceArn'] == null ? null : pulumi.Output.create<String>(map['resourceArn'] as String),
      resourceIdentifier: map['resourceIdentifier'] == null ? null : pulumi.Output.create<String>(map['resourceIdentifier'] as String),
      serviceNetworkLogType: map['serviceNetworkLogType'] == null ? null : pulumi.Output.create<String>(map['serviceNetworkLogType'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

