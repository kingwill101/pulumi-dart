// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of DomainProcessingStatusTypeEnumValue
class DomainProcessingStatusTypeEnumValueResponse {
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [DomainProcessingStatusTypeEnumValueResponse].
  /// [value] Property value
  DomainProcessingStatusTypeEnumValueResponse({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory DomainProcessingStatusTypeEnumValueResponse.fromMap(Map<String, dynamic> map) {
    return DomainProcessingStatusTypeEnumValueResponse(
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

