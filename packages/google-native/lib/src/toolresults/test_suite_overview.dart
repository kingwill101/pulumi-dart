// ignore_for_file: unused_element, unnecessary_cast

import 'duration.dart';
import 'file_reference.dart';

/// A summary of a test suite result either parsed from XML or uploaded directly by a user. Note: the API related comments are for StepService only. This message is also being used in ExecutionService in a read only mode for the corresponding step.
class TestSuiteOverview {
  /// Elapsed time of test suite.
  final Duration? elapsedTime;

  /// Number of test cases in error, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final int? errorCount;

  /// Number of failed test cases, typically set by the service by parsing the xml_source. May also be set by the user. - In create/response: always set - In update request: never
  final int? failureCount;

  /// Number of flaky test cases, set by the service by rolling up flaky test attempts. Present only for rollup test suite overview at environment level. A step cannot have flaky test cases.
  final int? flakyCount;

  /// The name of the test suite. - In create/response: always set - In update request: never
  final String? name;

  /// Number of test cases not run, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final int? skippedCount;

  /// Number of test cases, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  final int? totalCount;

  /// If this test suite was parsed from XML, this is the URI where the original XML file is stored. Note: Multiple test suites can share the same xml_source Returns INVALID_ARGUMENT if the uri format is not supported. - In create/response: optional - In update request: never
  final FileReference? xmlSource;

  /// Creates a new [TestSuiteOverview].
  /// [elapsedTime] Elapsed time of test suite.
  /// [errorCount] Number of test cases in error, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [failureCount] Number of failed test cases, typically set by the service by parsing the xml_source. May also be set by the user. - In create/response: always set - In update request: never
  /// [flakyCount] Number of flaky test cases, set by the service by rolling up flaky test attempts. Present only for rollup test suite overview at environment level. A step cannot have flaky test cases.
  /// [name] The name of the test suite. - In create/response: always set - In update request: never
  /// [skippedCount] Number of test cases not run, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [totalCount] Number of test cases, typically set by the service by parsing the xml_source. - In create/response: always set - In update request: never
  /// [xmlSource] If this test suite was parsed from XML, this is the URI where the original XML file is stored. Note: Multiple test suites can share the same xml_source Returns INVALID_ARGUMENT if the uri format is not supported. - In create/response: optional - In update request: never
  TestSuiteOverview({
    this.elapsedTime,
    this.errorCount,
    this.failureCount,
    this.flakyCount,
    this.name,
    this.skippedCount,
    this.totalCount,
    this.xmlSource,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final elapsedTimeValue = elapsedTime;
    if (elapsedTimeValue != null) {
      map['elapsedTime'] = elapsedTimeValue.toMap();
    }
    final errorCountValue = errorCount;
    if (errorCountValue != null) {
      map['errorCount'] = errorCountValue;
    }
    final failureCountValue = failureCount;
    if (failureCountValue != null) {
      map['failureCount'] = failureCountValue;
    }
    final flakyCountValue = flakyCount;
    if (flakyCountValue != null) {
      map['flakyCount'] = flakyCountValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final skippedCountValue = skippedCount;
    if (skippedCountValue != null) {
      map['skippedCount'] = skippedCountValue;
    }
    final totalCountValue = totalCount;
    if (totalCountValue != null) {
      map['totalCount'] = totalCountValue;
    }
    final xmlSourceValue = xmlSource;
    if (xmlSourceValue != null) {
      map['xmlSource'] = xmlSourceValue.toMap();
    }
    return map;
  }

  factory TestSuiteOverview.fromMap(Map<String, dynamic> map) {
    return TestSuiteOverview(
      elapsedTime: map['elapsedTime'] == null
          ? null
          : Duration.fromMap(
              (map['elapsedTime'] as Map).cast<String, dynamic>()),
      errorCount: map['errorCount'] == null ? null : map['errorCount'] as int,
      failureCount:
          map['failureCount'] == null ? null : map['failureCount'] as int,
      flakyCount: map['flakyCount'] == null ? null : map['flakyCount'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      skippedCount:
          map['skippedCount'] == null ? null : map['skippedCount'] as int,
      totalCount: map['totalCount'] == null ? null : map['totalCount'] as int,
      xmlSource: map['xmlSource'] == null
          ? null
          : FileReference.fromMap(
              (map['xmlSource'] as Map).cast<String, dynamic>()),
    );
  }
}
