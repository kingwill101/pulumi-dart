// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering DataShareConsumerAssociation resources.
class DataShareConsumerAssociationState {
  /// Whether to allow write operations for a datashare.
  final pulumi.Input<bool?>? allowWrites;
  /// Whether the datashare is associated with the entire account. Conflicts with `consumerArn` and `consumerRegion`.
  final pulumi.Input<bool?>? associateEntireAccount;
  /// ARN of the consumer that is associated with the datashare. Conflicts with `associateEntireAccount` and `consumerRegion`.
  final pulumi.Input<String?>? consumerArn;
  /// From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified AWS Region. Conflicts with `associateEntireAccount` and `consumerArn`.
  final pulumi.Input<String?>? consumerRegion;
  /// ARN of the datashare that the consumer is to use with the account or the namespace.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? dataShareArn;
  /// Identifier of a datashare to show its managing entity.
  final pulumi.Input<String?>? managedBy;
  /// ARN of the producer.
  final pulumi.Input<String?>? producerArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [DataShareConsumerAssociationState].
  /// [allowWrites] Whether to allow write operations for a datashare.
  /// [associateEntireAccount] Whether the datashare is associated with the entire account. Conflicts with `consumerArn` and `consumerRegion`.
  /// [consumerArn] ARN of the consumer that is associated with the datashare. Conflicts with `associateEntireAccount` and `consumerRegion`.
  /// [consumerRegion] From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified AWS Region. Conflicts with `associateEntireAccount` and `consumerArn`.
  /// [dataShareArn] ARN of the datashare that the consumer is to use with the account or the namespace.
  /// [managedBy] Identifier of a datashare to show its managing entity.
  /// [producerArn] ARN of the producer.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DataShareConsumerAssociationState({
    this.allowWrites,
    this.associateEntireAccount,
    this.consumerArn,
    this.consumerRegion,
    this.dataShareArn,
    this.managedBy,
    this.producerArn,
    this.region,
  });

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
      allowWrites: (() { final guardedValue = map['allowWrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      associateEntireAccount: (() { final guardedValue = map['associateEntireAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      consumerArn: (() { final guardedValue = map['consumerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerRegion: (() { final guardedValue = map['consumerRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataShareArn: (() { final guardedValue = map['dataShareArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      managedBy: (() { final guardedValue = map['managedBy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      producerArn: (() { final guardedValue = map['producerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
