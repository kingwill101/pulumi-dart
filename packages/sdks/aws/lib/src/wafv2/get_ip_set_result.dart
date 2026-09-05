// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by getIpSet.
class GetIpSetResult {
  /// An array of strings that specifies zero or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation.
  final List<String>? addresses;
  /// ARN of the entity.
  final String? arn;
  /// Description of the set that helps with identification.
  final String? description;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// IP address version of the set.
  final String? ipAddressVersion;
  final String? name;
  final String? region;
  final String? scope;

  /// Creates a new [GetIpSetResult].
  /// [addresses] An array of strings that specifies zero or more IP addresses or blocks of IP addresses in Classless Inter-Domain Routing (CIDR) notation.
  /// [arn] ARN of the entity.
  /// [description] Description of the set that helps with identification.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ipAddressVersion] IP address version of the set.
  /// [name] Optional.
  /// [region] Optional.
  /// [scope] Optional.
  const GetIpSetResult({
    this.addresses,
    this.arn,
    this.description,
    this.id,
    this.ipAddressVersion,
    this.name,
    this.region,
    this.scope,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addresses': ?addresses,
      'arn': ?arn,
      'description': ?description,
      'id': ?id,
      'ipAddressVersion': ?ipAddressVersion,
      'name': ?name,
      'region': ?region,
      'scope': ?scope,
    };
  }

  factory GetIpSetResult.fromMap(Map<String, dynamic> map) {
    return GetIpSetResult(
      addresses: (() { final guardedValue = map['addresses']; if (guardedValue == null) return null; return (guardedValue as List).cast<String>(); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      ipAddressVersion: (() { final guardedValue = map['ipAddressVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      scope: (() { final guardedValue = map['scope']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
