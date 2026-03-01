// ignore_for_file: unused_element, unnecessary_cast


/// Server info for the server trust group.
class ServerInfoResponse {
  /// Server Id.
  final String serverId;

  /// Creates a new [ServerInfoResponse].
  /// [serverId] Server Id.
  ServerInfoResponse({
    required this.serverId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'serverId': serverId,
    };
  }

  factory ServerInfoResponse.fromMap(Map<String, dynamic> map) {
    return ServerInfoResponse(
      serverId: map['serverId'] as String,
    );
  }
}

