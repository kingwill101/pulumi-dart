// ignore_for_file: unused_element, unnecessary_cast


/// Result data returned by listFluidRelayServerKeys.
class ListFluidRelayServerKeysResult {
  /// The primary key for this server
  final String? key1;
  /// The secondary key for this server
  final String? key2;

  /// Creates a new [ListFluidRelayServerKeysResult].
  /// [key1] The primary key for this server
  /// [key2] The secondary key for this server
  const ListFluidRelayServerKeysResult({
    this.key1,
    this.key2,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key1': ?key1,
      'key2': ?key2,
    };
  }

  factory ListFluidRelayServerKeysResult.fromMap(Map<String, dynamic> map) {
    return ListFluidRelayServerKeysResult(
      key1: (() { final guardedValue = map['key1']; if (guardedValue == null) return null; return guardedValue as String; })(),
      key2: (() { final guardedValue = map['key2']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
