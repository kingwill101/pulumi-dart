// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getTopic.
class GetTopicPubsubV1beta2Result {
  /// The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  final String name;

  /// Creates a new [GetTopicPubsubV1beta2Result].
  /// [name] The name of the topic. It must have the format `"projects/{project}/topics/{topic}"`. `{topic}` must start with a letter, and contain only letters (`[A-Za-z]`), numbers (`[0-9]`), dashes (`-`), underscores (`_`), periods (`.`), tildes (`~`), plus (`+`) or percent signs (`%`). It must be between 3 and 255 characters in length, and it must not start with `"goog"`.
  GetTopicPubsubV1beta2Result({required this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory GetTopicPubsubV1beta2Result.fromMap(Map<String, dynamic> map) {
    return GetTopicPubsubV1beta2Result(name: map['name'] as String);
  }
}
