// ignore_for_file: unused_element, unnecessary_cast


class GroupAutoAccept {
  /// A list of project ids or project numbers for which you want to enable auto-accept. The auto-accept setting is applied to spokes being created or updated in these projects.
  final List<String> autoAcceptProjects;

  /// Creates a new [GroupAutoAccept].
  /// [autoAcceptProjects] A list of project ids or project numbers for which you want to enable auto-accept. The auto-accept setting is applied to spokes being created or updated in these projects.
  GroupAutoAccept({
    required this.autoAcceptProjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoAcceptProjects': autoAcceptProjects,
    };
  }

  factory GroupAutoAccept.fromMap(Map<String, dynamic> map) {
    return GroupAutoAccept(
      autoAcceptProjects: (map['autoAcceptProjects'] as List).cast<String>(),
    );
  }
}

