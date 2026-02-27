// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for DataShareConsumerAssociation.
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

  DataShareConsumerAssociationArgs({
    this.allowWrites,
    this.associateEntireAccount,
    this.consumerArn,
    this.consumerRegion,
    required this.dataShareArn,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowWritesValue = allowWrites;
    if (allowWritesValue != null) {
      map['allowWrites'] = allowWritesValue;
    }
    final associateEntireAccountValue = associateEntireAccount;
    if (associateEntireAccountValue != null) {
      map['associateEntireAccount'] = associateEntireAccountValue;
    }
    final consumerArnValue = consumerArn;
    if (consumerArnValue != null) {
      map['consumerArn'] = consumerArnValue;
    }
    final consumerRegionValue = consumerRegion;
    if (consumerRegionValue != null) {
      map['consumerRegion'] = consumerRegionValue;
    }
    map['dataShareArn'] = dataShareArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory DataShareConsumerAssociationArgs.fromMap(Map<String, dynamic> map) {
    return DataShareConsumerAssociationArgs(
      allowWrites: pulumi.Input.asOptionalInput<bool>(map['allowWrites']),
      associateEntireAccount:
          pulumi.Input.asOptionalInput<bool>(map['associateEntireAccount']),
      consumerArn: pulumi.Input.asOptionalInput<String>(map['consumerArn']),
      consumerRegion:
          pulumi.Input.asOptionalInput<String>(map['consumerRegion']),
      dataShareArn: pulumi.Input.asInput<String>(map['dataShareArn']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
