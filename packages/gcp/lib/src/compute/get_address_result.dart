// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAddress.
class GetAddressResult {
  /// The IP of the created resource.
  final String address;
  final String addressType;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String name;
  final String network;
  final String networkTier;
  final int prefixLength;
  final String project;
  final String purpose;
  final String region;

  /// The URI of the created resource.
  final String selfLink;

  /// Indicates if the address is used. Possible values are: RESERVED or IN_USE.
  final String status;
  final String subnetwork;
  final String users;

  /// Creates a new [GetAddressResult].
  /// [address] The IP of the created resource.
  /// [addressType] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [name] Required.
  /// [network] Required.
  /// [networkTier] Required.
  /// [prefixLength] Required.
  /// [project] Required.
  /// [purpose] Required.
  /// [region] Required.
  /// [selfLink] The URI of the created resource.
  /// [status] Indicates if the address is used. Possible values are: RESERVED or IN_USE.
  /// [subnetwork] Required.
  /// [users] Required.
  GetAddressResult({
    required this.address,
    required this.addressType,
    required this.id,
    required this.name,
    required this.network,
    required this.networkTier,
    required this.prefixLength,
    required this.project,
    required this.purpose,
    required this.region,
    required this.selfLink,
    required this.status,
    required this.subnetwork,
    required this.users,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['address'] = address;
    map['addressType'] = addressType;
    map['id'] = id;
    map['name'] = name;
    map['network'] = network;
    map['networkTier'] = networkTier;
    map['prefixLength'] = prefixLength;
    map['project'] = project;
    map['purpose'] = purpose;
    map['region'] = region;
    map['selfLink'] = selfLink;
    map['status'] = status;
    map['subnetwork'] = subnetwork;
    map['users'] = users;
    return map;
  }

  factory GetAddressResult.fromMap(Map<String, dynamic> map) {
    return GetAddressResult(
      address: map['address'] as String,
      addressType: map['addressType'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      network: map['network'] as String,
      networkTier: map['networkTier'] as String,
      prefixLength: map['prefixLength'] as int,
      project: map['project'] as String,
      purpose: map['purpose'] as String,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      status: map['status'] as String,
      subnetwork: map['subnetwork'] as String,
      users: map['users'] as String,
    );
  }
}
