// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_integrations_v1alpha_integration_parameter.dart';
import 'google_cloud_integrations_v1alpha_test_task_config.dart';
import 'test_case_database_persistence_policy.dart';

/// The set of arguments for TestCase.
class TestCaseArgs3 {
  /// Auto-generated.
  final Input<String>? createTime;

  /// Optional. The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final Input<String>? creatorEmail;

  /// Optional. Various policies for how to persist the test execution info including execution info, execution export info, execution metadata index and execution param index..
  final Input<TestCaseDatabasePersistencePolicy>? databasePersistencePolicy;

  /// Optional. Description of the test case.
  final Input<String>? description;

  /// The display name of test case.
  final Input<String> displayName;
  final Input<String> integrationId;

  /// The last modifer's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final Input<String>? lastModifierEmail;
  final Input<String>? location;

  /// Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  final Input<String>? lockHolderEmail;
  final Input<String>? project;

  /// Required. Required
  final Input<String> testCaseId;

  /// Optional. Parameters that are expected to be passed to the test case when the test case is triggered. This gives the user the ability to provide default values. This should include all the output variables of the trigger as input variables.
  final Input<List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>?
      testInputParameters;

  /// Optional. However, the test case doesn't mock or assert anything without test_task_configs.
  final Input<List<GoogleCloudIntegrationsV1alphaTestTaskConfig>>?
      testTaskConfigs;

  /// This defines the trigger ID in workflow which is considered to be executed as starting point of the test case
  final Input<String> triggerId;

  /// Auto-generated.
  final Input<String>? updateTime;
  final Input<String> versionId;

  /// ID of the workflow with which this test case is associated
  final Input<String>? workflowId;

  TestCaseArgs3({
    this.createTime,
    this.creatorEmail,
    this.databasePersistencePolicy,
    this.description,
    required this.displayName,
    required this.integrationId,
    this.lastModifierEmail,
    this.location,
    this.lockHolderEmail,
    this.project,
    required this.testCaseId,
    this.testInputParameters,
    this.testTaskConfigs,
    required this.triggerId,
    this.updateTime,
    required this.versionId,
    this.workflowId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final createTimeValue = createTime;
    if (createTimeValue != null) {
      map['createTime'] = createTimeValue;
    }
    final creatorEmailValue = creatorEmail;
    if (creatorEmailValue != null) {
      map['creatorEmail'] = creatorEmailValue;
    }
    final databasePersistencePolicyValue = databasePersistencePolicy;
    if (databasePersistencePolicyValue != null) {
      map['databasePersistencePolicy'] = Input.mapOptionalInputValue<
          TestCaseDatabasePersistencePolicy,
          String>(databasePersistencePolicyValue, (value) => value.value);
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['displayName'] = displayName;
    map['integrationId'] = integrationId;
    final lastModifierEmailValue = lastModifierEmail;
    if (lastModifierEmailValue != null) {
      map['lastModifierEmail'] = lastModifierEmailValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final lockHolderEmailValue = lockHolderEmail;
    if (lockHolderEmailValue != null) {
      map['lockHolderEmail'] = lockHolderEmailValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['testCaseId'] = testCaseId;
    final testInputParametersValue = testInputParameters;
    if (testInputParametersValue != null) {
      map['testInputParameters'] = Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaIntegrationParameter>,
              List<Map<String, dynamic>>>(
          testInputParametersValue,
          (value) => Input.encodeList<
              GoogleCloudIntegrationsV1alphaIntegrationParameter,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final testTaskConfigsValue = testTaskConfigs;
    if (testTaskConfigsValue != null) {
      map['testTaskConfigs'] = Input.mapOptionalInputValue<
              List<GoogleCloudIntegrationsV1alphaTestTaskConfig>,
              List<Map<String, dynamic>>>(
          testTaskConfigsValue,
          (value) => Input.encodeList<
              GoogleCloudIntegrationsV1alphaTestTaskConfig,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    map['triggerId'] = triggerId;
    final updateTimeValue = updateTime;
    if (updateTimeValue != null) {
      map['updateTime'] = updateTimeValue;
    }
    map['versionId'] = versionId;
    final workflowIdValue = workflowId;
    if (workflowIdValue != null) {
      map['workflowId'] = workflowIdValue;
    }
    return map;
  }

  factory TestCaseArgs3.fromMap(Map<String, dynamic> map) {
    return TestCaseArgs3(
      createTime: Input.asOptionalInput<String>(map['createTime']),
      creatorEmail: Input.asOptionalInput<String>(map['creatorEmail']),
      databasePersistencePolicy:
          Input.asOptionalInput<TestCaseDatabasePersistencePolicy>(
              map['databasePersistencePolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asInput<String>(map['displayName']),
      integrationId: Input.asInput<String>(map['integrationId']),
      lastModifierEmail:
          Input.asOptionalInput<String>(map['lastModifierEmail']),
      location: Input.asOptionalInput<String>(map['location']),
      lockHolderEmail: Input.asOptionalInput<String>(map['lockHolderEmail']),
      project: Input.asOptionalInput<String>(map['project']),
      testCaseId: Input.asInput<String>(map['testCaseId']),
      testInputParameters: Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaIntegrationParameter>>(
          map['testInputParameters']),
      testTaskConfigs: Input.asOptionalInput<
              List<GoogleCloudIntegrationsV1alphaTestTaskConfig>>(
          map['testTaskConfigs']),
      triggerId: Input.asInput<String>(map['triggerId']),
      updateTime: Input.asOptionalInput<String>(map['updateTime']),
      versionId: Input.asInput<String>(map['versionId']),
      workflowId: Input.asOptionalInput<String>(map['workflowId']),
    );
  }
}
