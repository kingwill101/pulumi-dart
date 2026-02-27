// ignore_for_file: unused_element, unnecessary_cast

/// A game loop test of an iOS application.
class IosTestLoopResponseToolresultsV1beta3 {
  /// Bundle ID of the app.
  final String bundleId;

  IosTestLoopResponseToolresultsV1beta3({
    required this.bundleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleId'] = bundleId;
    return map;
  }

  factory IosTestLoopResponseToolresultsV1beta3.fromMap(
      Map<String, dynamic> map) {
    return IosTestLoopResponseToolresultsV1beta3(
      bundleId: map['bundleId'] as String,
    );
  }
}
