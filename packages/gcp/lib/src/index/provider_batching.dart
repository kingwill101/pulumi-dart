// ignore_for_file: unused_element, unnecessary_cast

class ProviderBatching {
  final bool? enableBatching;
  final String? sendAfter;

  /// Creates a new [ProviderBatching].
  /// [enableBatching] Optional.
  /// [sendAfter] Optional.
  ProviderBatching({
    this.enableBatching,
    this.sendAfter,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableBatchingValue = enableBatching;
    if (enableBatchingValue != null) {
      map['enableBatching'] = enableBatchingValue;
    }
    final sendAfterValue = sendAfter;
    if (sendAfterValue != null) {
      map['sendAfter'] = sendAfterValue;
    }
    return map;
  }

  factory ProviderBatching.fromMap(Map<String, dynamic> map) {
    return ProviderBatching(
      enableBatching:
          map['enableBatching'] == null ? null : map['enableBatching'] as bool,
      sendAfter: map['sendAfter'] == null ? null : map['sendAfter'] as String,
    );
  }
}
