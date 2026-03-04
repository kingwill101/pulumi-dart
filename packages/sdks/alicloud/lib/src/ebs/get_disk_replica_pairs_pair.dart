// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDiskReplicaPairsPair {
  /// The bandwidth for asynchronous data replication between cloud disks. The unit is Kbps. Value range:-10240 Kbps: equal to 10 Mbps.-20480 Kbps: equal to 20 Mbps.-51200 Kbps: equal to 50 Mbps.-102400 Kbps: equal to 100 Mbps.Default value: 10240.This parameter cannot be specified when the ChargeType value is POSTPAY. The system value is 0, which indicates that the disk is dynamically allocated according to data write changes during asynchronous replication.
  final pulumi.Input<String> bandwidth;

  /// The description of the asynchronous replication relationship. 2 to 256 English or Chinese characters in length and cannot start with' http:// 'or' https.
  final pulumi.Input<String> description;

  /// The ID of the standby disk.
  final pulumi.Input<String> destinationDiskId;

  /// The ID of the region to which the disaster recovery site belongs.
  final pulumi.Input<String> destinationRegionId;

  /// The ID of the zone to which the disaster recovery site belongs.
  final pulumi.Input<String> destinationZoneId;

  /// The ID of the primary disk.
  final pulumi.Input<String> diskId;
  final pulumi.Input<String> id;

  /// The name of the asynchronous replication relationship. The length must be 2 to 128 characters in length and must start with a letter or Chinese name. It cannot start with http:// or https. It can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-).
  final pulumi.Input<String> pairName;

  /// The payment type of the resource.
  final pulumi.Input<String> paymentType;

  /// The first ID of the resource
  final pulumi.Input<String> replicaPairId;

  /// The ID of the resource group
  final pulumi.Input<String> resourceGroupId;

  /// The RPO value set by the consistency group in seconds. Currently only 900 seconds are supported.
  final pulumi.Input<String> rpo;

  /// The ID of the zone to which the production site belongs.
  final pulumi.Input<String> sourceZoneId;

  /// The status of the resource.
  final pulumi.Input<String> status;

  /// Creates a new [GetDiskReplicaPairsPair].
  /// [bandwidth] The bandwidth for asynchronous data replication between cloud disks. The unit is Kbps. Value range:-10240 Kbps: equal to 10 Mbps.-20480 Kbps: equal to 20 Mbps.-51200 Kbps: equal to 50 Mbps.-102400 Kbps: equal to 100 Mbps.Default value: 10240.This parameter cannot be specified when the ChargeType value is POSTPAY. The system value is 0, which indicates that the disk is dynamically allocated according to data write changes during asynchronous replication.
  /// [description] The description of the asynchronous replication relationship. 2 to 256 English or Chinese characters in length and cannot start with' http:// 'or' https.
  /// [destinationDiskId] The ID of the standby disk.
  /// [destinationRegionId] The ID of the region to which the disaster recovery site belongs.
  /// [destinationZoneId] The ID of the zone to which the disaster recovery site belongs.
  /// [diskId] The ID of the primary disk.
  /// [id] Required.
  /// [pairName] The name of the asynchronous replication relationship. The length must be 2 to 128 characters in length and must start with a letter or Chinese name. It cannot start with http:// or https. It can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-).
  /// [paymentType] The payment type of the resource.
  /// [replicaPairId] The first ID of the resource
  /// [resourceGroupId] The ID of the resource group
  /// [rpo] The RPO value set by the consistency group in seconds. Currently only 900 seconds are supported.
  /// [sourceZoneId] The ID of the zone to which the production site belongs.
  /// [status] The status of the resource.
  GetDiskReplicaPairsPair({
    required this.bandwidth,
    required this.description,
    required this.destinationDiskId,
    required this.destinationRegionId,
    required this.destinationZoneId,
    required this.diskId,
    required this.id,
    required this.pairName,
    required this.paymentType,
    required this.replicaPairId,
    required this.resourceGroupId,
    required this.rpo,
    required this.sourceZoneId,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bandwidth': bandwidth,
      'description': description,
      'destinationDiskId': destinationDiskId,
      'destinationRegionId': destinationRegionId,
      'destinationZoneId': destinationZoneId,
      'diskId': diskId,
      'id': id,
      'pairName': pairName,
      'paymentType': paymentType,
      'replicaPairId': replicaPairId,
      'resourceGroupId': resourceGroupId,
      'rpo': rpo,
      'sourceZoneId': sourceZoneId,
      'status': status,
    };
  }

  factory GetDiskReplicaPairsPair.fromMap(Map<String, dynamic> map) {
    return GetDiskReplicaPairsPair(
      bandwidth: pulumi.Input.fromValue(map['bandwidth'] as String),
      description: pulumi.Input.fromValue(map['description'] as String),
      destinationDiskId: pulumi.Input.fromValue(
        map['destinationDiskId'] as String,
      ),
      destinationRegionId: pulumi.Input.fromValue(
        map['destinationRegionId'] as String,
      ),
      destinationZoneId: pulumi.Input.fromValue(
        map['destinationZoneId'] as String,
      ),
      diskId: pulumi.Input.fromValue(map['diskId'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      pairName: pulumi.Input.fromValue(map['pairName'] as String),
      paymentType: pulumi.Input.fromValue(map['paymentType'] as String),
      replicaPairId: pulumi.Input.fromValue(map['replicaPairId'] as String),
      resourceGroupId: pulumi.Input.fromValue(map['resourceGroupId'] as String),
      rpo: pulumi.Input.fromValue(map['rpo'] as String),
      sourceZoneId: pulumi.Input.fromValue(map['sourceZoneId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
