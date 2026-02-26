// ignore_for_file: unused_element, unnecessary_cast

class ManagedUserPoolClientRefreshTokenRotation {
  /// The state of refresh token rotation for the current app client. Valid values are `ENABLED` or `DISABLED`.
  final String feature;

  /// A period of time in seconds that the user has to use the old refresh token before it is invalidated. Valid values are between <span pulumi-lang-nodejs="`0`" pulumi-lang-dotnet="`0`" pulumi-lang-go="`0`" pulumi-lang-python="`0`" pulumi-lang-yaml="`0`" pulumi-lang-java="`0`">`0`</span> and <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span>.
  final int? retryGracePeriodSeconds;

  ManagedUserPoolClientRefreshTokenRotation({
    required this.feature,
    this.retryGracePeriodSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['feature'] = feature;
    final retryGracePeriodSecondsValue = retryGracePeriodSeconds;
    if (retryGracePeriodSecondsValue != null) {
      map['retryGracePeriodSeconds'] = retryGracePeriodSecondsValue;
    }
    return map;
  }

  factory ManagedUserPoolClientRefreshTokenRotation.fromMap(
      Map<String, dynamic> map) {
    return ManagedUserPoolClientRefreshTokenRotation(
      feature: map['feature'] as String,
      retryGracePeriodSeconds: map['retryGracePeriodSeconds'] == null
          ? null
          : map['retryGracePeriodSeconds'] as int,
    );
  }
}
