// ignore_for_file: unused_element, unnecessary_cast

class DistributionDefaultCacheBehavior2 {
  /// Cache behavior of the distribution. Valid values: <span pulumi-lang-nodejs="`cache`" pulumi-lang-dotnet="`Cache`" pulumi-lang-go="`cache`" pulumi-lang-python="`cache`" pulumi-lang-yaml="`cache`" pulumi-lang-java="`cache`">`cache`</span>, `dont-cache`.
  final String behavior;

  DistributionDefaultCacheBehavior2({
    required this.behavior,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['behavior'] = behavior;
    return map;
  }

  factory DistributionDefaultCacheBehavior2.fromMap(Map<String, dynamic> map) {
    return DistributionDefaultCacheBehavior2(
      behavior: map['behavior'] as String,
    );
  }
}
