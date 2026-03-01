// ignore_for_file: unused_element, unnecessary_cast

class GetAddressesAddress {
  /// The IP address (for example `1.2.3.4`).
  final String address;

  /// The IP address type, can be `EXTERNAL` or `INTERNAL`.
  final String addressType;

  /// The IP address description.
  final String description;

  /// A map containing IP labels.
  final Map<String, String> labels;

  /// The IP address name.
  final String name;

  /// The prefix length of the IP range. If not present, it means the address field is a single IP address.
  final int prefixLength;

  /// Region that should be considered to search addresses.
  /// All regions are considered if missing.
  final String region;

  /// The URI of the created resource.
  final String selfLink;

  /// Indicates if the address is used. Possible values are: RESERVED or IN_USE.
  final String status;

  /// Creates a new [GetAddressesAddress].
  /// [address] The IP address (for example `1.2.3.4`).
  /// [addressType] The IP address type, can be `EXTERNAL` or `INTERNAL`.
  /// [description] The IP address description.
  /// [labels] A map containing IP labels.
  /// [name] The IP address name.
  /// [prefixLength] The prefix length of the IP range. If not present, it means the address field is a single IP address.
  /// [region] Region that should be considered to search addresses.
  /// [selfLink] The URI of the created resource.
  /// [status] Indicates if the address is used. Possible values are: RESERVED or IN_USE.
  GetAddressesAddress({
    required this.address,
    required this.addressType,
    required this.description,
    required this.labels,
    required this.name,
    required this.prefixLength,
    required this.region,
    required this.selfLink,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'address': address,
      'addressType': addressType,
      'description': description,
      'labels': labels,
      'name': name,
      'prefixLength': prefixLength,
      'region': region,
      'selfLink': selfLink,
      'status': status,
    };
  }

  factory GetAddressesAddress.fromMap(Map<String, dynamic> map) {
    return GetAddressesAddress(
      address: map['address'] as String,
      addressType: map['addressType'] as String,
      description: map['description'] as String,
      labels: (map['labels'] as Map).cast<String, String>(),
      name: map['name'] as String,
      prefixLength: map['prefixLength'] as int,
      region: map['region'] as String,
      selfLink: map['selfLink'] as String,
      status: map['status'] as String,
    );
  }
}
