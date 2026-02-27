import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_faq_args.dart';
import 'get_faq_result.dart';

/// Provides details about a specific Amazon Kendra Faq.
Future<GetFaqResult> getFaq(
  GetFaqArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:kendra/getFaq:getFaq',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetFaqResult.fromMap(result);
}
