// ignore_for_file: unused_element, unnecessary_cast

class EntityRecognizerInputDataConfigEntityList {
  /// Location of entity list.
  final String s3Uri;

  EntityRecognizerInputDataConfigEntityList({
    required this.s3Uri,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Uri'] = s3Uri;
    return map;
  }

  factory EntityRecognizerInputDataConfigEntityList.fromMap(
      Map<String, dynamic> map) {
    return EntityRecognizerInputDataConfigEntityList(
      s3Uri: map['s3Uri'] as String,
    );
  }
}
