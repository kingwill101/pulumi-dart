// ignore_for_file: unused_element, unnecessary_cast


/// Represents of an NRP private link service connection.
class PrivateLinkServiceConnectionResponse {
  /// Gets or sets group ids.
  final List<String>? groupIds;
  /// Gets or sets private link service connection name.
  final String? name;
  /// Gets or sets the request message for the private link service connection.
  final String? requestMessage;

  /// Creates a new [PrivateLinkServiceConnectionResponse].
  /// [groupIds] Gets or sets group ids.
  /// [name] Gets or sets private link service connection name.
  /// [requestMessage] Gets or sets the request message for the private link service connection.
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

