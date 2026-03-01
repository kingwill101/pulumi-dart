// ignore_for_file: unused_element, unnecessary_cast


/// The ip address range.
class IpAddressRangeResponse {
  /// The IP address range.
  final String? addressRange;

  /// Creates a new [IpAddressRangeResponse].
  /// [addressRange] The IP address range.
  IpAddressRangeResponse({
    this.addressRange,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'addressRange': ?addressRange,
    };
  }

  factory IpAddressRangeResponse.fromMap(Map<String, dynamic> map) {
    return IpAddressRangeResponse(
      addressRange: map['addressRange'] == null ? null : map['addressRange'] as String,
    );
  }
}

