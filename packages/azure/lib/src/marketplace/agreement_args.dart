// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_marketplace_agreement_agreement_args_doc}
/// The set of arguments for Agreement.
/// {@endtemplate}
/// {@macro pulumi_marketplace_agreement_agreement_args_doc}
class AgreementArgs {
  /// The Offer of the Marketplace Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> offer;
  /// The Plan of the Marketplace Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> plan;
  /// The Publisher of the Marketplace Image. Changing this forces a new resource to be created.
  final pulumi.Input<String> publisher;

  /// Creates a new [AgreementArgs].
  /// [offer] The Offer of the Marketplace Image. Changing this forces a new resource to be created.
  /// [plan] The Plan of the Marketplace Image. Changing this forces a new resource to be created.
  /// [publisher] The Publisher of the Marketplace Image. Changing this forces a new resource to be created.
  AgreementArgs({
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

  factory AgreementArgs.fromMap(Map<String, dynamic> map) {
    return AgreementArgs(
      offer: map['offer'] as String,
      plan: map['plan'] as String,
      publisher: map['publisher'] as String,
    );
  }
}

