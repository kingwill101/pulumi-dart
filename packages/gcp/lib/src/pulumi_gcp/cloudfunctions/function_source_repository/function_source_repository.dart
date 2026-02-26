// ignore_for_file: unused_element, unnecessary_cast

class FunctionSourceRepository {
  /// The URL pointing to the hosted repository where the function was defined at the time of deployment.
  final String? deployedUrl;

  /// The URL pointing to the hosted repository where the function is defined. There are supported Cloud Source Repository URLs in the following formats:
  ///
  /// * To refer to a specific commit: `https://source.developers.google.com/projects/*/repos/*/revisions/*/paths/*`
  /// * To refer to a moveable alias (branch): `https://source.developers.google.com/projects/*/repos/*/moveable-aliases/*/paths/*`. To refer to HEAD, use the <span pulumi-lang-nodejs="`master`" pulumi-lang-dotnet="`Master`" pulumi-lang-go="`master`" pulumi-lang-python="`master`" pulumi-lang-yaml="`master`" pulumi-lang-java="`master`">`master`</span> moveable alias.
  /// * To refer to a specific fixed alias (tag): `https://source.developers.google.com/projects/*/repos/*/fixed-aliases/*/paths/*`
  final String url;

  FunctionSourceRepository({
    this.deployedUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deployedUrlValue = deployedUrl;
    if (deployedUrlValue != null) {
      map['deployedUrl'] = deployedUrlValue;
    }
    map['url'] = url;
    return map;
  }

  factory FunctionSourceRepository.fromMap(Map<String, dynamic> map) {
    return FunctionSourceRepository(
      deployedUrl:
          map['deployedUrl'] == null ? null : map['deployedUrl'] as String,
      url: map['url'] as String,
    );
  }
}
