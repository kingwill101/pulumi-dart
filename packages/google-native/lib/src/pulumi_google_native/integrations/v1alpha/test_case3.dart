import 'package:pulumi/pulumi.dart';
import 'google_cloud_integrations_v1alpha_integration_parameter_response.dart';
import 'google_cloud_integrations_v1alpha_test_task_config_response.dart';
import 'test_case_args3.dart';

/// Creates a new test case
/// Auto-naming is currently not supported for this resource.
class TestCase3 extends CustomResource {
  /// Auto-generated.
  late final Output<String> createTime;

  /// Optional. The creator's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final Output<String> creatorEmail;

  /// Optional. Various policies for how to persist the test execution info including execution info, execution export info, execution metadata index and execution param index..
  late final Output<String> databasePersistencePolicy;

  /// Optional. Description of the test case.
  late final Output<String> description;

  /// The display name of test case.
  late final Output<String> displayName;
  late final Output<String> integrationId;

  /// The last modifer's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final Output<String> lastModifierEmail;
  late final Output<String> location;

  /// Optional. The edit lock holder's email address. Generated based on the End User Credentials/LOAS role of the user making the call.
  late final Output<String> lockHolderEmail;

  /// Auto-generated primary key.
  late final Output<String> name;
  late final Output<String> project;

  /// Required. Required
  late final Output<String> testCaseId;

  /// Optional. Parameters that are expected to be passed to the test case when the test case is triggered. This gives the user the ability to provide default values. This should include all the output variables of the trigger as input variables.
  late final Output<
          List<GoogleCloudIntegrationsV1alphaIntegrationParameterResponse>>
      testInputParameters;

  /// Optional. However, the test case doesn't mock or assert anything without test_task_configs.
  late final Output<List<GoogleCloudIntegrationsV1alphaTestTaskConfigResponse>>
      testTaskConfigs;

  /// This defines the trigger ID in workflow which is considered to be executed as starting point of the test case
  late final Output<String> triggerId;

  /// Auto-generated.
  late final Output<String> updateTime;
  late final Output<String> versionId;

  /// ID of the workflow with which this test case is associated
  late final Output<String> workflowId;

  TestCase3(
    String name, {
    TestCaseArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:integrations/v1alpha:TestCase',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.creatorEmail = Output.createUnknown<String>();
    this.databasePersistencePolicy = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.integrationId = Output.createUnknown<String>();
    this.lastModifierEmail = Output.createUnknown<String>();
    this.location = Output.createUnknown<String>();
    this.lockHolderEmail = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.testCaseId = Output.createUnknown<String>();
    this.testInputParameters = Output.createUnknown<
        List<GoogleCloudIntegrationsV1alphaIntegrationParameterResponse>>();
    this.testTaskConfigs = Output.createUnknown<
        List<GoogleCloudIntegrationsV1alphaTestTaskConfigResponse>>();
    this.triggerId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.versionId = Output.createUnknown<String>();
    this.workflowId = Output.createUnknown<String>();
  }
}
