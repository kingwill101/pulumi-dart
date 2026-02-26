// ignore_for_file: unused_element, unnecessary_cast

class DefaultObjectAccessControlProjectTeam {
  /// The project team associated with the entity
  final String? projectNumber;

  /// The team.
  /// Possible values are: <span pulumi-lang-nodejs="`editors`" pulumi-lang-dotnet="`Editors`" pulumi-lang-go="`editors`" pulumi-lang-python="`editors`" pulumi-lang-yaml="`editors`" pulumi-lang-java="`editors`">`editors`</span>, <span pulumi-lang-nodejs="`owners`" pulumi-lang-dotnet="`Owners`" pulumi-lang-go="`owners`" pulumi-lang-python="`owners`" pulumi-lang-yaml="`owners`" pulumi-lang-java="`owners`">`owners`</span>, <span pulumi-lang-nodejs="`viewers`" pulumi-lang-dotnet="`Viewers`" pulumi-lang-go="`viewers`" pulumi-lang-python="`viewers`" pulumi-lang-yaml="`viewers`" pulumi-lang-java="`viewers`">`viewers`</span>.
  final String? team;

  DefaultObjectAccessControlProjectTeam({
    this.projectNumber,
    this.team,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final projectNumberValue = projectNumber;
    if (projectNumberValue != null) {
      map['projectNumber'] = projectNumberValue;
    }
    final teamValue = team;
    if (teamValue != null) {
      map['team'] = teamValue;
    }
    return map;
  }

  factory DefaultObjectAccessControlProjectTeam.fromMap(
      Map<String, dynamic> map) {
    return DefaultObjectAccessControlProjectTeam(
      projectNumber:
          map['projectNumber'] == null ? null : map['projectNumber'] as String,
      team: map['team'] == null ? null : map['team'] as String,
    );
  }
}
