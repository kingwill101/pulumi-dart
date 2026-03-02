// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Defines how to identify a parameter for a specific purpose e.g. expires
class UrlSigningParamIdentifierResponse {
  /// Indicates the purpose of the parameter
  final pulumi.Input<String> paramIndicator;
  /// Parameter name
  final pulumi.Input<String> paramName;

  /// Creates a new [UrlSigningParamIdentifierResponse].
  /// [paramIndicator] Indicates the purpose of the parameter
  /// [paramName] Parameter name
  UrlSigningParamIdentifierResponse({
    required this.paramIndicator,
    required this.paramName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'paramIndicator': paramIndicator,
      'paramName': paramName,
    };
  }

  factory UrlSigningParamIdentifierResponse.fromMap(Map<String, dynamic> map) {
    return UrlSigningParamIdentifierResponse(
      paramIndicator: (map['paramIndicator'] as String).input(),
      paramName: (map['paramName'] as String).input(),
    );
  }
}

