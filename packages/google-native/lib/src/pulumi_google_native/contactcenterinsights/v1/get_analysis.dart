import 'package:pulumi/pulumi.dart';
import 'get_analysis_args.dart';
import 'get_analysis_result.dart';

/// Gets an analysis.
Future<GetAnalysisResult> getAnalysis(
  GetAnalysisArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getAnalysis',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAnalysisResult.fromMap(result);
}
