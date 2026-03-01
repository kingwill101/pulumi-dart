// ignore_for_file: unused_element, unnecessary_cast

import 's3_words_list.dart';

/// Definition of Criteria
class Criteria {
  /// The S3 object key for the AllowList.
  final String? regex;
  /// The S3 location for the AllowList.
  final S3WordsList? s3WordsList;

  /// Creates a new [Criteria].
  /// [regex] The S3 object key for the AllowList.
  /// [s3WordsList] The S3 location for the AllowList.
  Criteria({
    this.regex,
    this.s3WordsList,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'regex': ?regex,
      's3WordsList': ?s3WordsList == null ? null : s3WordsList!.toMap(),
    };
  }

  factory Criteria.fromMap(Map<String, dynamic> map) {
    return Criteria(
      regex: map['regex'] == null ? null : map['regex'] as String,
      s3WordsList: map['s3WordsList'] == null ? null : S3WordsList.fromMap((map['s3WordsList'] as Map).cast<String, dynamic>()),
    );
  }
}

