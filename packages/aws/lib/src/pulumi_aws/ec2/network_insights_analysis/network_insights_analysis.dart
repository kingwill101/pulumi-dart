import 'package:pulumi/pulumi.dart';
import '../network_insights_analysis_alternate_path_hint/network_insights_analysis_alternate_path_hint.dart';
import '../network_insights_analysis_explanation/network_insights_analysis_explanation.dart';
import '../network_insights_analysis_forward_path_component/network_insights_analysis_forward_path_component.dart';
import '../network_insights_analysis_return_path_component/network_insights_analysis_return_path_component.dart';
import 'network_insights_analysis_args.dart';

/// Provides a Network Insights Analysis resource. Part of the "Reachability Analyzer" service in the AWS VPC console.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Insights Analyzes using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInsightsAnalysis:NetworkInsightsAnalysis test nia-0462085c957f11a55
/// ```
class NetworkInsightsAnalysis extends CustomResource {
  /// Potential intermediate components of a feasible path. Described below.
  late final Output<List<NetworkInsightsAnalysisAlternatePathHint>>
      alternatePathHints;

  /// ARN of the Network Insights Analysis.
  late final Output<String> arn;

  /// Explanation codes for an unreachable path. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Explanation.html) for details.
  late final Output<List<NetworkInsightsAnalysisExplanation>> explanations;

  /// A list of ARNs for resources the path must traverse.
  late final Output<List<String>?> filterInArns;

  /// The components in the path from source to destination. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_PathComponent.html) for details.
  late final Output<List<NetworkInsightsAnalysisForwardPathComponent>>
      forwardPathComponents;

  /// ID of the Network Insights Path to run an analysis on.
  ///
  /// The following arguments are optional:
  late final Output<String> networkInsightsPathId;

  /// Set to `true` if the destination was reachable.
  late final Output<bool> pathFound;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The components in the path from destination to source. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_PathComponent.html) for details.
  late final Output<List<NetworkInsightsAnalysisReturnPathComponent>>
      returnPathComponents;

  /// The date/time the analysis was started.
  late final Output<String> startDate;

  /// The status of the analysis. `succeeded` means the analysis was completed, not that a path was found, for that see `path_found`.
  late final Output<String> status;

  /// A message to provide more context when the `status` is `failed`.
  late final Output<String> statusMessage;

  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// If enabled, the resource will wait for the Network Insights Analysis status to change to `succeeded` or `failed`. Setting this to `false` will skip the process. Default: `true`.
  late final Output<bool?> waitForCompletion;

  /// The warning message.
  late final Output<String> warningMessage;

  NetworkInsightsAnalysis(
    String name, {
    NetworkInsightsAnalysisArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInsightsAnalysis:NetworkInsightsAnalysis',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.alternatePathHints =
        registerOutput<List<NetworkInsightsAnalysisAlternatePathHint>>(
            'alternatePathHints');
    this.arn = registerOutput<String>('arn');
    this.explanations =
        registerOutput<List<NetworkInsightsAnalysisExplanation>>(
            'explanations');
    this.filterInArns = registerOutput<List<String>?>('filterInArns');
    this.forwardPathComponents =
        registerOutput<List<NetworkInsightsAnalysisForwardPathComponent>>(
            'forwardPathComponents');
    this.networkInsightsPathId =
        registerOutput<String>('networkInsightsPathId');
    this.pathFound = registerOutput<bool>('pathFound');
    this.region = registerOutput<String>('region');
    this.returnPathComponents =
        registerOutput<List<NetworkInsightsAnalysisReturnPathComponent>>(
            'returnPathComponents');
    this.startDate = registerOutput<String>('startDate');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.waitForCompletion = registerOutput<bool?>('waitForCompletion');
    this.warningMessage = registerOutput<String>('warningMessage');
  }
}
