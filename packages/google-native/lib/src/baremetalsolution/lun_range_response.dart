// ignore_for_file: unused_element, unnecessary_cast

/// A LUN(Logical Unit Number) range.
class LunRangeResponse {
  /// Number of LUNs to create.
  final int quantity;

  /// The requested size of each LUN, in GB.
  final int sizeGb;

  /// Creates a new [LunRangeResponse].
  /// [quantity] Number of LUNs to create.
  /// [sizeGb] The requested size of each LUN, in GB.
  LunRangeResponse({required this.quantity, required this.sizeGb});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'quantity': quantity, 'sizeGb': sizeGb};
  }

  factory LunRangeResponse.fromMap(Map<String, dynamic> map) {
    return LunRangeResponse(
      quantity: map['quantity'] as int,
      sizeGb: map['sizeGb'] as int,
    );
  }
}
