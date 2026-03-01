// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ebs_disk_replica_pair_disk_replica_pair_args_doc}
/// The set of arguments for DiskReplicaPair.
/// {@endtemplate}
/// {@macro pulumi_ebs_disk_replica_pair_disk_replica_pair_args_doc}
class DiskReplicaPairArgs {
  /// The bandwidth for asynchronous data replication between cloud disks. The unit is Kbps. Value range:
  /// - 10240 Kbps: equal to 10 Mbps.
  /// - 20480 Kbps: equal to 20 Mbps.
  /// - 51200 Kbps: equal to 50 Mbps.
  /// - 102400 Kbps: equal to 100 Mbps.
  ///
  /// Default value: 10240.
  /// This parameter cannot be specified when the ChargeType value is PayAsYouGo The system value is 0, which indicates that the disk is dynamically allocated according to data write changes during asynchronous replication.
  final pulumi.Input<int>? bandwidth;
  /// The description of the asynchronous replication relationship. 2 to 256 English or Chinese characters in length and cannot start with' http:// 'or' https.
  final pulumi.Input<String>? description;
  /// The ID of the standby disk.
  final pulumi.Input<String> destinationDiskId;
  /// The ID of the region to which the disaster recovery site belongs.
  final pulumi.Input<String> destinationRegionId;
  /// The ID of the zone to which the disaster recovery site belongs.
  final pulumi.Input<String> destinationZoneId;
  /// The ID of the primary disk.
  final pulumi.Input<String> diskId;
  /// The name of the asynchronous replication relationship. The length must be 2 to 128 characters in length and must start with a letter or Chinese name. It cannot start with http:// or https. It can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-).
  final pulumi.Input<String>? diskReplicaPairName;
  /// Whether to synchronize immediately. Value range:
  /// - true: Start data synchronization immediately.
  /// - false: Data Synchronization starts after the RPO time period.
  ///
  /// Default value: false.
  final pulumi.Input<bool>? oneShot;
  /// . Field 'pair_name' has been deprecated from provider version 1.245.0. New field 'disk_replica_pair_name' instead.
  final pulumi.Input<String>? pairName;
  /// The payment type of the resource
  final pulumi.Input<String>? paymentType;
  /// The purchase duration of the asynchronous replication relationship. This parameter is required when 'ChargeType = PrePay. The duration unit is specified by'periodunit', and the value range is:
  /// - When 'PeriodUnit = Week', the value range of this parameter is 1, 2, 3, and 4.
  /// - When 'PeriodUnit = Month', the value range of this parameter is 1, 2, 3, 4, 5, 6, 7, 8, 9, 12, 24, 36, 48, 60.
  final pulumi.Input<int>? period;
  /// The unit of the purchase time of the asynchronous replication relationship. Value range:
  /// - Week: Week.
  /// - Month: Month.
  ///
  /// Default value: Month.
  final pulumi.Input<String>? periodUnit;
  /// The ID of the resource group
  final pulumi.Input<String>? resourceGroupId;
  /// Specifies whether to enable the reverse replication sub-feature. Valid values: true and false. Default value: true.
  final pulumi.Input<bool>? reverseReplicate;
  /// The RPO value set by the consistency group in seconds. Currently only 900 seconds are supported.
  final pulumi.Input<int>? rpo;
  /// The ID of the zone to which the production site belongs.
  final pulumi.Input<String> sourceZoneId;
  /// The tag of the resource
  ///
  /// The following arguments will be discarded. Please use new fields as soon as possible:
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DiskReplicaPairArgs].
  /// [bandwidth] The bandwidth for asynchronous data replication between cloud disks. The unit is Kbps. Value range:
  /// [description] The description of the asynchronous replication relationship. 2 to 256 English or Chinese characters in length and cannot start with' http:// 'or' https.
  /// [destinationDiskId] The ID of the standby disk.
  /// [destinationRegionId] The ID of the region to which the disaster recovery site belongs.
  /// [destinationZoneId] The ID of the zone to which the disaster recovery site belongs.
  /// [diskId] The ID of the primary disk.
  /// [diskReplicaPairName] The name of the asynchronous replication relationship. The length must be 2 to 128 characters in length and must start with a letter or Chinese name. It cannot start with http:// or https. It can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-).
  /// [oneShot] Whether to synchronize immediately. Value range:
  /// [pairName] . Field 'pair_name' has been deprecated from provider version 1.245.0. New field 'disk_replica_pair_name' instead.
  /// [paymentType] The payment type of the resource
  /// [period] The purchase duration of the asynchronous replication relationship. This parameter is required when 'ChargeType = PrePay. The duration unit is specified by'periodunit', and the value range is:
  /// [periodUnit] The unit of the purchase time of the asynchronous replication relationship. Value range:
  /// [resourceGroupId] The ID of the resource group
  /// [reverseReplicate] Specifies whether to enable the reverse replication sub-feature. Valid values: true and false. Default value: true.
  /// [rpo] The RPO value set by the consistency group in seconds. Currently only 900 seconds are supported.
  /// [sourceZoneId] The ID of the zone to which the production site belongs.
  /// [tags] The tag of the resource
  DiskReplicaPairArgs({
    pulumi.Output<int>? bandwidth,
    pulumi.Output<String>? description,
    required pulumi.Output<String> destinationDiskId,
    required pulumi.Output<String> destinationRegionId,
    required pulumi.Output<String> destinationZoneId,
    required pulumi.Output<String> diskId,
    pulumi.Output<String>? diskReplicaPairName,
    pulumi.Output<bool>? oneShot,
    pulumi.Output<String>? pairName,
    pulumi.Output<String>? paymentType,
    pulumi.Output<int>? period,
    pulumi.Output<String>? periodUnit,
    pulumi.Output<String>? resourceGroupId,
    pulumi.Output<bool>? reverseReplicate,
    pulumi.Output<int>? rpo,
    required pulumi.Output<String> sourceZoneId,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      bandwidth = pulumi.Input.asOptionalInput<int>(bandwidth),
      description = pulumi.Input.asOptionalInput<String>(description),
      destinationDiskId = pulumi.Input.asInput<String>(destinationDiskId),
      destinationRegionId = pulumi.Input.asInput<String>(destinationRegionId),
      destinationZoneId = pulumi.Input.asInput<String>(destinationZoneId),
      diskId = pulumi.Input.asInput<String>(diskId),
      diskReplicaPairName = pulumi.Input.asOptionalInput<String>(diskReplicaPairName),
      oneShot = pulumi.Input.asOptionalInput<bool>(oneShot),
      pairName = pulumi.Input.asOptionalInput<String>(pairName),
      paymentType = pulumi.Input.asOptionalInput<String>(paymentType),
      period = pulumi.Input.asOptionalInput<int>(period),
      periodUnit = pulumi.Input.asOptionalInput<String>(periodUnit),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      reverseReplicate = pulumi.Input.asOptionalInput<bool>(reverseReplicate),
      rpo = pulumi.Input.asOptionalInput<int>(rpo),
      sourceZoneId = pulumi.Input.asInput<String>(sourceZoneId),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': ?bandwidth,
      'description': ?description,
      'destinationDiskId': destinationDiskId,
      'destinationRegionId': destinationRegionId,
      'destinationZoneId': destinationZoneId,
      'diskId': diskId,
      'diskReplicaPairName': ?diskReplicaPairName,
      'oneShot': ?oneShot,
      'pairName': ?pairName,
      'paymentType': ?paymentType,
      'period': ?period,
      'periodUnit': ?periodUnit,
      'resourceGroupId': ?resourceGroupId,
      'reverseReplicate': ?reverseReplicate,
      'rpo': ?rpo,
      'sourceZoneId': sourceZoneId,
      'tags': ?tags,
    };
  }

  factory DiskReplicaPairArgs.fromMap(Map<String, dynamic> map) {
    return DiskReplicaPairArgs(
      bandwidth: map['bandwidth'] == null ? null : pulumi.Output.create<int>(map['bandwidth'] as int),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      destinationDiskId: pulumi.Output.create<String>(map['destinationDiskId'] as String),
      destinationRegionId: pulumi.Output.create<String>(map['destinationRegionId'] as String),
      destinationZoneId: pulumi.Output.create<String>(map['destinationZoneId'] as String),
      diskId: pulumi.Output.create<String>(map['diskId'] as String),
      diskReplicaPairName: map['diskReplicaPairName'] == null ? null : pulumi.Output.create<String>(map['diskReplicaPairName'] as String),
      oneShot: map['oneShot'] == null ? null : pulumi.Output.create<bool>(map['oneShot'] as bool),
      pairName: map['pairName'] == null ? null : pulumi.Output.create<String>(map['pairName'] as String),
      paymentType: map['paymentType'] == null ? null : pulumi.Output.create<String>(map['paymentType'] as String),
      period: map['period'] == null ? null : pulumi.Output.create<int>(map['period'] as int),
      periodUnit: map['periodUnit'] == null ? null : pulumi.Output.create<String>(map['periodUnit'] as String),
      resourceGroupId: map['resourceGroupId'] == null ? null : pulumi.Output.create<String>(map['resourceGroupId'] as String),
      reverseReplicate: map['reverseReplicate'] == null ? null : pulumi.Output.create<bool>(map['reverseReplicate'] as bool),
      rpo: map['rpo'] == null ? null : pulumi.Output.create<int>(map['rpo'] as int),
      sourceZoneId: pulumi.Output.create<String>(map['sourceZoneId'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

