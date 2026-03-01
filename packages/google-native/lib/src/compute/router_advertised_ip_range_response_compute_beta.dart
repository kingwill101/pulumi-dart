// ignore_for_file: unused_element, unnecessary_cast

/// Description-tagged IP ranges for the router to advertise.
class RouterAdvertisedIpRangeResponseComputeBeta {
  /// User-specified description for the IP range.
  final String description;

  /// The IP range to advertise. The value must be a CIDR-formatted string.
  final String range;

  /// Creates a new [RouterAdvertisedIpRangeResponseComputeBeta].
  /// [description] User-specified description for the IP range.
  /// [range] The IP range to advertise. The value must be a CIDR-formatted string.
  RouterAdvertisedIpRangeResponseComputeBeta({
    required this.description,
    required this.range,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'description': description, 'range': range};
  }

  factory RouterAdvertisedIpRangeResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return RouterAdvertisedIpRangeResponseComputeBeta(
      description: map['description'] as String,
      range: map['range'] as String,
    );
  }
}
