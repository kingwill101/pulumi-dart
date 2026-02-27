import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_outpost_args.dart';
import 'get_outpost_result.dart';

/// Provides details about an Outposts Outpost.
Future<GetOutpostResult> getOutpost(
  GetOutpostArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutpost:getOutpost',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetOutpostResult.fromMap(result);
}
