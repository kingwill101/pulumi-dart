// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_agreement_timeouts.dart';

/// Input properties used for looking up and filtering ModelAgreement resources.
class ModelAgreementState {
  /// Model ID for the access request.
  final pulumi.Input<String?>? modelId;
  /// Offer token encapsulates information for an offer.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? offerToken;
  /// Region where this action should be [run](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  final pulumi.Input<ModelAgreementTimeouts?>? timeouts;

  /// Creates a new [ModelAgreementState].
  /// [modelId] Model ID for the access request.
  /// [offerToken] Offer token encapsulates information for an offer.
  /// [region] Region where this action should be [run](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [timeouts] Optional.
  const ModelAgreementState({
    this.modelId,
    this.offerToken,
    this.region,
    this.timeouts,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': ?modelId,
      'offerToken': ?offerToken,
      'region': ?region,
      'timeouts': ?pulumi.Input.mapOptionalInputValue<ModelAgreementTimeouts, Map<String, dynamic>>(timeouts, (value) => value.toMap()),
    };
  }

  factory ModelAgreementState.fromMap(Map<String, dynamic> map) {
    return ModelAgreementState(
      modelId: (() { final guardedValue = map['modelId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      offerToken: (() { final guardedValue = map['offerToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      timeouts: (() { final guardedValue = map['timeouts']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ModelAgreementTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
