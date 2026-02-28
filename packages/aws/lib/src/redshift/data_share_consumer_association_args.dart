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
  DataShareConsumerAssociationArgs({
    bool? allowWrites,
    bool? associateEntireAccount,
    String? consumerArn,
    String? consumerRegion,
    required String dataShareArn,
    String? region,
  })  : allowWrites = pulumi.Input.asOptionalInput<bool>(allowWrites),
        associateEntireAccount =
            pulumi.Input.asOptionalInput<bool>(associateEntireAccount),
        consumerArn = pulumi.Input.asOptionalInput<String>(consumerArn),
        consumerRegion = pulumi.Input.asOptionalInput<String>(consumerRegion),
        dataShareArn = pulumi.Input.asInput<String>(dataShareArn),
        region = pulumi.Input.asOptionalInput<String>(region);

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
      allowWrites:
          map['allowWrites'] == null ? null : map['allowWrites'] as bool,
      associateEntireAccount: map['associateEntireAccount'] == null
          ? null
          : map['associateEntireAccount'] as bool,
      consumerArn:
          map['consumerArn'] == null ? null : map['consumerArn'] as String,
      consumerRegion: map['consumerRegion'] == null
          ? null
          : map['consumerRegion'] as String,
      dataShareArn: map['dataShareArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
    );
  }
}
