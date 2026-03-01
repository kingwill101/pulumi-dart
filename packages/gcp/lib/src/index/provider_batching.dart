// ignore_for_file: unused_element, unnecessary_cast

class ProviderBatching {
  final bool? enableBatching;
  final String? sendAfter;

  /// Creates a new [ProviderBatching].
  /// [enableBatching] Optional.
  /// [sendAfter] Optional.
  ProviderBatching({this.enableBatching, this.sendAfter});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableBatching': ?enableBatching,
      'sendAfter': ?sendAfter,
    };
  }

  factory ProviderBatching.fromMap(Map<String, dynamic> map) {
    return ProviderBatching(
      enableBatching: map['enableBatching'] == null
          ? null
          : map['enableBatching'] as bool,
      sendAfter: map['sendAfter'] == null ? null : map['sendAfter'] as String,
    );
  }
}
