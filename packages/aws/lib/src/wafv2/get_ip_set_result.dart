// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getIpSet.
class GetIpSetResult {
  /// An array of strings that specifies zero or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation.
  final List<String> addresses;

  /// ARN of the entity.
  final String arn;

  /// Description of the set that helps with identification.
  final String description;

  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// IP address version of the set.
  final String ipAddressVersion;
  final String name;
  final String region;
  final String scope;

  /// Creates a new [GetIpSetResult].
  /// [addresses] An array of strings that specifies zero or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation.
  /// [arn] ARN of the entity.
  /// [description] Description of the set that helps with identification.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressVersion] IP address version of the set.
  /// [name] Required.
  /// [region] Required.
  /// [scope] Required.
  GetIpSetResult({
    required this.addresses,
    required this.arn,
    required this.description,
    required this.id,
    required this.ipAddressVersion,
    required this.name,
    required this.region,
    required this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': addresses,
      'arn': arn,
      'description': description,
      'id': id,
      'ipAddressVersion': ipAddressVersion,
      'name': name,
      'region': region,
      'scope': scope,
    };
  }

  factory GetIpSetResult.fromMap(Map<String, dynamic> map) {
    return GetIpSetResult(
      addresses: (map['addresses'] as List).cast<String>(),
      arn: map['arn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      ipAddressVersion: map['ipAddressVersion'] as String,
      name: map['name'] as String,
      region: map['region'] as String,
      scope: map['scope'] as String,
    );
  }
}
