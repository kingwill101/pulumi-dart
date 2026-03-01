// ignore_for_file: unused_element, unnecessary_cast


class GetDiskReplicaPairsPair {
  /// The bandwidth for asynchronous data replication between cloud disks. The unit is Kbps. Value range:-10240 Kbps: equal to 10 Mbps.-20480 Kbps: equal to 20 Mbps.-51200 Kbps: equal to 50 Mbps.-102400 Kbps: equal to 100 Mbps.Default value: 10240.This parameter cannot be specified when the ChargeType value is POSTPAY. The system value is 0, which indicates that the disk is dynamically allocated according to data write changes during asynchronous replication.
  final String bandwidth;
  /// The description of the asynchronous replication relationship. 2 to 256 English or Chinese characters in length and cannot start with' http:// 'or' https.
  final String description;
  /// The ID of the standby disk.
  final String destinationDiskId;
  /// The ID of the region to which the disaster recovery site belongs.
  final String destinationRegionId;
  /// The ID of the zone to which the disaster recovery site belongs.
  final String destinationZoneId;
  /// The ID of the primary disk.
  final String diskId;
  final String id;
  /// The name of the asynchronous replication relationship. The length must be 2 to 128 characters in length and must start with a letter or Chinese name. It cannot start with http:// or https. It can contain Chinese, English, numbers, half-width colons (:), underscores (_), half-width periods (.), or dashes (-).
  final String pairName;
  /// The payment type of the resource.
  final String paymentType;
  /// The first ID of the resource
  final String replicaPairId;
  /// The ID of the resource group
  final String resourceGroupId;
  /// The RPO value set by the consistency group in seconds. Currently only 900 seconds are supported.
  final String rpo;
  /// The ID of the zone to which the production site belongs.
  final String sourceZoneId;
  /// The status of the resource.
  final String status;

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
      bandwidth: map['bandwidth'] as String,
      description: map['description'] as String,
      destinationDiskId: map['destinationDiskId'] as String,
      destinationRegionId: map['destinationRegionId'] as String,
      destinationZoneId: map['destinationZoneId'] as String,
      diskId: map['diskId'] as String,
      id: map['id'] as String,
      pairName: map['pairName'] as String,
      paymentType: map['paymentType'] as String,
      replicaPairId: map['replicaPairId'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      rpo: map['rpo'] as String,
      sourceZoneId: map['sourceZoneId'] as String,
      status: map['status'] as String,
    );
  }
}

