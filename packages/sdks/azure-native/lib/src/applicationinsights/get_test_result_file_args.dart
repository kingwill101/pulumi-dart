// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_applicationinsights_get_test_result_file_args_doc}
/// Arguments for getTestResultFile.
/// {@endtemplate}
/// {@macro pulumi_applicationinsights_get_test_result_file_args_doc}
class GetTestResultFileArgs {
  /// The continuation token.
  final pulumi.Input<String>? continuationToken;

  /// The format to use when returning the webtest result.
  final pulumi.Input<String> downloadAs;

  /// The location ID where the webtest was physically run.
  final pulumi.Input<String> geoLocationId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The success state criteria for the webtest result.
  final pulumi.Input<bool>? testSuccessfulCriteria;

  /// The posix (epoch) time stamp for the webtest result.
  final pulumi.Input<int> timeStamp;

  /// The name of the Application Insights webtest resource.
  final pulumi.Input<String> webTestName;

  /// Creates a new [GetTestResultFileArgs].
  /// [continuationToken] The continuation token.
  /// [downloadAs] The format to use when returning the webtest result.
  /// [geoLocationId] The location ID where the webtest was physically run.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testSuccessfulCriteria] The success state criteria for the webtest result.
  /// [timeStamp] The posix (epoch) time stamp for the webtest result.
  /// [webTestName] The name of the Application Insights webtest resource.
  GetTestResultFileArgs({
    this.continuationToken,
    required this.downloadAs,
    required this.geoLocationId,
    required this.resourceGroupName,
    this.testSuccessfulCriteria,
    required this.timeStamp,
    required this.webTestName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'continuationToken': ?continuationToken,
      'downloadAs': downloadAs,
      'geoLocationId': geoLocationId,
      'resourceGroupName': resourceGroupName,
      'testSuccessfulCriteria': ?testSuccessfulCriteria,
      'timeStamp': timeStamp,
      'webTestName': webTestName,
    };
  }

  factory GetTestResultFileArgs.fromMap(Map<String, dynamic> map) {
    return GetTestResultFileArgs(
      continuationToken: (() {
        final guardedValue = map['continuationToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      downloadAs: pulumi.Input.fromValue(map['downloadAs'] as String),
      geoLocationId: pulumi.Input.fromValue(map['geoLocationId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      testSuccessfulCriteria: (() {
        final guardedValue = map['testSuccessfulCriteria'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      timeStamp: pulumi.Input.fromValue(map['timeStamp'] as int),
      webTestName: pulumi.Input.fromValue(map['webTestName'] as String),
    );
  }
}
