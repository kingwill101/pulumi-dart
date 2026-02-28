// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionSourceRepository {
  /// The URL pointing to the hosted repository where the function was defined at the time of deployment.
  final String deployedUrl;

  /// The URL pointing to the hosted repository where the function is defined.
  final String url;

  /// Creates a new [GetFunctionSourceRepository].
  /// [deployedUrl] The URL pointing to the hosted repository where the function was defined at the time of deployment.
  /// [url] The URL pointing to the hosted repository where the function is defined.
  GetFunctionSourceRepository({
    required this.deployedUrl,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deployedUrl'] = deployedUrl;
    map['url'] = url;
    return map;
  }

  factory GetFunctionSourceRepository.fromMap(Map<String, dynamic> map) {
    return GetFunctionSourceRepository(
      deployedUrl: map['deployedUrl'] as String,
      url: map['url'] as String,
    );
  }
}
