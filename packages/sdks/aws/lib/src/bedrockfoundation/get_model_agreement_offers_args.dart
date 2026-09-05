// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_bedrockfoundation_get_model_agreement_offers_get_model_agreement_offers_args_doc}
/// Arguments for getModelAgreementOffers.
/// {@endtemplate}
/// {@macro pulumi_bedrockfoundation_get_model_agreement_offers_get_model_agreement_offers_args_doc}
class GetModelAgreementOffersArgs {
  /// Model ID of the foundation model
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> modelId;
  /// Type of offer associated with the model. Valid values are `ALL` and `PUBLIC`.
  final pulumi.Input<String?>? offerType;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;

  /// Creates a new [GetModelAgreementOffersArgs].
  /// [modelId] Model ID of the foundation model
  /// [offerType] Type of offer associated with the model. Valid values are `ALL` and `PUBLIC`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  const GetModelAgreementOffersArgs({
    required this.modelId,
    this.offerType,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modelId': modelId,
      'offerType': ?offerType,
      'region': ?region,
    };
  }

  factory GetModelAgreementOffersArgs.fromMap(Map<String, dynamic> map) {
    return GetModelAgreementOffersArgs(
      modelId: pulumi.Input.fromValue(map['modelId'] as String),
      offerType: (() { final guardedValue = map['offerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
