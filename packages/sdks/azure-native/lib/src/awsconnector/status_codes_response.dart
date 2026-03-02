// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of StatusCodes
class StatusCodesResponse {
  /// The items (status codes) for an origin group.
  final pulumi.Input<List<int>>? items;
  /// The number of status codes.
  final pulumi.Input<int>? quantity;

  /// Creates a new [StatusCodesResponse].
  /// [items] The items (status codes) for an origin group.
  /// [quantity] The number of status codes.
  StatusCodesResponse({
    this.items,
    this.quantity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'items': ?items,
      'quantity': ?quantity,
    };
  }

  factory StatusCodesResponse.fromMap(Map<String, dynamic> map) {
    return StatusCodesResponse(
      items: map['items'] == null ? null : ((map['items'] as List).cast<int>()).input(),
      quantity: map['quantity'] == null ? null : (map['quantity'] as int).input(),
    );
  }
}

