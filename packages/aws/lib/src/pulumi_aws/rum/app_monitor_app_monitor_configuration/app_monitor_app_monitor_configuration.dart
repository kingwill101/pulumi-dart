// ignore_for_file: unused_element, unnecessary_cast

class AppMonitorAppMonitorConfiguration {
  /// If you set this to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, RUM web client sets two cookies, a session cookie and a user cookie. The cookies allow the RUM web client to collect data relating to the number of users an application has and the behavior of the application across a sequence of events. Cookies are stored in the top-level domain of the current page.
  final bool? allowCookies;

  /// If you set this to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, RUM enables X-Ray tracing for the user sessions that RUM samples. RUM adds an X-Ray trace header to allowed HTTP requests. It also records an X-Ray segment for allowed HTTP requests.
  final bool? enableXray;

  /// A list of URLs in your website or application to exclude from RUM data collection.
  final List<String>? excludedPages;

  /// A list of pages in the CloudWatch RUM console that are to be displayed with a "favorite" icon.
  final List<String>? favoritePages;

  /// The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
  final String? guestRoleArn;

  /// The ID of the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
  final String? identityPoolId;

  /// If this app monitor is to collect data from only certain pages in your application, this structure lists those pages.
  final List<String>? includedPages;

  /// Specifies the percentage of user sessions to use for RUM data collection. Choosing a higher percentage gives you more data but also incurs more costs. The number you specify is the percentage of user sessions that will be used. Default value is `0.1`.
  final double? sessionSampleRate;

  /// An array that lists the types of telemetry data that this app monitor is to collect. Valid values are <span pulumi-lang-nodejs="`errors`" pulumi-lang-dotnet="`Errors`" pulumi-lang-go="`errors`" pulumi-lang-python="`errors`" pulumi-lang-yaml="`errors`" pulumi-lang-java="`errors`">`errors`</span>, <span pulumi-lang-nodejs="`performance`" pulumi-lang-dotnet="`Performance`" pulumi-lang-go="`performance`" pulumi-lang-python="`performance`" pulumi-lang-yaml="`performance`" pulumi-lang-java="`performance`">`performance`</span>, and <span pulumi-lang-nodejs="`http`" pulumi-lang-dotnet="`Http`" pulumi-lang-go="`http`" pulumi-lang-python="`http`" pulumi-lang-yaml="`http`" pulumi-lang-java="`http`">`http`</span>.
  final List<String>? telemetries;

  AppMonitorAppMonitorConfiguration({
    this.allowCookies,
    this.enableXray,
    this.excludedPages,
    this.favoritePages,
    this.guestRoleArn,
    this.identityPoolId,
    this.includedPages,
    this.sessionSampleRate,
    this.telemetries,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowCookiesValue = allowCookies;
    if (allowCookiesValue != null) {
      map['allowCookies'] = allowCookiesValue;
    }
    final enableXrayValue = enableXray;
    if (enableXrayValue != null) {
      map['enableXray'] = enableXrayValue;
    }
    final excludedPagesValue = excludedPages;
    if (excludedPagesValue != null) {
      map['excludedPages'] = excludedPagesValue;
    }
    final favoritePagesValue = favoritePages;
    if (favoritePagesValue != null) {
      map['favoritePages'] = favoritePagesValue;
    }
    final guestRoleArnValue = guestRoleArn;
    if (guestRoleArnValue != null) {
      map['guestRoleArn'] = guestRoleArnValue;
    }
    final identityPoolIdValue = identityPoolId;
    if (identityPoolIdValue != null) {
      map['identityPoolId'] = identityPoolIdValue;
    }
    final includedPagesValue = includedPages;
    if (includedPagesValue != null) {
      map['includedPages'] = includedPagesValue;
    }
    final sessionSampleRateValue = sessionSampleRate;
    if (sessionSampleRateValue != null) {
      map['sessionSampleRate'] = sessionSampleRateValue;
    }
    final telemetriesValue = telemetries;
    if (telemetriesValue != null) {
      map['telemetries'] = telemetriesValue;
    }
    return map;
  }

  factory AppMonitorAppMonitorConfiguration.fromMap(Map<String, dynamic> map) {
    return AppMonitorAppMonitorConfiguration(
      allowCookies:
          map['allowCookies'] == null ? null : map['allowCookies'] as bool,
      enableXray: map['enableXray'] == null ? null : map['enableXray'] as bool,
      excludedPages: map['excludedPages'] == null
          ? null
          : (map['excludedPages'] as List).cast<String>(),
      favoritePages: map['favoritePages'] == null
          ? null
          : (map['favoritePages'] as List).cast<String>(),
      guestRoleArn:
          map['guestRoleArn'] == null ? null : map['guestRoleArn'] as String,
      identityPoolId: map['identityPoolId'] == null
          ? null
          : map['identityPoolId'] as String,
      includedPages: map['includedPages'] == null
          ? null
          : (map['includedPages'] as List).cast<String>(),
      sessionSampleRate: map['sessionSampleRate'] == null
          ? null
          : map['sessionSampleRate'] as double,
      telemetries: map['telemetries'] == null
          ? null
          : (map['telemetries'] as List).cast<String>(),
    );
  }
}
