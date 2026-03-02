// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetDomainsDomainLogHeader {
  /// The key of label.
  final pulumi.Input<String> key;
  /// The value of label.
  final pulumi.Input<String> value;

  /// Creates a new [GetDomainsDomainLogHeader].
  /// [key] The key of label.
  /// [value] The value of label.
  GetDomainsDomainLogHeader({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory GetDomainsDomainLogHeader.fromMap(Map<String, dynamic> map) {
    return GetDomainsDomainLogHeader(
      key: (map['key'] as String).input(),
      value: (map['value'] as String).input(),
    );
  }
}

