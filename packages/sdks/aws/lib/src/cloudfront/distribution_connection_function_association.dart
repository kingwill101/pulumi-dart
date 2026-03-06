// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DistributionConnectionFunctionAssociation {
  /// Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  final pulumi.Input<String> id;

  /// Creates a new [DistributionConnectionFunctionAssociation].
  /// [id] Identifier for the distribution. For example: `EDFDVBD632BHDS5`.
  const DistributionConnectionFunctionAssociation({
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
    };
  }

  factory DistributionConnectionFunctionAssociation.fromMap(Map<String, dynamic> map) {
    return DistributionConnectionFunctionAssociation(
      id: pulumi.Input.fromValue(map['id'] as String),
    );
  }
}

