// ignore_for_file: unused_element, unnecessary_cast


class AuthomationRuleActionIncidentTask {
  /// The description of the incident task.
  final String? description;
  /// The execution order of this action.
  final int order;
  /// The title of the incident task.
  final String title;

  /// Creates a new [AuthomationRuleActionIncidentTask].
  /// [description] The description of the incident task.
  /// [order] The execution order of this action.
  /// [title] The title of the incident task.
  AuthomationRuleActionIncidentTask({
    this.description,
    required this.order,
    required this.title,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'order': order,
      'title': title,
    };
  }

  factory AuthomationRuleActionIncidentTask.fromMap(Map<String, dynamic> map) {
    return AuthomationRuleActionIncidentTask(
      description: map['description'] == null ? null : map['description'] as String,
      order: map['order'] as int,
      title: map['title'] as String,
    );
  }
}

