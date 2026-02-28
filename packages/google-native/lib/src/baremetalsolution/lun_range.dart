// ignore_for_file: unused_element, unnecessary_cast

/// A LUN(Logical Unit Number) range.
class LunRange {
  /// Number of LUNs to create.
  final int? quantity;

  /// The requested size of each LUN, in GB.
  final int? sizeGb;

  /// Creates a new [LunRange].
  /// [quantity] Number of LUNs to create.
  /// [sizeGb] The requested size of each LUN, in GB.
  LunRange({
    this.quantity,
    this.sizeGb,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final quantityValue = quantity;
    if (quantityValue != null) {
      map['quantity'] = quantityValue;
    }
    final sizeGbValue = sizeGb;
    if (sizeGbValue != null) {
      map['sizeGb'] = sizeGbValue;
    }
    return map;
  }

  factory LunRange.fromMap(Map<String, dynamic> map) {
    return LunRange(
      quantity: map['quantity'] == null ? null : map['quantity'] as int,
      sizeGb: map['sizeGb'] == null ? null : map['sizeGb'] as int,
    );
  }
}
