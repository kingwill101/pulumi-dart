import 'package:pulumi/pulumi.dart' as pulumi;
import '../cx_test_case_last_test_result/cx_test_case_last_test_result.dart';
import '../cx_test_case_test_case_conversation_turn/cx_test_case_test_case_conversation_turn.dart';
import '../cx_test_case_test_config/cx_test_case_test_config.dart';
import 'cx_test_case_args.dart';

/// You can use the built-in test feature to uncover bugs and prevent regressions. A test execution verifies that agent responses have not changed for end-user inputs defined in the test case.
///
///
/// To get more information about TestCase, see:
///
/// * [API documentation](https://cloud.google.com/dialogflow/cx/docs/reference/rest/v3/projects.locations.agents.testCases)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/dialogflow/cx/docs)
///
/// ## Example Usage
///
/// ### Dialogflowcx Test Case Full
///
///
///
///
/// ## Import
///
/// TestCase can be imported using any of these accepted formats:
///
/// * `{{parent}}/testCases/{{name}}`
///
/// When using the `pulumi import` command, TestCase can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:diagflow/cxTestCase:CxTestCase default {{parent}}/testCases/{{name}}
/// ```
class CxTestCase extends pulumi.CustomResource {
  /// When the test was created. A timestamp in RFC3339 text format.
  late final pulumi.Output<String> creationTime;

  /// The human-readable name of the test case, unique within the agent. Limit of 200 characters.
  late final pulumi.Output<String> displayName;

  /// The latest test result.
  /// Structure is documented below.
  late final pulumi.Output<List<CxTestCaseLastTestResult>> lastTestResults;

  /// The unique identifier of the page.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>/flows/<Flow ID>/pages/<Page ID>.
  late final pulumi.Output<String> name;

  /// Additional freeform notes about the test case. Limit of 400 characters.
  late final pulumi.Output<String?> notes;

  /// The agent to create the test case for.
  /// Format: projects/<Project ID>/locations/<Location ID>/agents/<Agent ID>.
  late final pulumi.Output<String?> parent;

  /// Tags are short descriptions that users may apply to test cases for organizational and filtering purposes.
  /// Each tag should start with "#" and has a limit of 30 characters
  late final pulumi.Output<List<String>?> tags;

  /// The conversation turns uttered when the test case was created, in chronological order. These include the canonical set of agent utterances that should occur when the agent is working properly.
  /// Structure is documented below.
  late final pulumi.Output<List<CxTestCaseTestCaseConversationTurn>?>
      testCaseConversationTurns;

  /// Config for the test case.
  /// Structure is documented below.
  late final pulumi.Output<CxTestCaseTestConfig?> testConfig;

  CxTestCase(
    String name, {
    CxTestCaseArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:diagflow/cxTestCase:CxTestCase',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.creationTime = registerOutput<String>('creationTime');
    this.displayName = registerOutput<String>('displayName');
    this.lastTestResults =
        registerOutput<List<CxTestCaseLastTestResult>>('lastTestResults');
    this.name = registerOutput<String>('name');
    this.notes = registerOutput<String?>('notes');
    this.parent = registerOutput<String?>('parent');
    this.tags = registerOutput<List<String>?>('tags');
    this.testCaseConversationTurns =
        registerOutput<List<CxTestCaseTestCaseConversationTurn>?>(
            'testCaseConversationTurns');
    this.testConfig = registerOutput<CxTestCaseTestConfig?>('testConfig');
  }
}
