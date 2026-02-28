// ignore_for_file: unused_element, unnecessary_cast

class Batching {
  final bool? enableBatching;
  final String? sendAfter;

  /// Creates a new [Batching].
  /// [enableBatching] Optional.
  /// [sendAfter] Optional.
  Batching({
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

  factory Batching.fromMap(Map<String, dynamic> map) {
    return Batching(
      enableBatching:
          map['enableBatching'] == null ? null : map['enableBatching'] as bool,
      sendAfter: map['sendAfter'] == null ? null : map['sendAfter'] as String,
    );
  }
}
