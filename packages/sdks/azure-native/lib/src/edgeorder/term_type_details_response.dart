// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Holds details about term type and duration.
class TermTypeDetailsResponse {
  /// Term Commitment Type
  final pulumi.Input<String> termType;
  /// Duration for the term type.
  final pulumi.Input<String> termTypeDuration;

  /// Creates a new [TermTypeDetailsResponse].
  /// [termType] Term Commitment Type
  /// [termTypeDuration] Duration for the term type.
  TermTypeDetailsResponse({
    required this.termType,
    required this.termTypeDuration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'termType': termType,
      'termTypeDuration': termTypeDuration,
    };
  }

  factory TermTypeDetailsResponse.fromMap(Map<String, dynamic> map) {
    return TermTypeDetailsResponse(
      termType: pulumi.Input.fromValue(map['termType'] as String),
      termTypeDuration: pulumi.Input.fromValue(map['termTypeDuration'] as String),
    );
  }
}

