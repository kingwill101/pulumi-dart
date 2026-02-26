// ignore_for_file: unused_element, unnecessary_cast

class BucketObjectRetention {
  /// The retention policy mode. Either `Locked` or `Unlocked`.
  final String mode;

  /// The time to retain the object until in RFC 3339 format, for example 2012-11-15T16:19:00.094Z.
  ///
  /// <a name=<span pulumi-lang-nodejs=""nestedContexts"" pulumi-lang-dotnet=""NestedContexts"" pulumi-lang-go=""nestedContexts"" pulumi-lang-python=""nested_contexts"" pulumi-lang-yaml=""nestedContexts"" pulumi-lang-java=""nestedContexts"">"nested_contexts"</span>></a> The <span pulumi-lang-nodejs="`contexts`" pulumi-lang-dotnet="`Contexts`" pulumi-lang-go="`contexts`" pulumi-lang-python="`contexts`" pulumi-lang-yaml="`contexts`" pulumi-lang-java="`contexts`">`contexts`</span> block supports -
  final String retainUntilTime;

  BucketObjectRetention({
    required this.mode,
    required this.retainUntilTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['mode'] = mode;
    map['retainUntilTime'] = retainUntilTime;
    return map;
  }

  factory BucketObjectRetention.fromMap(Map<String, dynamic> map) {
    return BucketObjectRetention(
      mode: map['mode'] as String,
      retainUntilTime: map['retainUntilTime'] as String,
    );
  }
}
