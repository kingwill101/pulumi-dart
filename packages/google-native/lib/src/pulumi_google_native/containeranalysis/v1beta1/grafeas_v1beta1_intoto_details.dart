// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'grafeas_v1beta1_intoto_signature.dart';
import 'link.dart';

/// This corresponds to a signed in-toto link - it is made up of one or more signatures and the in-toto link itself. This is used for occurrences of a Grafeas in-toto note.
class GrafeasV1beta1IntotoDetails {
  final List<GrafeasV1beta1IntotoSignature>? signatures;
  final Link? signed;

  GrafeasV1beta1IntotoDetails({
    this.signatures,
    this.signed,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final signaturesValue = signatures;
    if (signaturesValue != null) {
      map['signatures'] = pulumi.Input.encodeList<GrafeasV1beta1IntotoSignature,
          Map<String, dynamic>>(signaturesValue, (value) => value.toMap());
    }
    final signedValue = signed;
    if (signedValue != null) {
      map['signed'] = signedValue.toMap();
    }
    return map;
  }

  factory GrafeasV1beta1IntotoDetails.fromMap(Map<String, dynamic> map) {
    return GrafeasV1beta1IntotoDetails(
      signatures: map['signatures'] == null
          ? null
          : pulumi.Input.decodeList<GrafeasV1beta1IntotoSignature>(
              map['signatures'],
              (value) => GrafeasV1beta1IntotoSignature.fromMap(
                  (value as Map).cast<String, dynamic>())),
      signed: map['signed'] == null
          ? null
          : Link.fromMap((map['signed'] as Map).cast<String, dynamic>()),
    );
  }
}
