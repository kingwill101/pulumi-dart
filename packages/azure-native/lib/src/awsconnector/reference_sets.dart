// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset_reference.dart';

/// Definition of ReferenceSets
class ReferenceSets {
  /// Property ipSetReferences
  final Map<String, IPSetReference>? ipSetReferences;

  /// Creates a new [ReferenceSets].
  /// [ipSetReferences] Property ipSetReferences
  ReferenceSets({
    this.ipSetReferences,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSetReferences': ?ipSetReferences == null ? null : pulumi.Input.encodeMapValues<IPSetReference, Map<String, dynamic>>(ipSetReferences!, (value) => value.toMap()),
    };
  }

  factory ReferenceSets.fromMap(Map<String, dynamic> map) {
    return ReferenceSets(
      ipSetReferences: map['ipSetReferences'] == null ? null : pulumi.Input.decodeMapValues<IPSetReference>(map['ipSetReferences'], (value) => IPSetReference.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

