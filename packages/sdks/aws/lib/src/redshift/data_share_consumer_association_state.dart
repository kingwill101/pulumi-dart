// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataShareConsumerAssociation resources.
class DataShareConsumerAssociationState {
  /// Whether to allow write operations for a datashare.
  final pulumi.Input<bool>? allowWrites;
  /// Whether the datashare is associated with the entire account. Conflicts with `consumer_arn` and `consumer_region`.
  final pulumi.Input<bool>? associateEntireAccount;
  /// Amazon Resource Name (ARN) of the consumer that is associated with the datashare. Conflicts with `associate_entire_account` and `consumer_region`.
  final pulumi.Input<String>? consumerArn;
  /// From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified AWS Region. Conflicts with `associate_entire_account` and `consumer_arn`.
  final pulumi.Input<String>? consumerRegion;
  /// Amazon Resource Name (ARN) of the datashare that the consumer is to use with the account or the namespace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? dataShareArn;
  /// Identifier of a datashare to show its managing entity.
  final pulumi.Input<String>? managedBy;
  /// Amazon Resource Name (ARN) of the producer.
  final pulumi.Input<String>? producerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DataShareConsumerAssociationState].
  /// [allowWrites] Whether to allow write operations for a datashare.
  /// [associateEntireAccount] Whether the datashare is associated with the entire account. Conflicts with `consumer_arn` and `consumer_region`.
  /// [consumerArn] Amazon Resource Name (ARN) of the consumer that is associated with the datashare. Conflicts with `associate_entire_account` and `consumer_region`.
  /// [consumerRegion] From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified AWS Region. Conflicts with `associate_entire_account` and `consumer_arn`.
  /// [dataShareArn] Amazon Resource Name (ARN) of the datashare that the consumer is to use with the account or the namespace.
  /// [managedBy] Identifier of a datashare to show its managing entity.
  /// [producerArn] Amazon Resource Name (ARN) of the producer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  DataShareConsumerAssociationState({
    pulumi.Output<bool>? allowWrites,
    pulumi.Output<bool>? associateEntireAccount,
    pulumi.Output<String>? consumerArn,
    pulumi.Output<String>? consumerRegion,
    pulumi.Output<String>? dataShareArn,
    pulumi.Output<String>? managedBy,
    pulumi.Output<String>? producerArn,
    pulumi.Output<String>? region,
  }) :
      allowWrites = pulumi.Input.asOptionalInput<bool>(allowWrites),
      associateEntireAccount = pulumi.Input.asOptionalInput<bool>(associateEntireAccount),
      consumerArn = pulumi.Input.asOptionalInput<String>(consumerArn),
      consumerRegion = pulumi.Input.asOptionalInput<String>(consumerRegion),
      dataShareArn = pulumi.Input.asOptionalInput<String>(dataShareArn),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      producerArn = pulumi.Input.asOptionalInput<String>(producerArn),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowWrites': ?allowWrites,
      'associateEntireAccount': ?associateEntireAccount,
      'consumerArn': ?consumerArn,
      'consumerRegion': ?consumerRegion,
      'dataShareArn': ?dataShareArn,
      'managedBy': ?managedBy,
      'producerArn': ?producerArn,
      'region': ?region,
    };
  }

  factory DataShareConsumerAssociationState.fromMap(Map<String, dynamic> map) {
    return DataShareConsumerAssociationState(
      allowWrites: map['allowWrites'] == null ? null : pulumi.Output.create<bool>(map['allowWrites'] as bool),
      associateEntireAccount: map['associateEntireAccount'] == null ? null : pulumi.Output.create<bool>(map['associateEntireAccount'] as bool),
      consumerArn: map['consumerArn'] == null ? null : pulumi.Output.create<String>(map['consumerArn'] as String),
      consumerRegion: map['consumerRegion'] == null ? null : pulumi.Output.create<String>(map['consumerRegion'] as String),
      dataShareArn: map['dataShareArn'] == null ? null : pulumi.Output.create<String>(map['dataShareArn'] as String),
      managedBy: map['managedBy'] == null ? null : pulumi.Output.create<String>(map['managedBy'] as String),
      producerArn: map['producerArn'] == null ? null : pulumi.Output.create<String>(map['producerArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

