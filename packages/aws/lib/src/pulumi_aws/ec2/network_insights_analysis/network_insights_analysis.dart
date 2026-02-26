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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const path = new aws.ec2.NetworkInsightsPath("path", {
/// source: source.id,
/// destination: destination.id,
/// protocol: "tcp",
/// });
/// const analysis = new aws.ec2.NetworkInsightsAnalysis("analysis", {networkInsightsPathId: path.id});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// path = aws.ec2.NetworkInsightsPath("path",
/// source=source["id"],
/// destination=destination["id"],
/// protocol="tcp")
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
/// var path = new Aws.Ec2.NetworkInsightsPath("path", new()
/// {
/// Source = source.Id,
/// Destination = destination.Id,
/// Protocol = "tcp",
/// });
///
/// var analysis = new Aws.Ec2.NetworkInsightsAnalysis("analysis", new()
/// {
/// NetworkInsightsPathId = path.Id,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// path, err := ec2.NewNetworkInsightsPath(ctx, "path", &ec2.NetworkInsightsPathArgs{
/// Source:      pulumi.Any(source.Id),
/// Destination: pulumi.Any(destination.Id),
/// Protocol:    pulumi.String("tcp"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewNetworkInsightsAnalysis(ctx, "analysis", &ec2.NetworkInsightsAnalysisArgs{
/// NetworkInsightsPathId: path.ID(),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var path = new NetworkInsightsPath("path", NetworkInsightsPathArgs.builder()
/// .source(source.id())
/// .destination(destination.id())
/// .protocol("tcp")
/// .build());
///
/// var analysis = new NetworkInsightsAnalysis("analysis", NetworkInsightsAnalysisArgs.builder()
/// .networkInsightsPathId(path.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// path:
/// type: aws:ec2:NetworkInsightsPath
/// properties:
/// source: ${source.id}
/// destination: ${destination.id}
/// protocol: tcp
/// analysis:
/// type: aws:ec2:NetworkInsightsAnalysis
/// properties:
/// networkInsightsPathId: ${path.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Network Insights Analyzes using the <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
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

  /// Set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> if the destination was reachable.
  late final Output<bool> pathFound;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The components in the path from destination to source. See the [AWS documentation](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_PathComponent.html) for details.
  late final Output<List<NetworkInsightsAnalysisReturnPathComponent>>
      returnPathComponents;

  /// The date/time the analysis was started.
  late final Output<String> startDate;

  /// The status of the analysis. <span pulumi-lang-nodejs="`succeeded`" pulumi-lang-dotnet="`Succeeded`" pulumi-lang-go="`succeeded`" pulumi-lang-python="`succeeded`" pulumi-lang-yaml="`succeeded`" pulumi-lang-java="`succeeded`">`succeeded`</span> means the analysis was completed, not that a path was found, for that see <span pulumi-lang-nodejs="`pathFound`" pulumi-lang-dotnet="`PathFound`" pulumi-lang-go="`pathFound`" pulumi-lang-python="`path_found`" pulumi-lang-yaml="`pathFound`" pulumi-lang-java="`pathFound`">`path_found`</span>.
  late final Output<String> status;

  /// A message to provide more context when the <span pulumi-lang-nodejs="`status`" pulumi-lang-dotnet="`Status`" pulumi-lang-go="`status`" pulumi-lang-python="`status`" pulumi-lang-yaml="`status`" pulumi-lang-java="`status`">`status`</span> is <span pulumi-lang-nodejs="`failed`" pulumi-lang-dotnet="`Failed`" pulumi-lang-go="`failed`" pulumi-lang-python="`failed`" pulumi-lang-yaml="`failed`" pulumi-lang-java="`failed`">`failed`</span>.
  late final Output<String> statusMessage;

  /// Map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// If enabled, the resource will wait for the Network Insights Analysis status to change to <span pulumi-lang-nodejs="`succeeded`" pulumi-lang-dotnet="`Succeeded`" pulumi-lang-go="`succeeded`" pulumi-lang-python="`succeeded`" pulumi-lang-yaml="`succeeded`" pulumi-lang-java="`succeeded`">`succeeded`</span> or <span pulumi-lang-nodejs="`failed`" pulumi-lang-dotnet="`Failed`" pulumi-lang-go="`failed`" pulumi-lang-python="`failed`" pulumi-lang-yaml="`failed`" pulumi-lang-java="`failed`">`failed`</span>. Setting this to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span> will skip the process. Default: <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
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
