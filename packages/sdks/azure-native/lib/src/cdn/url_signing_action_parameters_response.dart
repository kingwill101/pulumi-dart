// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_signing_param_identifier_response.dart';

/// Defines the parameters for the Url Signing action.
class UrlSigningActionParametersResponse {
  /// Algorithm to use for URL signing
  final pulumi.Input<String>? algorithm;
  /// Defines which query string parameters in the url to be considered for expires, key id etc.
  final pulumi.Input<List<UrlSigningParamIdentifierResponse>>? parameterNameOverride;
  /// Expected value is 'DeliveryRuleUrlSigningActionParameters'.
  final pulumi.Input<String> typeName;

  /// Creates a new [UrlSigningActionParametersResponse].
  /// [algorithm] Algorithm to use for URL signing
  /// [parameterNameOverride] Defines which query string parameters in the url to be considered for expires, key id etc.
  /// [typeName] Expected value is 'DeliveryRuleUrlSigningActionParameters'.
  UrlSigningActionParametersResponse({
    this.algorithm,
    this.parameterNameOverride,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'parameterNameOverride': ?pulumi.Input.mapOptionalInputValue<List<UrlSigningParamIdentifierResponse>, List<Map<String, dynamic>>>(parameterNameOverride, (value) => pulumi.Input.encodeList<UrlSigningParamIdentifierResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'typeName': typeName,
    };
  }

  factory UrlSigningActionParametersResponse.fromMap(Map<String, dynamic> map) {
    return UrlSigningActionParametersResponse(
      algorithm: map['algorithm'] == null ? null : (map['algorithm']! as String).input(),
      parameterNameOverride: map['parameterNameOverride'] == null ? null : (pulumi.Input.decodeList<UrlSigningParamIdentifierResponse>(map['parameterNameOverride']!, (value) => UrlSigningParamIdentifierResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      typeName: (map['typeName'] as String).input(),
    );
  }
}

