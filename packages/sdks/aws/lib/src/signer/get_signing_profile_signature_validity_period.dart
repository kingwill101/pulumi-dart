// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSigningProfileSignatureValidityPeriod {
  final pulumi.Input<String> type;
  final pulumi.Input<int> value;

  /// Creates a new [GetSigningProfileSignatureValidityPeriod].
  /// [type] Required.
  /// [value] Required.
  GetSigningProfileSignatureValidityPeriod({
    required this.type,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'type': type, 'value': value};
  }

  factory GetSigningProfileSignatureValidityPeriod.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetSigningProfileSignatureValidityPeriod(
      type: pulumi.Input.fromValue(map['type'] as String),
      value: pulumi.Input.fromValue(map['value'] as int),
    );
  }
}
