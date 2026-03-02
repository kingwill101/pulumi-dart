// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of OpenSearchWarmPartitionInstanceTypeEnumValue
class OpenSearchWarmPartitionInstanceTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [OpenSearchWarmPartitionInstanceTypeEnumValueResponse].
  /// [value] Property value
  OpenSearchWarmPartitionInstanceTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory OpenSearchWarmPartitionInstanceTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return OpenSearchWarmPartitionInstanceTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

