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
    pulumi.Output<int>? configId,
    pulumi.Output<String>? sdkType,
    pulumi.Output<String>? siteId,
    pulumi.Output<String>? url,
  }) :
      configId = pulumi.Input.asOptionalInput<int>(configId),
      sdkType = pulumi.Input.asOptionalInput<String>(sdkType),
      siteId = pulumi.Input.asOptionalInput<String>(siteId),
      url = pulumi.Input.asOptionalInput<String>(url);

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
      configId: map['configId'] == null ? null : pulumi.Output.create<int>(map['configId'] as int),
      sdkType: map['sdkType'] == null ? null : pulumi.Output.create<String>(map['sdkType'] as String),
      siteId: map['siteId'] == null ? null : pulumi.Output.create<String>(map['siteId'] as String),
      url: map['url'] == null ? null : pulumi.Output.create<String>(map['url'] as String),
    );
  }
}

