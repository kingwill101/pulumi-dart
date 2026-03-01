// ignore_for_file: unused_element, unnecessary_cast


/// Article details of the insight like title, description etc
class Content {
  /// Description of the insight
  final String description;
  /// Title of the insight
  final String title;

  /// Creates a new [Content].
  /// [description] Description of the insight
  /// [title] Title of the insight
  Content({
    required this.description,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'title': title,
    };
  }

  factory Content.fromMap(Map<String, dynamic> map) {
    return Content(
      description: map['description'] as String,
      title: map['title'] as String,
    );
  }
}

