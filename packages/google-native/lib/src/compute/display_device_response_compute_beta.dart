// ignore_for_file: unused_element, unnecessary_cast

/// A set of Display Device options
class DisplayDeviceResponseComputeBeta {
  /// Defines whether the instance has Display enabled.
  final bool enableDisplay;

  /// Creates a new [DisplayDeviceResponseComputeBeta].
  /// [enableDisplay] Defines whether the instance has Display enabled.
  DisplayDeviceResponseComputeBeta({required this.enableDisplay});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enableDisplay': enableDisplay};
  }

  factory DisplayDeviceResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return DisplayDeviceResponseComputeBeta(
      enableDisplay: map['enableDisplay'] as bool,
    );
  }
}
