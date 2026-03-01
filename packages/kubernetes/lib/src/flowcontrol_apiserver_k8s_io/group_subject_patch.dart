// ignore_for_file: unused_element, unnecessary_cast


/// GroupSubject holds detailed information for group-kind subject.
class GroupSubjectPatch {
  /// name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  final String? name;

  /// Creates a new [GroupSubjectPatch].
  /// [name] name is the user group that matches, or "*" to match all user groups. See https://github.com/kubernetes/apiserver/blob/master/pkg/authentication/user/user.go for some well-known group names. Required.
  GroupSubjectPatch({
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
    };
  }

  factory GroupSubjectPatch.fromMap(Map<String, dynamic> map) {
    return GroupSubjectPatch(
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

