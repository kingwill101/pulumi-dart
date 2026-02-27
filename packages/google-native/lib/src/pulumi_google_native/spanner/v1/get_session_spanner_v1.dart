import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_session_spanner_v1_args.dart';
import 'get_session_spanner_v1_result.dart';

/// Gets a session. Returns `NOT_FOUND` if the session does not exist. This is mainly useful for determining whether a session is still alive.
Future<GetSessionSpannerV1Result> getSessionSpannerV1(
  GetSessionSpannerV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:spanner/v1:getSession',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSessionSpannerV1Result.fromMap(result);
}
