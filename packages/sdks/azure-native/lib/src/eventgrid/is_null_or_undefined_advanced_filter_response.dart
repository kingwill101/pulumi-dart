// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// IsNullOrUndefined Advanced Filter.
class IsNullOrUndefinedAdvancedFilterResponse {
  /// The field/property in the event based on which you want to filter.
  final pulumi.Input<String>? key;
  /// The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  /// Expected value is 'IsNullOrUndefined'.
  final pulumi.Input<String> operatorType;

  /// Creates a new [IsNullOrUndefinedAdvancedFilterResponse].
  /// [key] The field/property in the event based on which you want to filter.
  /// [operatorType] The operator type used for filtering, e.g., NumberIn, StringContains, BoolEquals and others.
  IsNullOrUndefinedAdvancedFilterResponse({
    this.key,
    required this.operatorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'operatorType': operatorType,
    };
  }

  factory IsNullOrUndefinedAdvancedFilterResponse.fromMap(Map<String, dynamic> map) {
    return IsNullOrUndefinedAdvancedFilterResponse(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      operatorType: (map['operatorType'] as String).input(),
    );
  }
}

