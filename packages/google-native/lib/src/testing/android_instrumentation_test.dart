// ignore_for_file: unused_element, unnecessary_cast

import 'android_instrumentation_test_orchestrator_option.dart';
import 'app_bundle.dart';
import 'file_reference.dart';
import 'sharding_option.dart';

/// A test of an Android application that can control an Android component independently of its normal lifecycle. Android instrumentation tests run an application APK and test APK inside the same process on a virtual or physical AndroidDevice. They also specify a test runner class, such as com.google.GoogleTestRunner, which can vary on the specific instrumentation framework chosen. See for more information on types of Android tests.
class AndroidInstrumentationTest {
  /// The APK for the application under test.
  final FileReference? appApk;

  /// A multi-apk app bundle for the application under test.
  final AppBundle? appBundle;

  /// The java package for the application under test. The default value is determined by examining the application's manifest.
  final String? appPackageId;

  /// The option of whether running each test within its own invocation of instrumentation with Android Test Orchestrator or not. ** Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher! ** Orchestrator offers the following benefits: - No shared state - Crashes are isolated - Logs are scoped per test See for more information about Android Test Orchestrator. If not set, the test will be run without the orchestrator.
  final AndroidInstrumentationTestOrchestratorOption? orchestratorOption;

  /// The option to run tests in multiple shards in parallel.
  final ShardingOption? shardingOption;

  /// The APK containing the test code to be executed.
  final FileReference testApk;

  /// The java package for the test to be executed. The default value is determined by examining the application's manifest.
  final String? testPackageId;

  /// The InstrumentationTestRunner class. The default value is determined by examining the application's manifest.
  final String? testRunnerClass;

  /// Each target must be fully qualified with the package name or class name, in one of these formats: - "package package_name" - "class package_name.class_name" - "class package_name.class_name#method_name" If empty, all targets in the module will be run.
  final List<String>? testTargets;

  /// Creates a new [AndroidInstrumentationTest].
  /// [appApk] The APK for the application under test.
  /// [appBundle] A multi-apk app bundle for the application under test.
  /// [appPackageId] The java package for the application under test. The default value is determined by examining the application's manifest.
  /// [orchestratorOption] The option of whether running each test within its own invocation of instrumentation with Android Test Orchestrator or not. ** Orchestrator is only compatible with AndroidJUnitRunner version 1.1 or higher! ** Orchestrator offers the following benefits: - No shared state - Crashes are isolated - Logs are scoped per test See for more information about Android Test Orchestrator. If not set, the test will be run without the orchestrator.
  /// [shardingOption] The option to run tests in multiple shards in parallel.
  /// [testApk] The APK containing the test code to be executed.
  /// [testPackageId] The java package for the test to be executed. The default value is determined by examining the application's manifest.
  /// [testRunnerClass] The InstrumentationTestRunner class. The default value is determined by examining the application's manifest.
  /// [testTargets] Each target must be fully qualified with the package name or class name, in one of these formats: - "package package_name" - "class package_name.class_name" - "class package_name.class_name#method_name" If empty, all targets in the module will be run.
  AndroidInstrumentationTest({
    this.appApk,
    this.appBundle,
    this.appPackageId,
    this.orchestratorOption,
    this.shardingOption,
    required this.testApk,
    this.testPackageId,
    this.testRunnerClass,
    this.testTargets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appApk': ?appApk == null ? null : appApk!.toMap(),
      'appBundle': ?appBundle == null ? null : appBundle!.toMap(),
      'appPackageId': ?appPackageId,
      'orchestratorOption': ?orchestratorOption == null
          ? null
          : orchestratorOption!.value,
      'shardingOption': ?shardingOption == null
          ? null
          : shardingOption!.toMap(),
      'testApk': testApk.toMap(),
      'testPackageId': ?testPackageId,
      'testRunnerClass': ?testRunnerClass,
      'testTargets': ?testTargets,
    };
  }

  factory AndroidInstrumentationTest.fromMap(Map<String, dynamic> map) {
    return AndroidInstrumentationTest(
      appApk: map['appApk'] == null
          ? null
          : FileReference.fromMap(
              (map['appApk'] as Map).cast<String, dynamic>(),
            ),
      appBundle: map['appBundle'] == null
          ? null
          : AppBundle.fromMap(
              (map['appBundle'] as Map).cast<String, dynamic>(),
            ),
      appPackageId: map['appPackageId'] == null
          ? null
          : map['appPackageId'] as String,
      orchestratorOption: map['orchestratorOption'] == null
          ? null
          : AndroidInstrumentationTestOrchestratorOption.fromValue(
              map['orchestratorOption'] as String,
            ),
      shardingOption: map['shardingOption'] == null
          ? null
          : ShardingOption.fromMap(
              (map['shardingOption'] as Map).cast<String, dynamic>(),
            ),
      testApk: FileReference.fromMap(
        (map['testApk'] as Map).cast<String, dynamic>(),
      ),
      testPackageId: map['testPackageId'] == null
          ? null
          : map['testPackageId'] as String,
      testRunnerClass: map['testRunnerClass'] == null
          ? null
          : map['testRunnerClass'] as String,
      testTargets: map['testTargets'] == null
          ? null
          : (map['testTargets'] as List).cast<String>(),
    );
  }
}
