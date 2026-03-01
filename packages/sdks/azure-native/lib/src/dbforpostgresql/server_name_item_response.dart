// ignore_for_file: unused_element, unnecessary_cast


/// The name object for a server.
class ServerNameItemResponse {
  /// The fully qualified domain name of a server.
  final String fullyQualifiedDomainName;
  /// The name of a server.
  final String? name;

  /// Creates a new [ServerNameItemResponse].
  /// [fullyQualifiedDomainName] The fully qualified domain name of a server.
  /// [name] The name of a server.
  ServerNameItemResponse({
    required this.fullyQualifiedDomainName,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fullyQualifiedDomainName': fullyQualifiedDomainName,
      'name': ?name,
    };
  }

  factory ServerNameItemResponse.fromMap(Map<String, dynamic> map) {
    return ServerNameItemResponse(
      fullyQualifiedDomainName: map['fullyQualifiedDomainName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

