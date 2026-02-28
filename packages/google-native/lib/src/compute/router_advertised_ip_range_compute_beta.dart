// ignore_for_file: unused_element, unnecessary_cast


/// Description-tagged IP ranges for the router to advertise.
class RouterAdvertisedIpRangeComputeBeta {
  /// User-specified description for the IP range.
  final String? description;
  /// The IP range to advertise. The value must be a CIDR-formatted string.
  final String? range;

  /// Creates a new [RouterAdvertisedIpRangeComputeBeta].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a CIDR-formatted string.
  RouterAdvertisedIpRangeComputeBeta({
    this.description,
    this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'range': ?range,
    };
  }

  factory RouterAdvertisedIpRangeComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterAdvertisedIpRangeComputeBeta(
      description: map['description'] == null ? null : map['description'] as String,
      range: map['range'] == null ? null : map['range'] as String,
    );
  }
}

