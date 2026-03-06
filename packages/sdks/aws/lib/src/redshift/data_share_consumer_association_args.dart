// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_redshift_data_share_consumer_association_data_share_consumer_association_args_doc}
/// The set of arguments for DataShareConsumerAssociation.
/// {@endtemplate}
/// {@macro pulumi_redshift_data_share_consumer_association_data_share_consumer_association_args_doc}
class DataShareConsumerAssociationArgs {
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
  final pulumi.Input<String> dataShareArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [DataShareConsumerAssociationArgs].
  /// [allowWrites] Whether to allow write operations for a datashare.
  /// [associateEntireAccount] Whether the datashare is associated with the entire account. Conflicts with `consumer_arn` and `consumer_region`.
  /// [consumerArn] Amazon Resource Name (ARN) of the consumer that is associated with the datashare. Conflicts with `associate_entire_account` and `consumer_region`.
  /// [consumerRegion] From a datashare consumer account, associates a datashare with all existing and future namespaces in the specified AWS Region. Conflicts with `associate_entire_account` and `consumer_arn`.
  /// [dataShareArn] Amazon Resource Name (ARN) of the datashare that the consumer is to use with the account or the namespace.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const DataShareConsumerAssociationArgs({
    this.allowWrites,
    this.associateEntireAccount,
    this.consumerArn,
    this.consumerRegion,
    required this.dataShareArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowWrites': ?allowWrites,
      'associateEntireAccount': ?associateEntireAccount,
      'consumerArn': ?consumerArn,
      'consumerRegion': ?consumerRegion,
      'dataShareArn': dataShareArn,
      'region': ?region,
    };
  }

  factory DataShareConsumerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DataShareConsumerAssociationArgs(
      allowWrites: (() { final guardedValue = map['allowWrites']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      associateEntireAccount: (() { final guardedValue = map['associateEntireAccount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      consumerArn: (() { final guardedValue = map['consumerArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      consumerRegion: (() { final guardedValue = map['consumerRegion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataShareArn: pulumi.Input.fromValue(map['dataShareArn'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

