// ignore_for_file: unused_element, unnecessary_cast

class JobTemplateConfigPubsubDestination {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: projects/{project}/topics/{topic}.
  final String? topic;

  /// Creates a new [JobTemplateConfigPubsubDestination].
  /// [topic] The name of the Pub/Sub topic to publish job completion notification to. For example: projects/{project}/topics/{topic}.
  JobTemplateConfigPubsubDestination({this.topic});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'topic': ?topic};
  }

  factory JobTemplateConfigPubsubDestination.fromMap(Map<String, dynamic> map) {
    return JobTemplateConfigPubsubDestination(
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}
