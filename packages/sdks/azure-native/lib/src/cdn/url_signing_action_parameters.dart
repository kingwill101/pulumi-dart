// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_signing_param_identifier.dart';

/// Defines the parameters for the Url Signing action.
class UrlSigningActionParameters {
  /// Algorithm to use for URL signing
  final String? algorithm;
  /// Defines which query string parameters in the url to be considered for expires, key id etc.
  final List<UrlSigningParamIdentifier>? parameterNameOverride;
  /// Expected value is 'DeliveryRuleUrlSigningActionParameters'.
  final String typeName;

  /// Creates a new [UrlSigningActionParameters].
  /// [algorithm] Algorithm to use for URL signing
  /// [parameterNameOverride] Defines which query string parameters in the url to be considered for expires, key id etc.
  /// [typeName] Expected value is 'DeliveryRuleUrlSigningActionParameters'.
  UrlSigningActionParameters({
    this.algorithm,
    this.parameterNameOverride,
    required this.typeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'algorithm': ?algorithm,
      'parameterNameOverride': ?parameterNameOverride == null ? null : pulumi.Input.encodeList<UrlSigningParamIdentifier, Map<String, dynamic>>(parameterNameOverride!, (value) => value.toMap()),
      'typeName': typeName,
    };
  }

  factory UrlSigningActionParameters.fromMap(Map<String, dynamic> map) {
    return UrlSigningActionParameters(
      algorithm: map['algorithm'] == null ? null : map['algorithm'] as String,
      parameterNameOverride: map['parameterNameOverride'] == null ? null : pulumi.Input.decodeList<UrlSigningParamIdentifier>(map['parameterNameOverride'], (value) => UrlSigningParamIdentifier.fromMap((value as Map).cast<String, dynamic>())),
      typeName: map['typeName'] as String,
    );
  }
}

