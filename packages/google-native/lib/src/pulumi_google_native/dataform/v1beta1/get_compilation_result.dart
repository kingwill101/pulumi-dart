import 'package:pulumi/pulumi.dart' hide Config;
import 'get_compilation_result_args.dart';
import 'get_compilation_result_result.dart';

/// Fetches a single CompilationResult.
Future<GetCompilationResultResult> getCompilationResult(
  GetCompilationResultArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dataform/v1beta1:getCompilationResult',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetCompilationResultResult.fromMap(result);
}
