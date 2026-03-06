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
  const ClusterNodeResponse({
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
      coreCount: pulumi.Input.fromValue(map['coreCount'] as double),
      ehcResourceId: pulumi.Input.fromValue(map['ehcResourceId'] as String),
      id: pulumi.Input.fromValue(map['id'] as double),
      lastLicensingTimestamp: pulumi.Input.fromValue(map['lastLicensingTimestamp'] as String),
      manufacturer: pulumi.Input.fromValue(map['manufacturer'] as String),
      memoryInGiB: pulumi.Input.fromValue(map['memoryInGiB'] as double),
      model: pulumi.Input.fromValue(map['model'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      nodeType: pulumi.Input.fromValue(map['nodeType'] as String),
      oemActivation: pulumi.Input.fromValue(map['oemActivation'] as String),
      osDisplayVersion: pulumi.Input.fromValue(map['osDisplayVersion'] as String),
      osName: pulumi.Input.fromValue(map['osName'] as String),
      osVersion: pulumi.Input.fromValue(map['osVersion'] as String),
      serialNumber: pulumi.Input.fromValue(map['serialNumber'] as String),
      windowsServerSubscription: pulumi.Input.fromValue(map['windowsServerSubscription'] as String),
    );
  }
}

