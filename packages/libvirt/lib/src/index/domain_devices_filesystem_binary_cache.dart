// ignore_for_file: unused_element, unnecessary_cast


class DomainDevicesFilesystemBinaryCache {
  /// Sets the mode for the cache used by the binary filesystem device.
  final String mode;

  /// Creates a new [DomainDevicesFilesystemBinaryCache].
  /// [mode] Sets the mode for the cache used by the binary filesystem device.
  DomainDevicesFilesystemBinaryCache({
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'mode': mode,
    };
  }

  factory DomainDevicesFilesystemBinaryCache.fromMap(Map<String, dynamic> map) {
    return DomainDevicesFilesystemBinaryCache(
      mode: map['mode'] as String,
    );
  }
}

