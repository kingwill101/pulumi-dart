import 'package:pulumi/pulumi.dart' as pulumi;
import 'ai_traffic_analysis_status_args.dart';

/// ## Import
///
/// Cloud Firewall Ai Traffic Analysis Status can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:cloudfirewall/aiTrafficAnalysisStatus:AiTrafficAnalysisStatus example
/// ```
class AiTrafficAnalysisStatus extends pulumi.CustomResource {
  /// Status
  late final pulumi.Output<String> status;

  /// Creates a new [AiTrafficAnalysisStatus].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AiTrafficAnalysisStatus]. {@macro pulumi_cloudfirewall_ai_traffic_analysis_status_ai_traffic_analysis_status_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AiTrafficAnalysisStatus(
    String name, {
    AiTrafficAnalysisStatusArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:cloudfirewall/aiTrafficAnalysisStatus:AiTrafficAnalysisStatus',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.status = registerOutput<String>('status');
  }
}
