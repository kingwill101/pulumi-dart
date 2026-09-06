// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset_reference_response.dart';

/// Definition of ReferenceSets
class ReferenceSetsResponse {
  /// Property ipSetReferences
  final pulumi.Input<Map<String, IPSetReferenceResponse>?>? ipSetReferences;

  /// Creates a new [ReferenceSetsResponse].
  /// [ipSetReferences] Property ipSetReferences
  const ReferenceSetsResponse({
    this.ipSetReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSetReferences': ?pulumi.Input.mapOptionalInputValue<Map<String, IPSetReferenceResponse>, Map<String, Map<String, dynamic>>>(ipSetReferences, (value) => pulumi.Input.encodeMapValues<IPSetReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory ReferenceSetsResponse.fromMap(Map<String, dynamic> map) {
    return ReferenceSetsResponse(
      ipSetReferences: (() { final guardedValue = map['ipSetReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<IPSetReferenceResponse>(guardedValue, (value) => IPSetReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
