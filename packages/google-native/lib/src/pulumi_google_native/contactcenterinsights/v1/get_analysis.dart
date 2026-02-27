import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_analysis_args.dart';
import 'get_analysis_result.dart';

/// Gets an analysis.
Future<GetAnalysisResult> getAnalysis(
  GetAnalysisArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenterinsights/v1:getAnalysis',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAnalysisResult.fromMap(result);
}
