// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_managementpartner_get_partner_args_doc}
/// Arguments for getPartner.
/// {@endtemplate}
/// {@macro pulumi_managementpartner_get_partner_args_doc}
class GetPartnerArgs {
  /// Id of the Partner
  final pulumi.Input<String> partnerId;

  /// Creates a new [GetPartnerArgs].
  /// [partnerId] Id of the Partner
  const GetPartnerArgs({
    required this.partnerId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'partnerId': partnerId,
    };
  }

  factory GetPartnerArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerArgs(
      partnerId: pulumi.Input.fromValue(map['partnerId'] as String),
    );
  }
}
