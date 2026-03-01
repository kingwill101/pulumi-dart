// ignore_for_file: unused_element, unnecessary_cast


/// SparkConfig Properties for a Big Data pool powered by Apache Spark
class SparkConfigPropertiesResponse {
  /// The type of the spark config properties file.
  final String? configurationType;
  /// The spark config properties.
  final String? content;
  /// The filename of the spark config properties file.
  final String? filename;
  /// The last update time of the spark config properties file.
  final String time;

  /// Creates a new [SparkConfigPropertiesResponse].
  /// [configurationType] The type of the spark config properties file.
  /// [content] The spark config properties.
  /// [filename] The filename of the spark config properties file.
  /// [time] The last update time of the spark config properties file.
  SparkConfigPropertiesResponse({
    this.configurationType,
    this.content,
    this.filename,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationType': ?configurationType,
      'content': ?content,
      'filename': ?filename,
      'time': time,
    };
  }

  factory SparkConfigPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return SparkConfigPropertiesResponse(
      configurationType: map['configurationType'] == null ? null : map['configurationType'] as String,
      content: map['content'] == null ? null : map['content'] as String,
      filename: map['filename'] == null ? null : map['filename'] as String,
      time: map['time'] as String,
    );
  }
}

