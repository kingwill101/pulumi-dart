// ignore_for_file: unused_element, unnecessary_cast

/// Options for the Geth execution client. See [Command-line Options](https://geth.ethereum.org/docs/fundamentals/command-line-options) for more details.
class GethDetailsResponse {
  /// Immutable. Blockchain garbage collection mode.
  final String garbageCollectionMode;

  /// Creates a new [GethDetailsResponse].
  /// [garbageCollectionMode] Immutable. Blockchain garbage collection mode.
  GethDetailsResponse({
    required this.garbageCollectionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['garbageCollectionMode'] = garbageCollectionMode;
    return map;
  }

  factory GethDetailsResponse.fromMap(Map<String, dynamic> map) {
    return GethDetailsResponse(
      garbageCollectionMode: map['garbageCollectionMode'] as String,
    );
  }
}
