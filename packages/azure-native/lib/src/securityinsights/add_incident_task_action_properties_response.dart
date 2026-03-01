// ignore_for_file: unused_element, unnecessary_cast


/// Describes an automation rule action to add a task to an incident.
class AddIncidentTaskActionPropertiesResponse {
  /// The description of the task.
  final String? description;
  /// The title of the task.
  final String title;

  /// Creates a new [AddIncidentTaskActionPropertiesResponse].
  /// [description] The description of the task.
  /// [title] The title of the task.
  AddIncidentTaskActionPropertiesResponse({
    this.description,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'title': title,
    };
  }

  factory AddIncidentTaskActionPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AddIncidentTaskActionPropertiesResponse(
      description: map['description'] == null ? null : map['description'] as String,
      title: map['title'] as String,
    );
  }
}

