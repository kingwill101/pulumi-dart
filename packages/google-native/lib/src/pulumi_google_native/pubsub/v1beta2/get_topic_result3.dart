// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTopic.
class GetTopicResult3 {
  /// The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final String name;

  GetTopicResult3({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory GetTopicResult3.fromMap(Map<String, dynamic> map) {
    return GetTopicResult3(
      name: map['name'] as String,
    );
  }
}
