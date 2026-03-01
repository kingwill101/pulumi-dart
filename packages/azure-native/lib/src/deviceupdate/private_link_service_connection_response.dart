// ignore_for_file: unused_element, unnecessary_cast


/// Private link service connection details.
class PrivateLinkServiceConnectionResponse {
  /// List of group IDs.
  final List<String>? groupIds;
  /// Private link service connection name.
  final String? name;
  /// Request message.
  final String? requestMessage;

  /// Creates a new [PrivateLinkServiceConnectionResponse].
  /// [groupIds] List of group IDs.
  /// [name] Private link service connection name.
  /// [requestMessage] Request message.
  PrivateLinkServiceConnectionResponse({
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

  factory PrivateLinkServiceConnectionResponse.fromMap(Map<String, dynamic> map) {
    return PrivateLinkServiceConnectionResponse(
      groupIds: map['groupIds'] == null ? null : (map['groupIds'] as List).cast<String>(),
      name: map['name'] == null ? null : map['name'] as String,
      requestMessage: map['requestMessage'] == null ? null : map['requestMessage'] as String,
    );
  }
}

