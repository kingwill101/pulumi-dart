import 'package:pulumi/pulumi.dart';
import 'get_outpost_args.dart';
import 'get_outpost_result.dart';

/// Provides details about an Outposts Outpost.
Future<GetOutpostResult> getOutpost(
  GetOutpostArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:outposts/getOutpost:getOutpost',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOutpostResult.fromMap(result);
}
