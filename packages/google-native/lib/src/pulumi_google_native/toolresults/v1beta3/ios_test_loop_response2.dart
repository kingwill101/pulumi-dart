// ignore_for_file: unused_element, unnecessary_cast

/// A game loop test of an iOS application.
class IosTestLoopResponse2 {
  /// Bundle ID of the app.
  final String bundleId;

  IosTestLoopResponse2({
    required this.bundleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleId'] = bundleId;
    return map;
  }

  factory IosTestLoopResponse2.fromMap(Map<String, dynamic> map) {
    return IosTestLoopResponse2(
      bundleId: map['bundleId'] as String,
    );
  }
}
