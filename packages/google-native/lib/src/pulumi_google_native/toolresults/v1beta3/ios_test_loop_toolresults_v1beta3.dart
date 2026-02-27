// ignore_for_file: unused_element, unnecessary_cast

/// A game loop test of an iOS application.
class IosTestLoopToolresultsV1beta3 {
  /// Bundle ID of the app.
  final String? bundleId;

  IosTestLoopToolresultsV1beta3({
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

  factory IosTestLoopToolresultsV1beta3.fromMap(Map<String, dynamic> map) {
    return IosTestLoopToolresultsV1beta3(
      bundleId: map['bundleId'] == null ? null : map['bundleId'] as String,
    );
  }
}
