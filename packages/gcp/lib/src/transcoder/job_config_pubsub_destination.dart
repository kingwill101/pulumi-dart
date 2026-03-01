// ignore_for_file: unused_element, unnecessary_cast


class JobConfigPubsubDestination {
  /// The name of the Pub/Sub topic to publish job completion notification to. For example: projects/{project}/topics/{topic}.
  final String? topic;

  /// Creates a new [JobConfigPubsubDestination].
  /// [topic] The name of the Pub/Sub topic to publish job completion notification to. For example: projects/{project}/topics/{topic}.
  JobConfigPubsubDestination({
    this.topic,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topic': ?topic,
    };
  }

  factory JobConfigPubsubDestination.fromMap(Map<String, dynamic> map) {
    return JobConfigPubsubDestination(
      topic: map['topic'] == null ? null : map['topic'] as String,
    );
  }
}

