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
  UrlObservationArgs({
    required pulumi.Output<String> sdkType,
    required pulumi.Output<String> siteId,
    required pulumi.Output<String> url,
  }) :
      sdkType = pulumi.Input.asInput<String>(sdkType),
      siteId = pulumi.Input.asInput<String>(siteId),
      url = pulumi.Input.asInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sdkType': sdkType,
      'siteId': siteId,
      'url': url,
    };
  }

  factory UrlObservationArgs.fromMap(Map<String, dynamic> map) {
    return UrlObservationArgs(
      sdkType: pulumi.Output.create<String>(map['sdkType'] as String),
      siteId: pulumi.Output.create<String>(map['siteId'] as String),
      url: pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

