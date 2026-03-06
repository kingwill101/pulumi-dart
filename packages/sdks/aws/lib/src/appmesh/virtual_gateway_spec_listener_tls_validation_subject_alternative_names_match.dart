// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch {
  /// Values sent must match the specified values exactly.
  final pulumi.Input<List<String>> exacts;

  /// Creates a new [VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch].
  /// [exacts] Values sent must match the specified values exactly.
  const VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch({
    required this.exacts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'exacts': exacts,
    };
  }

  factory VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTlsValidationSubjectAlternativeNamesMatch(
      exacts: pulumi.Input.fromValue((map['exacts'] as List).cast<String>()),
    );
  }
}

