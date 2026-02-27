import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_outposts_args.dart';
import 'get_outposts_result.dart';

/// Provides details about multiple Outposts.
Future<GetOutpostsResult> getOutposts(
  GetOutpostsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutposts:getOutposts',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutpostsResult.fromMap(result);
}
