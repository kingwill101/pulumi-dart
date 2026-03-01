// ignore_for_file: unused_element, unnecessary_cast


class GetServerGroupServerAttachmentsAttachment {
  /// The description of the backend server.
  final String description;
  /// The ID of the server group. The value is formulated as `<server_group_id>:<server_id>:<server_type>:<port>`.
  final String id;
  /// The port used by the backend server.
  final int port;
  /// The ID of the server group.
  final String serverGroupId;
  /// The ID of the server.
  final String serverId;
  /// The IP address of the backend server.
  final String serverIp;
  /// The type of the backend server.
  final String serverType;
  /// Indicates the status of the backend server.
  final String status;
  /// The weight of the backend server.
  final int weight;
  /// The zone ID of the server.
  final String zoneId;

  /// Creates a new [GetServerGroupServerAttachmentsAttachment].
  /// [description] The description of the backend server.
  /// [id] The ID of the server group. The value is formulated as `<server_group_id>:<server_id>:<server_type>:<port>`.
  /// [port] The port used by the backend server.
  /// [serverGroupId] The ID of the server group.
  /// [serverId] The ID of the server.
  /// [serverIp] The IP address of the backend server.
  /// [serverType] The type of the backend server.
  /// [status] Indicates the status of the backend server.
  /// [weight] The weight of the backend server.
  /// [zoneId] The zone ID of the server.
  GetServerGroupServerAttachmentsAttachment({
    required this.description,
    required this.id,
    required this.port,
    required this.serverGroupId,
    required this.serverId,
    required this.serverIp,
    required this.serverType,
    required this.status,
    required this.weight,
    required this.zoneId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'port': port,
      'serverGroupId': serverGroupId,
      'serverId': serverId,
      'serverIp': serverIp,
      'serverType': serverType,
      'status': status,
      'weight': weight,
      'zoneId': zoneId,
    };
  }

  factory GetServerGroupServerAttachmentsAttachment.fromMap(Map<String, dynamic> map) {
    return GetServerGroupServerAttachmentsAttachment(
      description: map['description'] as String,
      id: map['id'] as String,
      port: map['port'] as int,
      serverGroupId: map['serverGroupId'] as String,
      serverId: map['serverId'] as String,
      serverIp: map['serverIp'] as String,
      serverType: map['serverType'] as String,
      status: map['status'] as String,
      weight: map['weight'] as int,
      zoneId: map['zoneId'] as String,
    );
  }
}

