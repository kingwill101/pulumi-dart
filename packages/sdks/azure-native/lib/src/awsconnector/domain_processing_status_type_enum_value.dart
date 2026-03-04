// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DomainProcessingStatusTypeEnumValue
class DomainProcessingStatusTypeEnumValue {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [DomainProcessingStatusTypeEnumValue].
  /// [value] Property value
  DomainProcessingStatusTypeEnumValue({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory DomainProcessingStatusTypeEnumValue.fromMap(
    Map<String, dynamic> map,
  ) {
    return DomainProcessingStatusTypeEnumValue(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
