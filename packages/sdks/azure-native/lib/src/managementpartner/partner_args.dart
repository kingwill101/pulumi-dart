// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managementpartner_partner_args_doc}
/// The set of arguments for Partner.
/// {@endtemplate}
/// {@macro pulumi_managementpartner_partner_args_doc}
class PartnerArgs {
  /// Id of the Partner
  final pulumi.Input<String>? partnerId;

  /// Creates a new [PartnerArgs].
  /// [partnerId] Id of the Partner
  const PartnerArgs({
    this.partnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerId': ?partnerId,
    };
  }

  factory PartnerArgs.fromMap(Map<String, dynamic> map) {
    return PartnerArgs(
      partnerId: (() { final guardedValue = map['partnerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
