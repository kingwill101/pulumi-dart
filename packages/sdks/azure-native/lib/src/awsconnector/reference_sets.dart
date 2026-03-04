// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipset_reference.dart';

/// Definition of ReferenceSets
class ReferenceSets {
  /// Property ipSetReferences
  final pulumi.Input<Map<String, IPSetReference>>? ipSetReferences;

  /// Creates a new [ReferenceSets].
  /// [ipSetReferences] Property ipSetReferences
  ReferenceSets({this.ipSetReferences});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipSetReferences':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, IPSetReference>,
            Map<String, Map<String, dynamic>>
          >(
            ipSetReferences,
            (value) =>
                pulumi.Input.encodeMapValues<
                  IPSetReference,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory ReferenceSets.fromMap(Map<String, dynamic> map) {
    return ReferenceSets(
      ipSetReferences: (() {
        final guardedValue = map['ipSetReferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<IPSetReference>(
            guardedValue,
            (value) =>
                IPSetReference.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
    );
  }
}
