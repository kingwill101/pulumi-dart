// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ElasticFileSystemTag
class ElasticFileSystemTagResponse {
  /// The tag key (String). The key can't start with ``aws:``.
  final pulumi.Input<String>? key;

  /// The value of the tag key.
  final pulumi.Input<String>? value;

  /// Creates a new [ElasticFileSystemTagResponse].
  /// [key] The tag key (String). The key can't start with ``aws:``.
  /// [value] The value of the tag key.
  ElasticFileSystemTagResponse({this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'key': ?key, 'value': ?value};
  }

  factory ElasticFileSystemTagResponse.fromMap(Map<String, dynamic> map) {
    return ElasticFileSystemTagResponse(
      key: (() {
        final guardedValue = map['key'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
