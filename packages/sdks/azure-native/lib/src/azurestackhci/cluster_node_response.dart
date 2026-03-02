// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cluster node details.
class ClusterNodeResponse {
  /// Number of physical cores on the cluster node.
  final pulumi.Input<double> coreCount;
  /// Edge Hardware Center Resource Id
  final pulumi.Input<String> ehcResourceId;
  /// Id of the node in the cluster.
  final pulumi.Input<double> id;
  /// Most recent licensing timestamp.
  final pulumi.Input<String> lastLicensingTimestamp;
  /// Manufacturer of the cluster node hardware.
  final pulumi.Input<String> manufacturer;
  /// Total available memory on the cluster node (in GiB).
  final pulumi.Input<double> memoryInGiB;
  /// Model name of the cluster node hardware.
  final pulumi.Input<String> model;
  /// Name of the cluster node.
  final pulumi.Input<String> name;
  /// Type of the cluster node hardware.
  final pulumi.Input<String> nodeType;
  /// OEM activation status of the node.
  final pulumi.Input<String> oemActivation;
  /// Display version of the operating system running on the cluster node.
  final pulumi.Input<String> osDisplayVersion;
  /// Operating system running on the cluster node.
  final pulumi.Input<String> osName;
  /// Version of the operating system running on the cluster node.
  final pulumi.Input<String> osVersion;
  /// Immutable id of the cluster node.
  final pulumi.Input<String> serialNumber;
  /// State of Windows Server Subscription.
  final pulumi.Input<String> windowsServerSubscription;

  /// Creates a new [ClusterNodeResponse].
  /// [coreCount] Number of physical cores on the cluster node.
  /// [ehcResourceId] Edge Hardware Center Resource Id
  /// [id] Id of the node in the cluster.
  /// [lastLicensingTimestamp] Most recent licensing timestamp.
  /// [manufacturer] Manufacturer of the cluster node hardware.
  /// [memoryInGiB] Total available memory on the cluster node (in GiB).
  /// [model] Model name of the cluster node hardware.
  /// [name] Name of the cluster node.
  /// [nodeType] Type of the cluster node hardware.
  /// [oemActivation] OEM activation status of the node.
  /// [osDisplayVersion] Display version of the operating system running on the cluster node.
  /// [osName] Operating system running on the cluster node.
  /// [osVersion] Version of the operating system running on the cluster node.
  /// [serialNumber] Immutable id of the cluster node.
  /// [windowsServerSubscription] State of Windows Server Subscription.
  ClusterNodeResponse({
    required this.coreCount,
    required this.ehcResourceId,
    required this.id,
    required this.lastLicensingTimestamp,
    required this.manufacturer,
    required this.memoryInGiB,
    required this.model,
    required this.name,
    required this.nodeType,
    required this.oemActivation,
    required this.osDisplayVersion,
    required this.osName,
    required this.osVersion,
    required this.serialNumber,
    required this.windowsServerSubscription,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'coreCount': coreCount,
      'ehcResourceId': ehcResourceId,
      'id': id,
      'lastLicensingTimestamp': lastLicensingTimestamp,
      'manufacturer': manufacturer,
      'memoryInGiB': memoryInGiB,
      'model': model,
      'name': name,
      'nodeType': nodeType,
      'oemActivation': oemActivation,
      'osDisplayVersion': osDisplayVersion,
      'osName': osName,
      'osVersion': osVersion,
      'serialNumber': serialNumber,
      'windowsServerSubscription': windowsServerSubscription,
    };
  }

  factory ClusterNodeResponse.fromMap(Map<String, dynamic> map) {
    return ClusterNodeResponse(
      coreCount: (map['coreCount'] as double).input(),
      ehcResourceId: (map['ehcResourceId'] as String).input(),
      id: (map['id'] as double).input(),
      lastLicensingTimestamp: (map['lastLicensingTimestamp'] as String).input(),
      manufacturer: (map['manufacturer'] as String).input(),
      memoryInGiB: (map['memoryInGiB'] as double).input(),
      model: (map['model'] as String).input(),
      name: (map['name'] as String).input(),
      nodeType: (map['nodeType'] as String).input(),
      oemActivation: (map['oemActivation'] as String).input(),
      osDisplayVersion: (map['osDisplayVersion'] as String).input(),
      osName: (map['osName'] as String).input(),
      osVersion: (map['osVersion'] as String).input(),
      serialNumber: (map['serialNumber'] as String).input(),
      windowsServerSubscription: (map['windowsServerSubscription'] as String).input(),
    );
  }
}

