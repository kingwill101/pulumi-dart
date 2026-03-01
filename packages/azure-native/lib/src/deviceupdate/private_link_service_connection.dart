// ignore_for_file: unused_element, unnecessary_cast


/// Private link service connection details.
class PrivateLinkServiceConnection {
  /// List of group IDs.
  final List<String>? groupIds;
  /// Private link service connection name.
  final String? name;
  /// Request message.
  final String? requestMessage;

  /// Creates a new [PrivateLinkServiceConnection].
  /// [groupIds] List of group IDs.
  /// [name] Private link service connection name.
  /// [requestMessage] Request message.
  PrivateLinkServiceConnection({
    this.groupIds,
    this.name,
    this.requestMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'groupIds': ?groupIds,
      'name': ?name,
      'requestMessage': ?requestMessage,
    };
  }

  factory PrivateLinkServiceConnection.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnection(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      requestMessage: map['requestMessage'] == null ? null : map['requestMessage'] as String,
    );
  }
}

