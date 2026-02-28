// ignore_for_file: unused_element, unnecessary_cast

/// A game loop test of an iOS application.
class IosTestLoopResponse {
  /// Bundle ID of the app.
  final String bundleId;

  /// Creates a new [IosTestLoopResponse].
  /// [bundleId] Bundle ID of the app.
  IosTestLoopResponse({
    required this.bundleId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bundleId'] = bundleId;
    return map;
  }

  factory IosTestLoopResponse.fromMap(Map<String, dynamic> map) {
    return IosTestLoopResponse(
      bundleId: map['bundleId'] as String,
    );
  }
}
