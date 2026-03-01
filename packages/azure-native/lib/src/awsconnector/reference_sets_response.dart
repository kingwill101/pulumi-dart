// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset_reference_response.dart';

/// Definition of ReferenceSets
class ReferenceSetsResponse {
  /// Property ipSetReferences
  final Map<String, IPSetReferenceResponse>? ipSetReferences;

  /// Creates a new [ReferenceSetsResponse].
  /// [ipSetReferences] Property ipSetReferences
  ReferenceSetsResponse({
    this.ipSetReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSetReferences': ?ipSetReferences == null ? null : pulumi.Input.encodeMapValues<IPSetReferenceResponse, Map<String, dynamic>>(ipSetReferences!, (value) => value.toMap()),
    };
  }

  factory ReferenceSetsResponse.fromMap(Map<String, dynamic> map) {
    return ReferenceSetsResponse(
      ipSetReferences: map['ipSetReferences'] == null ? null : pulumi.Input.decodeMapValues<IPSetReferenceResponse>(map['ipSetReferences'], (value) => IPSetReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

