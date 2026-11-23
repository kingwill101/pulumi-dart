// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class HeaderCondition {
  /// The name of the HTTP request header to match, such as "X-Deployment". Header names are matched
  /// case-insensitively
  final pulumi.Input<String> name;
  /// Regular-expression matching. Conflicts with `values`
  final pulumi.Input<List<String>?>? regexValues;
  /// AWS value matching, including supported wildcards. Conflicts with `regexValues`
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [HeaderCondition].
  /// [name] The name of the HTTP request header to match, such as "X-Deployment". Header names are matched
  /// [regexValues] Regular-expression matching. Conflicts with `values`
  /// [values] AWS value matching, including supported wildcards. Conflicts with `regexValues`
  const HeaderCondition({
    required this.name,
    this.regexValues,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'regexValues': ?regexValues,
      'values': ?values,
    };
  }

  factory HeaderCondition.fromMap(Map<String, dynamic> map) {
    return HeaderCondition(
      name: pulumi.Input.fromValue(map['name'] as String),
      regexValues: (() { final guardedValue = map['regexValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
