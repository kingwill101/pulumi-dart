import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routing_profile_args.dart';
import 'get_routing_profile_result.dart';

/// Provides details about a specific Amazon Connect Routing Profile.
///
/// ## Example Usage
///
/// By `name`
///
///
///
/// By `routing_profile_id`
Future<GetRoutingProfileResult> getRoutingProfile(
  GetRoutingProfileArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:connect/getRoutingProfile:getRoutingProfile',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetRoutingProfileResult.fromMap(result);
}
