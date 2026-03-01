// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'scope_element_response.dart';

class SuppressionAlertsScopeResponse {
  /// All the conditions inside need to be true in order to suppress the alert
  final List<ScopeElementResponse> allOf;

  /// Creates a new [SuppressionAlertsScopeResponse].
  /// [allOf] All the conditions inside need to be true in order to suppress the alert
  SuppressionAlertsScopeResponse({
    required this.allOf,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allOf': pulumi.Input.encodeList<ScopeElementResponse, Map<String, dynamic>>(allOf, (value) => value.toMap()),
    };
  }

  factory SuppressionAlertsScopeResponse.fromMap(Map<String, dynamic> map) {
    return SuppressionAlertsScopeResponse(
      allOf: pulumi.Input.decodeList<ScopeElementResponse>(map['allOf'], (value) => ScopeElementResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

