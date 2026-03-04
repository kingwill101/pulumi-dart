// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OpenSearchPartitionInstanceTypeEnumValue
class OpenSearchPartitionInstanceTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [OpenSearchPartitionInstanceTypeEnumValueResponse].
  /// [value] Property value
  OpenSearchPartitionInstanceTypeEnumValueResponse({this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'value': ?value};
  }

  factory OpenSearchPartitionInstanceTypeEnumValueResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return OpenSearchPartitionInstanceTypeEnumValueResponse(
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
