// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'url_signing_param_identifier.dart';

/// Defines the parameters for the Url Signing action.
class UrlSigningActionParameters {
  /// Algorithm to use for URL signing
  final pulumi.Input<String>? algorithm;

  /// Defines which query string parameters in the url to be considered for expires, key id etc.
  final pulumi.Input<List<UrlSigningParamIdentifier>>? parameterNameOverride;

  /// Expected value is 'DeliveryRuleUrlSigningActionParameters'.
  final pulumi.Input<String> typeName;

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
      'parameterNameOverride':
          ?pulumi.Input.mapOptionalInputValue<
            List<UrlSigningParamIdentifier>,
            List<Map<String, dynamic>>
          >(
            parameterNameOverride,
            (value) =>
                pulumi.Input.encodeList<
                  UrlSigningParamIdentifier,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'typeName': typeName,
    };
  }

  factory UrlSigningActionParameters.fromMap(Map<String, dynamic> map) {
    return UrlSigningActionParameters(
      algorithm: (() {
        final guardedValue = map['algorithm'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      parameterNameOverride: (() {
        final guardedValue = map['parameterNameOverride'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<UrlSigningParamIdentifier>(
            guardedValue,
            (value) => UrlSigningParamIdentifier.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      typeName: pulumi.Input.fromValue(map['typeName'] as String),
    );
  }
}
