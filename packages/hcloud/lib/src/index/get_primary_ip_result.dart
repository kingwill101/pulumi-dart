// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getPrimaryIp.
class GetPrimaryIpResult {
  /// (int) ID of the assigned resource.
  final int assigneeId;
  /// (string) The type of the assigned resource.
  final String assigneeType;
  /// (bool) Whether auto delete is enabled.
  final bool autoDelete;
  /// (string, deprecated) The datacenter name of the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  final String datacenter;
  /// (bool) Whether delete protection is enabled.
  final bool deleteProtection;
  /// (int) Unique ID of the Primary IP.
  final int id;
  /// (string) IP Address of the Primary IP.
  final String ipAddress;
  /// (string) IPv6 subnet of the Primary IP for IPv6 addresses. (Only set if `type` is `ipv6`)
  final String ipNetwork;
  /// (map) User-defined labels (key-value pairs).
  final Map<String, String> labels;
  /// (string) The location of the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  final String location;
  /// (string) Name of the Primary IP.
  final String? name;
  /// (string) Type of the Primary IP.
  final String type;
  final String? withSelector;

  /// Creates a new [GetPrimaryIpResult].
  /// [assigneeId] (int) ID of the assigned resource.
  /// [assigneeType] (string) The type of the assigned resource.
  /// [autoDelete] (bool) Whether auto delete is enabled.
  /// [datacenter] (string, deprecated) The datacenter name of the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-datacenters-are-there) for more details about datacenters.
  /// [deleteProtection] (bool) Whether delete protection is enabled.
  /// [id] (int) Unique ID of the Primary IP.
  /// [ipAddress] (string) IP Address of the Primary IP.
  /// [ipNetwork] (string) IPv6 subnet of the Primary IP for IPv6 addresses. (Only set if `type` is `ipv6`)
  /// [labels] (map) User-defined labels (key-value pairs).
  /// [location] (string) The location of the Primary IP. See the [Hetzner Docs](https://docs.hetzner.com/cloud/general/locations/#what-locations-are-there) for more details about locations.
  /// [name] (string) Name of the Primary IP.
  /// [type] (string) Type of the Primary IP.
  /// [withSelector] Optional.
  GetPrimaryIpResult({
    required this.assigneeId,
    required this.assigneeType,
    required this.autoDelete,
    required this.datacenter,
    required this.deleteProtection,
    required this.id,
    required this.ipAddress,
    required this.ipNetwork,
    required this.labels,
    required this.location,
    this.name,
    required this.type,
    this.withSelector,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assigneeId': assigneeId,
      'assigneeType': assigneeType,
      'autoDelete': autoDelete,
      'datacenter': datacenter,
      'deleteProtection': deleteProtection,
      'id': id,
      'ipAddress': ipAddress,
      'ipNetwork': ipNetwork,
      'labels': labels,
      'location': location,
      'name': ?name,
      'type': type,
      'withSelector': ?withSelector,
    };
  }

  factory GetPrimaryIpResult.fromMap(Map<String, dynamic> map) {
    return GetPrimaryIpResult(
      assigneeId: map['assigneeId'] as int,
      assigneeType: map['assigneeType'] as String,
      autoDelete: map['autoDelete'] as bool,
      datacenter: map['datacenter'] as String,
      deleteProtection: map['deleteProtection'] as bool,
      id: map['id'] as int,
      ipAddress: map['ipAddress'] as String,
      ipNetwork: map['ipNetwork'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] as String,
      withSelector: map['withSelector'] == null ? null : map['withSelector'] as String,
    );
  }
}

