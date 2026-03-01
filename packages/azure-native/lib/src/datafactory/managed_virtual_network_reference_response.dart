// ignore_for_file: unused_element, unnecessary_cast


/// Managed Virtual Network reference type.
class ManagedVirtualNetworkReferenceResponse {
  /// Reference ManagedVirtualNetwork name.
  final String referenceName;
  /// Managed Virtual Network reference type.
  final String type;

  /// Creates a new [ManagedVirtualNetworkReferenceResponse].
  /// [referenceName] Reference ManagedVirtualNetwork name.
  /// [type] Managed Virtual Network reference type.
  ManagedVirtualNetworkReferenceResponse({
    required this.referenceName,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceName': referenceName,
      'type': type,
    };
  }

  factory ManagedVirtualNetworkReferenceResponse.fromMap(Map<String, dynamic> map) {
    return ManagedVirtualNetworkReferenceResponse(
      referenceName: map['referenceName'] as String,
      type: map['type'] as String,
    );
  }
}

