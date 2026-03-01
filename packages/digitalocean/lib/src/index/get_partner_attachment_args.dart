// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_partner_attachment_bgp.dart';

/// {@template pulumi_index_get_partner_attachment_get_partner_attachment_args_doc}
/// Arguments for getPartnerAttachment.
/// {@endtemplate}
/// {@macro pulumi_index_get_partner_attachment_get_partner_attachment_args_doc}
class GetPartnerAttachmentArgs {
  final pulumi.Input<GetPartnerAttachmentBgp>? bgp;
  final pulumi.Input<String>? id;
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? redundancyZone;

  /// Creates a new [GetPartnerAttachmentArgs].
  /// [bgp] Optional.
  /// [id] Optional.
  /// [name] Optional.
  /// [redundancyZone] Optional.
  GetPartnerAttachmentArgs({
    GetPartnerAttachmentBgp? bgp,
    String? id,
    String? name,
    String? redundancyZone,
  }) :
      bgp = pulumi.Input.asOptionalInput<GetPartnerAttachmentBgp>(bgp),
      id = pulumi.Input.asOptionalInput<String>(id),
      name = pulumi.Input.asOptionalInput<String>(name),
      redundancyZone = pulumi.Input.asOptionalInput<String>(redundancyZone);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'bgp': ?pulumi.Input.mapOptionalInputValue<GetPartnerAttachmentBgp, Map<String, dynamic>>(bgp, (value) => value.toMap()),
      'id': ?id,
      'name': ?name,
      'redundancyZone': ?redundancyZone,
    };
  }

  factory GetPartnerAttachmentArgs.fromMap(Map<String, dynamic> map) {
    return GetPartnerAttachmentArgs(
      bgp: map['bgp'] == null ? null : GetPartnerAttachmentBgp.fromMap((map['bgp'] as Map).cast<String, dynamic>()),
      id: map['id'] == null ? null : map['id'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      redundancyZone: map['redundancyZone'] == null ? null : map['redundancyZone'] as String,
    );
  }
}

