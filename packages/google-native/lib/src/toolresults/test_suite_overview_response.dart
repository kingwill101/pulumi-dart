// ignore_for_file: unused_element, unnecessary_cast

import 'duration_response.dart';
import 'file_reference_response.dart';

/// A summary of a test suite result either parsed from XML or uploaded directly by a user. Note: the API related comments are for StepService only. This message is also being used in ExecutionService in a read only mode for the corresponding step.
class TestSuiteOverviewResponse {
  /// Elapsed time of test suite.
  final DurationResponse elapsedTime;

  /// Number of test cases in error, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final int errorCount;

  /// Number of failed test cases, typically set by the service by parsing the xml_source. May also be set by the user. - In create/response: always set - In update request: never
  final int failureCount;

  /// Number of flaky test cases, set by the service by rolling up flaky test attempts. Present only for rollup test suite overview at environment level. A step cannot have flaky test cases.
  final int flakyCount;

  /// The name of the test suite. - In create/response: always set - In update request: never
  final String name;

  /// Number of test cases not run, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final int skippedCount;

  /// Number of test cases, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final int totalCount;

  /// If this test suite was parsed from XML, this is the URI where the original XML file is stored. Note: Multiple test suites can share the same xml_source Returns INVALID_ARGUMENT if the uri format is not supported. - In create/response: optional - In update request: never
  final FileReferenceResponse xmlSource;

  /// Creates a new [TestSuiteOverviewResponse].
  /// [elapsedTime] Elapsed time of test suite.
  /// [errorCount] Number of test cases in error, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [failureCount] Number of failed test cases, typically set by the service by parsing the xml_source. May also be set by the user. - In create/response: always set - In update request: never
  /// [flakyCount] Number of flaky test cases, set by the service by rolling up flaky test attempts. Present only for rollup test suite overview at environment level. A step cannot have flaky test cases.
  /// [name] The name of the test suite. - In create/response: always set - In update request: never
  /// [skippedCount] Number of test cases not run, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [totalCount] Number of test cases, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [xmlSource] If this test suite was parsed from XML, this is the URI where the original XML file is stored. Note: Multiple test suites can share the same xml_source Returns INVALID_ARGUMENT if the uri format is not supported. - In create/response: optional - In update request: never
  TestSuiteOverviewResponse({
    required this.elapsedTime,
    required this.errorCount,
    required this.failureCount,
    required this.flakyCount,
    required this.name,
    required this.skippedCount,
    required this.totalCount,
    required this.xmlSource,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'elapsedTime': elapsedTime.toMap(),
      'errorCount': errorCount,
      'failureCount': failureCount,
      'flakyCount': flakyCount,
      'name': name,
      'skippedCount': skippedCount,
      'totalCount': totalCount,
      'xmlSource': xmlSource.toMap(),
    };
  }

  factory TestSuiteOverviewResponse.fromMap(Map<String, dynamic> map) {
    return TestSuiteOverviewResponse(
      elapsedTime: DurationResponse.fromMap(
        (map['elapsedTime'] as Map).cast<String, dynamic>(),
      ),
      errorCount: map['errorCount'] as int,
      failureCount: map['failureCount'] as int,
      flakyCount: map['flakyCount'] as int,
      name: map['name'] as String,
      skippedCount: map['skippedCount'] as int,
      totalCount: map['totalCount'] as int,
      xmlSource: FileReferenceResponse.fromMap(
        (map['xmlSource'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
