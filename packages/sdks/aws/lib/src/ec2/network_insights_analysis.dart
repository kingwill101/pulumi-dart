import 'package:pulumi/pulumi.dart' as pulumi;
import 'network_insights_analysis_alternate_path_hint.dart';
import 'network_insights_analysis_args.dart';
import 'network_insights_analysis_explanation.dart';
import 'network_insights_analysis_forward_path_component.dart';
import 'network_insights_analysis_return_path_component.dart';
import 'network_insights_analysis_state.dart';

/// Provides a Network Insights Analysis resource. Part of the "Reachability Analyzer" service in the AWS VPC console.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const path = new aws.ec2.NetworkInsightsPath("path", {
///     source: source.id,
///     destination: destination.id,
///     protocol: "tcp",
/// });
/// const analysis = new aws.ec2.NetworkInsightsAnalysis("analysis", {networkInsightsPathId: path.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path = aws.ec2.NetworkInsightsPath("path",
///     source=source["id"],
///     destination=destination["id"],
///     protocol="tcp")
/// analysis = aws.ec2.NetworkInsightsAnalysis("analysis", network_insights_path_id=path.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var path = new Aws.Ec2.NetworkInsightsPath("path", new()
///     {
///         Source = source.Id,
///         Destination = destination.Id,
///         Protocol = "tcp",
///     });
///
///     var analysis = new Aws.Ec2.NetworkInsightsAnalysis("analysis", new()
///     {
///         NetworkInsightsPathId = path.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		path, err := ec2.NewNetworkInsightsPath(ctx, "path", &ec2.NetworkInsightsPathArgs{
/// 			Source:      pulumi.Any(source.Id),
/// 			Destination: pulumi.Any(destination.Id),
/// 			Protocol:    pulumi.String("tcp"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewNetworkInsightsAnalysis(ctx, "analysis", &ec2.NetworkInsightsAnalysisArgs{
/// 			NetworkInsightsPathId: path.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.NetworkInsightsPath;
/// import com.pulumi.aws.ec2.NetworkInsightsPathArgs;
/// import com.pulumi.aws.ec2.NetworkInsightsAnalysis;
/// import com.pulumi.aws.ec2.NetworkInsightsAnalysisArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var path = new NetworkInsightsPath("path", NetworkInsightsPathArgs.builder()
///             .source(source.id())
///             .destination(destination.id())
///             .protocol("tcp")
///             .build());
///
///         var analysis = new NetworkInsightsAnalysis("analysis", NetworkInsightsAnalysisArgs.builder()
///             .networkInsightsPathId(path.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   path:
///     type: aws:ec2:NetworkInsightsPath
///     properties:
///       source: ${source.id}
///       destination: ${destination.id}
///       protocol: tcp
///   analysis:
///     type: aws:ec2:NetworkInsightsAnalysis
///     properties:
///       networkInsightsPathId: ${path.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Network Insights Analyzes using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/networkInsightsAnalysis:NetworkInsightsAnalysis test nia-0462085c957f11a55
/// ```
class NetworkInsightsAnalysis extends pulumi.CustomResource {
  /// Potential intermediate components of a feasible path. Described below.
  late final pulumi.Output<List<NetworkInsightsAnalysisAlternatePathHint>> alternatePathHints;
  /// ARN of the Network Insights Analysis.
  late final pulumi.Output<String> arn;
  /// Explanation codes for an unreachable path. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_Explanation.html) for details.
  late final pulumi.Output<List<NetworkInsightsAnalysisExplanation>> explanations;
  /// A list of ARNs for resources the path must traverse.
  late final pulumi.Output<List<String>?> filterInArns;
  /// The components in the path from source to destination. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_PathComponent.html) for details.
  late final pulumi.Output<List<NetworkInsightsAnalysisForwardPathComponent>> forwardPathComponents;
  /// ID of the Network Insights Path to run an analysis on.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> networkInsightsPathId;
  /// Set to `true` if the destination was reachable.
  late final pulumi.Output<bool> pathFound;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The components in the path from destination to source. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_PathComponent.html) for details.
  late final pulumi.Output<List<NetworkInsightsAnalysisReturnPathComponent>> returnPathComponents;
  /// The date/time the analysis was started.
  late final pulumi.Output<String> startDate;
  /// The status of the analysis. `succeeded` means the analysis was completed, not that a path was found, for that see `path_found`.
  late final pulumi.Output<String> status;
  /// A message to provide more context when the `status` is `failed`.
  late final pulumi.Output<String> statusMessage;
  /// Map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// If enabled, the resource will wait for the Network Insights Analysis status to change to `succeeded` or `failed`. Setting this to `false` will skip the process. Default: `true`.
  late final pulumi.Output<bool?> waitForCompletion;
  /// The warning message.
  late final pulumi.Output<String> warningMessage;

  /// Creates a new [NetworkInsightsAnalysis].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NetworkInsightsAnalysis]. {@macro pulumi_ec2_network_insights_analysis_network_insights_analysis_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NetworkInsightsAnalysis(
    String name, {
    NetworkInsightsAnalysisArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInsightsAnalysis:NetworkInsightsAnalysis',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alternatePathHints = registerOutput<List<NetworkInsightsAnalysisAlternatePathHint>>('alternatePathHints');
    this.arn = registerOutput<String>('arn');
    this.explanations = registerOutput<List<NetworkInsightsAnalysisExplanation>>('explanations');
    this.filterInArns = registerOutput<List<String>?>('filterInArns');
    this.forwardPathComponents = registerOutput<List<NetworkInsightsAnalysisForwardPathComponent>>('forwardPathComponents');
    this.networkInsightsPathId = registerOutput<String>('networkInsightsPathId');
    this.pathFound = registerOutput<bool>('pathFound');
    this.region = registerOutput<String>('region');
    this.returnPathComponents = registerOutput<List<NetworkInsightsAnalysisReturnPathComponent>>('returnPathComponents');
    this.startDate = registerOutput<String>('startDate');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.waitForCompletion = registerOutput<bool?>('waitForCompletion');
    this.warningMessage = registerOutput<String>('warningMessage');
  }

  /// Gets an existing [NetworkInsightsAnalysis] resource's state with the given [name] and [id].
  static NetworkInsightsAnalysis get(
    String name,
    pulumi.Input<String> id, {
    NetworkInsightsAnalysisState? state,
  }) {
    return NetworkInsightsAnalysis._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  NetworkInsightsAnalysis._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/networkInsightsAnalysis:NetworkInsightsAnalysis',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alternatePathHints = registerOutput<List<NetworkInsightsAnalysisAlternatePathHint>>('alternatePathHints');
    this.arn = registerOutput<String>('arn');
    this.explanations = registerOutput<List<NetworkInsightsAnalysisExplanation>>('explanations');
    this.filterInArns = registerOutput<List<String>?>('filterInArns');
    this.forwardPathComponents = registerOutput<List<NetworkInsightsAnalysisForwardPathComponent>>('forwardPathComponents');
    this.networkInsightsPathId = registerOutput<String>('networkInsightsPathId');
    this.pathFound = registerOutput<bool>('pathFound');
    this.region = registerOutput<String>('region');
    this.returnPathComponents = registerOutput<List<NetworkInsightsAnalysisReturnPathComponent>>('returnPathComponents');
    this.startDate = registerOutput<String>('startDate');
    this.status = registerOutput<String>('status');
    this.statusMessage = registerOutput<String>('statusMessage');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.waitForCompletion = registerOutput<bool?>('waitForCompletion');
    this.warningMessage = registerOutput<String>('warningMessage');
  }
}
