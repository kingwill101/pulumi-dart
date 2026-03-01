// ignore_for_file: unused_element, unnecessary_cast


/// Cluster node details.
class ClusterNodeResponse {
  /// Number of physical cores on the cluster node.
  final double coreCount;
  /// Edge Hardware Center Resource Id
  final String ehcResourceId;
  /// Id of the node in the cluster.
  final double id;
  /// Most recent licensing timestamp.
  final String lastLicensingTimestamp;
  /// Manufacturer of the cluster node hardware.
  final String manufacturer;
  /// Total available memory on the cluster node (in GiB).
  final double memoryInGiB;
  /// Model name of the cluster node hardware.
  final String model;
  /// Name of the cluster node.
  final String name;
  /// Type of the cluster node hardware.
  final String nodeType;
  /// OEM activation status of the node.
  final String oemActivation;
  /// Display version of the operating system running on the cluster node.
  final String osDisplayVersion;
  /// Operating system running on the cluster node.
  final String osName;
  /// Version of the operating system running on the cluster node.
  final String osVersion;
  /// Immutable id of the cluster node.
  final String serialNumber;
  /// State of Windows Server Subscription.
  final String windowsServerSubscription;

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
      coreCount: map['coreCount'] as double,
      ehcResourceId: map['ehcResourceId'] as String,
      id: map['id'] as double,
      lastLicensingTimestamp: map['lastLicensingTimestamp'] as String,
      manufacturer: map['manufacturer'] as String,
      memoryInGiB: map['memoryInGiB'] as double,
      model: map['model'] as String,
      name: map['name'] as String,
      nodeType: map['nodeType'] as String,
      oemActivation: map['oemActivation'] as String,
      osDisplayVersion: map['osDisplayVersion'] as String,
      osName: map['osName'] as String,
      osVersion: map['osVersion'] as String,
      serialNumber: map['serialNumber'] as String,
      windowsServerSubscription: map['windowsServerSubscription'] as String,
    );
  }
}

