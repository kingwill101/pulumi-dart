// ignore_for_file: unused_element, unnecessary_cast


/// Library requirements for a Big Data pool powered by Apache Spark
class LibraryRequirementsResponse {
  /// The library requirements.
  final String? content;
  /// The filename of the library requirements file.
  final String? filename;
  /// The last update time of the library requirements file.
  final String time;

  /// Creates a new [LibraryRequirementsResponse].
  /// [content] The library requirements.
  /// [filename] The filename of the library requirements file.
  /// [time] The last update time of the library requirements file.
  LibraryRequirementsResponse({
    this.content,
    this.filename,
    required this.time,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'filename': ?filename,
      'time': time,
    };
  }

  factory LibraryRequirementsResponse.fromMap(Map<String, dynamic> map) {
    return LibraryRequirementsResponse(
      content: map['content'] == null ? null : map['content'] as String,
      filename: map['filename'] == null ? null : map['filename'] as String,
      time: map['time'] as String,
    );
  }
}

