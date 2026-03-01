// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_get_agreement_get_agreement_args_doc}
/// Arguments for getAgreement.
/// {@endtemplate}
/// {@macro pulumi_marketplace_get_agreement_get_agreement_args_doc}
class GetAgreementArgs {
  /// The Offer of the Marketplace Image.
  final pulumi.Input<String> offer;
  /// The Plan of the Marketplace Image.
  final pulumi.Input<String> plan;
  /// The Publisher of the Marketplace Image.
  final pulumi.Input<String> publisher;

  /// Creates a new [GetAgreementArgs].
  /// [offer] The Offer of the Marketplace Image.
  /// [plan] The Plan of the Marketplace Image.
  /// [publisher] The Publisher of the Marketplace Image.
  GetAgreementArgs({
    required String offer,
    required String plan,
    required String publisher,
  }) :
      offer = pulumi.Input.asInput<String>(offer),
      plan = pulumi.Input.asInput<String>(plan),
      publisher = pulumi.Input.asInput<String>(publisher);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'offer': offer,
      'plan': plan,
      'publisher': publisher,
    };
  }

  factory GetAgreementArgs.fromMap(Map<String, dynamic> map) {
    return GetAgreementArgs(
      offer: map['offer'] as String,
      plan: map['plan'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

