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
    String? continuationToken,
    required String downloadAs,
    required String geoLocationId,
    required String resourceGroupName,
    bool? testSuccessfulCriteria,
    required int timeStamp,
    required String webTestName,
  }) :
      continuationToken = pulumi.Input.asOptionalInput<String>(continuationToken),
      downloadAs = pulumi.Input.asInput<String>(downloadAs),
      geoLocationId = pulumi.Input.asInput<String>(geoLocationId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testSuccessfulCriteria = pulumi.Input.asOptionalInput<bool>(testSuccessfulCriteria),
      timeStamp = pulumi.Input.asInput<int>(timeStamp),
      webTestName = pulumi.Input.asInput<String>(webTestName);

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
      continuationToken: map['continuationToken'] == null ? null : map['continuationToken'] as String,
      downloadAs: map['downloadAs'] as String,
      geoLocationId: map['geoLocationId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      testSuccessfulCriteria: map['testSuccessfulCriteria'] == null ? null : map['testSuccessfulCriteria'] as bool,
      timeStamp: map['timeStamp'] as int,
      webTestName: map['webTestName'] as String,
    );
  }
}

