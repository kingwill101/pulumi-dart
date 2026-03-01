// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_testbase_get_test_result_console_log_download_urlargs_doc}
/// Arguments for getTestResultConsoleLogDownloadURL.
/// {@endtemplate}
/// {@macro pulumi_testbase_get_test_result_console_log_download_urlargs_doc}
class GetTestResultConsoleLogDownloadURLArgs {
  /// The log file name corresponding to the download URL.
  final pulumi.Input<String> logFileName;
  /// The resource name of the Test Base Package.
  final pulumi.Input<String> packageName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The resource name of the Test Base Account.
  final pulumi.Input<String> testBaseAccountName;
  /// The Test Result Name. It equals to TestResult-{TestResultId} string.
  final pulumi.Input<String> testResultName;

  /// Creates a new [GetTestResultConsoleLogDownloadURLArgs].
  /// [logFileName] The log file name corresponding to the download URL.
  /// [packageName] The resource name of the Test Base Package.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [testBaseAccountName] The resource name of the Test Base Account.
  /// [testResultName] The Test Result Name. It equals to TestResult-{TestResultId} string.
  GetTestResultConsoleLogDownloadURLArgs({
    required String logFileName,
    required String packageName,
    required String resourceGroupName,
    required String testBaseAccountName,
    required String testResultName,
  }) :
      logFileName = pulumi.Input.asInput<String>(logFileName),
      packageName = pulumi.Input.asInput<String>(packageName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      testBaseAccountName = pulumi.Input.asInput<String>(testBaseAccountName),
      testResultName = pulumi.Input.asInput<String>(testResultName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logFileName': logFileName,
      'packageName': packageName,
      'resourceGroupName': resourceGroupName,
      'testBaseAccountName': testBaseAccountName,
      'testResultName': testResultName,
    };
  }

  factory GetTestResultConsoleLogDownloadURLArgs.fromMap(Map<String, dynamic> map) {
    return GetTestResultConsoleLogDownloadURLArgs(
      logFileName: map['logFileName'] as String,
      packageName: map['packageName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      testBaseAccountName: map['testBaseAccountName'] as String,
      testResultName: map['testResultName'] as String,
    );
  }
}

