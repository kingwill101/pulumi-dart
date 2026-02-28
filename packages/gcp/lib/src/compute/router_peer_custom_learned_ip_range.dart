// ignore_for_file: unused_element, unnecessary_cast

class RouterPeerCustomLearnedIpRange {
  /// The IP range to learn. The value must be a
  /// CIDR-formatted string.
  final String range;

  /// Creates a new [RouterPeerCustomLearnedIpRange].
  /// [range] The IP range to learn. The value must be a
  RouterPeerCustomLearnedIpRange({
    required this.range,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['range'] = range;
    return map;
  }

  factory RouterPeerCustomLearnedIpRange.fromMap(Map<String, dynamic> map) {
    return RouterPeerCustomLearnedIpRange(
      range: map['range'] as String,
    );
  }
}
