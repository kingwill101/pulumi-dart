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
    this.bandwidth,
    this.description,
    required this.destinationDiskId,
    required this.destinationRegionId,
    required this.destinationZoneId,
    required this.diskId,
    this.diskReplicaPairName,
    this.oneShot,
    this.pairName,
    this.paymentType,
    this.period,
    this.periodUnit,
    this.resourceGroupId,
    this.reverseReplicate,
    this.rpo,
    required this.sourceZoneId,
    this.tags,
  });

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
      bandwidth: map['bandwidth'] == null ? null : (map['bandwidth'] as int).input(),
      description: map['description'] == null ? null : (map['description'] as String).input(),
      destinationDiskId: (map['destinationDiskId'] as String).input(),
      destinationRegionId: (map['destinationRegionId'] as String).input(),
      destinationZoneId: (map['destinationZoneId'] as String).input(),
      diskId: (map['diskId'] as String).input(),
      diskReplicaPairName: map['diskReplicaPairName'] == null ? null : (map['diskReplicaPairName'] as String).input(),
      oneShot: map['oneShot'] == null ? null : (map['oneShot'] as bool).input(),
      pairName: map['pairName'] == null ? null : (map['pairName'] as String).input(),
      paymentType: map['paymentType'] == null ? null : (map['paymentType'] as String).input(),
      period: map['period'] == null ? null : (map['period'] as int).input(),
      periodUnit: map['periodUnit'] == null ? null : (map['periodUnit'] as String).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      reverseReplicate: map['reverseReplicate'] == null ? null : (map['reverseReplicate'] as bool).input(),
      rpo: map['rpo'] == null ? null : (map['rpo'] as int).input(),
      sourceZoneId: (map['sourceZoneId'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

