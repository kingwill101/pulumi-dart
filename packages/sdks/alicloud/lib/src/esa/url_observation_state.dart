// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering UrlObservation resources.
class UrlObservationState {
  /// Config Id
  final pulumi.Input<int>? configId;
  /// SDK integration mode. Value:
  final pulumi.Input<String>? sdkType;
  /// The site ID.
  final pulumi.Input<String>? siteId;
  /// The URL of the page to monitor.
  final pulumi.Input<String>? url;

  /// Creates a new [UrlObservationState].
  /// [configId] Config Id
  /// [sdkType] SDK integration mode. Value:
  /// [siteId] The site ID.
  /// [url] The URL of the page to monitor.
  UrlObservationState({
    this.configId,
    this.sdkType,
    this.siteId,
    this.url,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configId': ?configId,
      'sdkType': ?sdkType,
      'siteId': ?siteId,
      'url': ?url,
    };
  }

  factory UrlObservationState.fromMap(Map<String, dynamic> map) {
    return UrlObservationState(
      configId: map['configId'] == null ? null : (map['configId']! as int).input(),
      sdkType: map['sdkType'] == null ? null : (map['sdkType']! as String).input(),
      siteId: map['siteId'] == null ? null : (map['siteId']! as String).input(),
      url: map['url'] == null ? null : (map['url']! as String).input(),
    );
  }
}

