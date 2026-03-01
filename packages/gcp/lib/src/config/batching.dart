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
    return <String, dynamic>{
      'enableBatching': ?enableBatching,
      'sendAfter': ?sendAfter,
    };
  }

  factory Batching.fromMap(Map<String, dynamic> map) {
    return Batching(
      enableBatching: map['enableBatching'] == null ? null : map['enableBatching'] as bool,
      sendAfter: map['sendAfter'] == null ? null : map['sendAfter'] as String,
    );
  }
}

