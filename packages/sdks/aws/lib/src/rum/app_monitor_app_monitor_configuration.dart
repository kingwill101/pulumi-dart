// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AppMonitorAppMonitorConfiguration {
  /// If you set this to `true`, RUM web client sets two cookies, a session cookie and a user cookie. The cookies allow the RUM web client to collect data relating to the number of users an application has and the behavior of the application across a sequence of events. Cookies are stored in the top-level domain of the current page.
  final pulumi.Input<bool>? allowCookies;
  /// If you set this to `true`, RUM enables X-Ray tracing for the user sessions that RUM samples. RUM adds an X-Ray trace header to allowed HTTP requests. It also records an X-Ray segment for allowed HTTP requests.
  final pulumi.Input<bool>? enableXray;
  /// A list of URLs in your website or application to exclude from RUM data collection.
  final pulumi.Input<List<String>>? excludedPages;
  /// A list of pages in the CloudWatch RUM console that are to be displayed with a "favorite" icon.
  final pulumi.Input<List<String>>? favoritePages;
  /// The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
  final pulumi.Input<String>? guestRoleArn;
  /// The ID of the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
  final pulumi.Input<String>? identityPoolId;
  /// If this app monitor is to collect data from only certain pages in your application, this structure lists those pages.
  final pulumi.Input<List<String>>? includedPages;
  /// Specifies the percentage of user sessions to use for RUM data collection. Choosing a higher percentage gives you more data but also incurs more costs. The number you specify is the percentage of user sessions that will be used. Default value is `0.1`.
  final pulumi.Input<double>? sessionSampleRate;
  /// An array that lists the types of telemetry data that this app monitor is to collect. Valid values are `errors`, `performance`, and `http`.
  final pulumi.Input<List<String>>? telemetries;

  /// Creates a new [AppMonitorAppMonitorConfiguration].
  /// [allowCookies] If you set this to `true`, RUM web client sets two cookies, a session cookie and a user cookie. The cookies allow the RUM web client to collect data relating to the number of users an application has and the behavior of the application across a sequence of events. Cookies are stored in the top-level domain of the current page.
  /// [enableXray] If you set this to `true`, RUM enables X-Ray tracing for the user sessions that RUM samples. RUM adds an X-Ray trace header to allowed HTTP requests. It also records an X-Ray segment for allowed HTTP requests.
  /// [excludedPages] A list of URLs in your website or application to exclude from RUM data collection.
  /// [favoritePages] A list of pages in the CloudWatch RUM console that are to be displayed with a "favorite" icon.
  /// [guestRoleArn] The ARN of the guest IAM role that is attached to the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
  /// [identityPoolId] The ID of the Amazon Cognito identity pool that is used to authorize the sending of data to RUM.
  /// [includedPages] If this app monitor is to collect data from only certain pages in your application, this structure lists those pages.
  /// [sessionSampleRate] Specifies the percentage of user sessions to use for RUM data collection. Choosing a higher percentage gives you more data but also incurs more costs. The number you specify is the percentage of user sessions that will be used. Default value is `0.1`.
  /// [telemetries] An array that lists the types of telemetry data that this app monitor is to collect. Valid values are `errors`, `performance`, and `http`.
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
    return <String, dynamic>{
      'allowCookies': ?allowCookies,
      'enableXray': ?enableXray,
      'excludedPages': ?excludedPages,
      'favoritePages': ?favoritePages,
      'guestRoleArn': ?guestRoleArn,
      'identityPoolId': ?identityPoolId,
      'includedPages': ?includedPages,
      'sessionSampleRate': ?sessionSampleRate,
      'telemetries': ?telemetries,
    };
  }

  factory AppMonitorAppMonitorConfiguration.fromMap(Map<String, dynamic> map) {
    return AppMonitorAppMonitorConfiguration(
      allowCookies: map['allowCookies'] == null ? null : (map['allowCookies'] as bool).input(),
      enableXray: map['enableXray'] == null ? null : (map['enableXray'] as bool).input(),
      excludedPages: map['excludedPages'] == null ? null : ((map['excludedPages'] as List).cast<String>()).input(),
      favoritePages: map['favoritePages'] == null ? null : ((map['favoritePages'] as List).cast<String>()).input(),
      guestRoleArn: map['guestRoleArn'] == null ? null : (map['guestRoleArn'] as String).input(),
      identityPoolId: map['identityPoolId'] == null ? null : (map['identityPoolId'] as String).input(),
      includedPages: map['includedPages'] == null ? null : ((map['includedPages'] as List).cast<String>()).input(),
      sessionSampleRate: map['sessionSampleRate'] == null ? null : (map['sessionSampleRate'] as double).input(),
      telemetries: map['telemetries'] == null ? null : ((map['telemetries'] as List).cast<String>()).input(),
    );
  }
}

