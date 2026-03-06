// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_esa_url_observation_url_observation_args_doc}
/// The set of arguments for UrlObservation.
/// {@endtemplate}
/// {@macro pulumi_esa_url_observation_url_observation_args_doc}
class UrlObservationArgs {
  /// SDK integration mode. Value:
  final pulumi.Input<String> sdkType;
  /// The site ID.
  final pulumi.Input<String> siteId;
  /// The URL of the page to monitor.
  final pulumi.Input<String> url;

  /// Creates a new [UrlObservationArgs].
  /// [sdkType] SDK integration mode. Value:
  /// [siteId] The site ID.
  /// [url] The URL of the page to monitor.
  const UrlObservationArgs({
    required this.sdkType,
    required this.siteId,
    required this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sdkType': sdkType,
      'siteId': siteId,
      'url': url,
    };
  }

  factory UrlObservationArgs.fromMap(Map<String, dynamic> map) {
    return UrlObservationArgs(
      sdkType: pulumi.Input.fromValue(map['sdkType'] as String),
      siteId: pulumi.Input.fromValue(map['siteId'] as String),
      url: pulumi.Input.fromValue(map['url'] as String),
    );
  }
}

