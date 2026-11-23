// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class StringMatch {
  /// Regular-expression matching. Conflicts with `values`
  final pulumi.Input<List<String>?>? regexValues;
  /// AWS value matching, including supported wildcards. Conflicts with `regexValues`
  final pulumi.Input<List<String>?>? values;

  /// Creates a new [StringMatch].
  /// [regexValues] Regular-expression matching. Conflicts with `values`
  /// [values] AWS value matching, including supported wildcards. Conflicts with `regexValues`
  const StringMatch({
    this.regexValues,
    this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regexValues': ?regexValues,
      'values': ?values,
    };
  }

  factory StringMatch.fromMap(Map<String, dynamic> map) {
    return StringMatch(
      regexValues: (() { final guardedValue = map['regexValues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      values: (() { final guardedValue = map['values']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
    );
  }
}
