// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getClient.
class GetClientResult {
  final String brand;
  final String clientId;
  final String displayName;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String secret;

  GetClientResult({
    required this.brand,
    required this.clientId,
    required this.displayName,
    required this.id,
    required this.secret,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['brand'] = brand;
    map['clientId'] = clientId;
    map['displayName'] = displayName;
    map['id'] = id;
    map['secret'] = secret;
    return map;
  }

  factory GetClientResult.fromMap(Map<String, dynamic> map) {
    return GetClientResult(
      brand: map['brand'] as String,
      clientId: map['clientId'] as String,
      displayName: map['displayName'] as String,
      id: map['id'] as String,
      secret: map['secret'] as String,
    );
  }
}
