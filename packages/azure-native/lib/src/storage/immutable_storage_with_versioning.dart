// ignore_for_file: unused_element, unnecessary_cast


/// Object level immutability properties of the container.
class ImmutableStorageWithVersioning {
  /// This is an immutable property, when set to true it enables object level immutability at the container level.
  final bool? enabled;

  /// Creates a new [ImmutableStorageWithVersioning].
  /// [enabled] This is an immutable property, when set to true it enables object level immutability at the container level.
  ImmutableStorageWithVersioning({
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
    };
  }

  factory ImmutableStorageWithVersioning.fromMap(Map<String, dynamic> map) {
    return ImmutableStorageWithVersioning(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

