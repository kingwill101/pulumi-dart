// ignore_for_file: unused_element, unnecessary_cast

import 'geth_details_garbage_collection_mode.dart';

/// Options for the Geth execution client. See [Command-line Options](https://geth.ethereum.org/docs/fundamentals/command-line-options) for more details.
class GethDetails {
  /// Immutable. Blockchain garbage collection mode.
  final GethDetailsGarbageCollectionMode? garbageCollectionMode;

  /// Creates a new [GethDetails].
  /// [garbageCollectionMode] Immutable. Blockchain garbage collection mode.
  GethDetails({
    this.garbageCollectionMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final garbageCollectionModeValue = garbageCollectionMode;
    if (garbageCollectionModeValue != null) {
      map['garbageCollectionMode'] = garbageCollectionModeValue.value;
    }
    return map;
  }

  factory GethDetails.fromMap(Map<String, dynamic> map) {
    return GethDetails(
      garbageCollectionMode: map['garbageCollectionMode'] == null
          ? null
          : GethDetailsGarbageCollectionMode.fromValue(
              map['garbageCollectionMode'] as String),
    );
  }
}
