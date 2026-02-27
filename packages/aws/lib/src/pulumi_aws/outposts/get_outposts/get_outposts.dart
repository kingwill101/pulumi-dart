import 'package:pulumi/pulumi.dart';
import 'get_outposts_args.dart';
import 'get_outposts_result.dart';

/// Provides details about multiple Outposts.
Future<GetOutpostsResult> getOutposts(
  GetOutpostsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutposts:getOutposts',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOutpostsResult.fromMap(result);
}
