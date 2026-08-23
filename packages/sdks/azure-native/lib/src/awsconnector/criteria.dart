// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 's3_words_list.dart';

/// Definition of Criteria
class Criteria {
  /// The S3 object key for the AllowList.
  final pulumi.Input<String>? regex;
  /// The S3 location for the AllowList.
  final pulumi.Input<S3WordsList>? s3WordsList;

  /// Creates a new [Criteria].
  /// [regex] The S3 object key for the AllowList.
  /// [s3WordsList] The S3 location for the AllowList.
  const Criteria({
    this.regex,
    this.s3WordsList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?regex,
      's3WordsList': ?pulumi.Input.mapOptionalInputValue<S3WordsList, Map<String, dynamic>>(s3WordsList, (value) => value.toMap()),
    };
  }

  factory Criteria.fromMap(Map<String, dynamic> map) {
    return Criteria(
      regex: (() { final guardedValue = map['regex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3WordsList: (() { final guardedValue = map['s3WordsList']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3WordsList.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
