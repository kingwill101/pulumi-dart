import 'package:pulumi/pulumi.dart';
import 'get_faq_args.dart';
import 'get_faq_result.dart';

/// Provides details about a specific Amazon Kendra Faq.
Future<GetFaqResult> getFaq(
  GetFaqArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getFaq:getFaq',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFaqResult.fromMap(result);
}
