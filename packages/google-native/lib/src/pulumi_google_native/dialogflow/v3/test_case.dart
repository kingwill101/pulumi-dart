import 'package:pulumi/pulumi.dart';
import 'google_cloud_dialogflow_cx_v3_conversation_turn_response.dart';
import 'google_cloud_dialogflow_cx_v3_test_case_result_response.dart';
import 'google_cloud_dialogflow_cx_v3_test_config_response.dart';
import 'test_case_args.dart';

/// Creates a test case for the given agent.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class TestCase extends CustomResource {
  late final Output<String> agentId;

  /// When the test was created.
  late final Output<String> creationTime;

  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  late final Output<String> displayName;

  /// The latest test result.
  late final Output<GoogleCloudDialogflowCxV3TestCaseResultResponse>
      lastTestResult;
  late final Output<String> location;

  /// The unique identifier of the test case. TestCases.CreateTestCase will populate the name automatically. Otherwise use format: `projects//locations//agents/ /testCases/`.
  late final Output<String> name;

  /// Additional freeform notes about the test case. Limit of 400 characters.
  late final Output<String> notes;
  late final Output<String> project;

  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes. Each tag should start with "#" and has a limit of 30 characters.
  late final Output<List<String>> tags;

  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  late final Output<List<GoogleCloudDialogflowCxV3ConversationTurnResponse>>
      testCaseConversationTurns;

  /// Config for the test case.
  late final Output<GoogleCloudDialogflowCxV3TestConfigResponse> testConfig;

  TestCase(
    String name, {
    TestCaseArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:dialogflow/v3:TestCase',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.agentId = Output.createUnknown<String>();
    this.creationTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.lastTestResult =
        Output.createUnknown<GoogleCloudDialogflowCxV3TestCaseResultResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.notes = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.tags = Output.createUnknown<List<String>>();
    this.testCaseConversationTurns = Output.createUnknown<
        List<GoogleCloudDialogflowCxV3ConversationTurnResponse>>();
    this.testConfig =
        Output.createUnknown<GoogleCloudDialogflowCxV3TestConfigResponse>();
  }
}
