// ignore_for_file: unused_element, unnecessary_cast


/// Managed Virtual Network reference type.
class ManagedVirtualNetworkReference {
  /// Reference ManagedVirtualNetwork name.
  final String referenceName;
  /// Managed Virtual Network reference type.
  final String type;

  /// Creates a new [ManagedVirtualNetworkReference].
  /// [referenceName] Reference ManagedVirtualNetwork name.
  /// [type] Managed Virtual Network reference type.
  ManagedVirtualNetworkReference({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory ManagedVirtualNetworkReference.fromMap(Map<String, dynamic> map) {
    return ManagedVirtualNetworkReference(
      referenceName: map['referenceName'] as String,
      type: map['type'] as String,
    );
  }
}

