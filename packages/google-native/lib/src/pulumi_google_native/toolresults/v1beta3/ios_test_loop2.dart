// ignore_for_file: unused_element, unnecessary_cast

/// A game loop test of an iOS application.
class IosTestLoop2 {
  /// Bundle ID of the app.
  final String? bundleId;

  IosTestLoop2({
    this.bundleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bundleIdValue = bundleId;
    if (bundleIdValue != null) {
      map['bundleId'] = bundleIdValue;
    }
    return map;
  }

  factory IosTestLoop2.fromMap(Map<String, dynamic> map) {
    return IosTestLoop2(
      bundleId: map['bundleId'] == null ? null : map['bundleId'] as String,
    );
  }
}
