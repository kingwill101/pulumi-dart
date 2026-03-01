// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'command_response.dart';

/// The definition of a Test.
class TestResponse {
  /// The commands used in the test.
  final List<CommandResponse> commands;
  /// Indicates if this test is active.It doesn't schedule test for not active Test.
  final bool? isActive;
  /// The type of the test.
  final String testType;
  /// Resource identifier of the validation test result.
  final String validationResultId;
  /// The status of the validation run of the package.
  final String validationRunStatus;

  /// Creates a new [TestResponse].
  /// [commands] The commands used in the test.
  /// [isActive] Indicates if this test is active.It doesn't schedule test for not active Test.
  /// [testType] The type of the test.
  /// [validationResultId] Resource identifier of the validation test result.
  /// [validationRunStatus] The status of the validation run of the package.
  TestResponse({
    required this.commands,
    this.isActive,
    required this.testType,
    required this.validationResultId,
    required this.validationRunStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'commands': pulumi.Input.encodeList<CommandResponse, Map<String, dynamic>>(commands, (value) => value.toMap()),
      'isActive': ?isActive,
      'testType': testType,
      'validationResultId': validationResultId,
      'validationRunStatus': validationRunStatus,
    };
  }

  factory TestResponse.fromMap(Map<String, dynamic> map) {
    return TestResponse(
      commands: pulumi.Input.decodeList<CommandResponse>(map['commands'], (value) => CommandResponse.fromMap((value as Map).cast<String, dynamic>())),
      isActive: map['isActive'] == null ? null : map['isActive'] as bool,
      testType: map['testType'] as String,
      validationResultId: map['validationResultId'] as String,
      validationRunStatus: map['validationRunStatus'] as String,
    );
  }
}

