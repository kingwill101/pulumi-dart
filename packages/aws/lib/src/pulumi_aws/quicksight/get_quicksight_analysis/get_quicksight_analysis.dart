import 'package:pulumi/pulumi.dart';
import 'get_quicksight_analysis_args.dart';
import 'get_quicksight_analysis_result.dart';

/// Data source for managing an AWS QuickSight Analysis.
///
/// ## Example Usage
///
/// ### Basic Usage
Future<GetQuicksightAnalysisResult> getQuicksightAnalysis(
  GetQuicksightAnalysisArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:quicksight/getQuicksightAnalysis:getQuicksightAnalysis',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetQuicksightAnalysisResult.fromMap(result);
}
