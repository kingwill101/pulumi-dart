import 'package:pulumi/pulumi.dart';
import '../agentcore_browser_network_configuration/agentcore_browser_network_configuration.dart';
import '../agentcore_browser_recording/agentcore_browser_recording.dart';
import '../agentcore_browser_timeouts/agentcore_browser_timeouts.dart';
import 'agentcore_browser_args.dart';

/// Manages an AWS Bedrock AgentCore Browser. Browser provides AI agents with web browsing capabilities, allowing them to navigate websites, extract information, and interact with web content in a controlled environment.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### Browser with VPC Configuration
///
///
///
/// ### Browser with Execution Role and Recording
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Bedrock AgentCore Browser using the browser ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/agentcoreBrowser:AgentcoreBrowser example BROWSER1234567890
/// ```
class AgentcoreBrowser extends CustomResource {
  /// ARN of the Browser.
  late final Output<String> browserArn;

  /// Unique identifier of the Browser.
  late final Output<String> browserId;

  /// Description of the browser.
  late final Output<String?> description;

  /// ARN of the IAM role that the browser assumes for execution.
  late final Output<String?> executionRoleArn;

  /// Name of the browser.
  late final Output<String> name;

  /// Network configuration for the browser. See `network_configuration` below.
  ///
  /// The following arguments are optional:
  late final Output<AgentcoreBrowserNetworkConfiguration> networkConfiguration;

  /// Recording configuration for browser sessions. See `recording` below.
  late final Output<AgentcoreBrowserRecording?> recording;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<AgentcoreBrowserTimeouts?> timeouts;

  AgentcoreBrowser(
    String name, {
    AgentcoreBrowserArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/agentcoreBrowser:AgentcoreBrowser',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.browserArn = registerOutput<String>('browserArn');
    this.browserId = registerOutput<String>('browserId');
    this.description = registerOutput<String?>('description');
    this.executionRoleArn = registerOutput<String?>('executionRoleArn');
    this.name = registerOutput<String>('name');
    this.networkConfiguration =
        registerOutput<AgentcoreBrowserNetworkConfiguration>(
            'networkConfiguration');
    this.recording = registerOutput<AgentcoreBrowserRecording?>('recording');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<AgentcoreBrowserTimeouts?>('timeouts');
  }
}
