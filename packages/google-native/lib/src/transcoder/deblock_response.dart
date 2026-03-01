// ignore_for_file: unused_element, unnecessary_cast

/// Deblock preprocessing configuration. **Note:** This configuration is not supported.
class DeblockResponse {
  /// Enable deblocker. The default is `false`.
  final bool enabled;

  /// Set strength of the deblocker. Enter a value between 0 and 1. The higher the value, the stronger the block removal. 0 is no deblocking. The default is 0.
  final double strength;

  /// Creates a new [DeblockResponse].
  /// [enabled] Enable deblocker. The default is `false`.
  /// [strength] Set strength of the deblocker. Enter a value between 0 and 1. The higher the value, the stronger the block removal. 0 is no deblocking. The default is 0.
  DeblockResponse({required this.enabled, required this.strength});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'enabled': enabled, 'strength': strength};
  }

  factory DeblockResponse.fromMap(Map<String, dynamic> map) {
    return DeblockResponse(
      enabled: map['enabled'] as bool,
      strength: map['strength'] as double,
    );
  }
}
