// ignore_for_file: unused_element, unnecessary_cast

class BucketVersioning {
  /// While set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, versioning is fully enabled for this bucket.
  final bool enabled;

  BucketVersioning({
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    return map;
  }

  factory BucketVersioning.fromMap(Map<String, dynamic> map) {
    return BucketVersioning(
      enabled: map['enabled'] as bool,
    );
  }
}
