import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_change_dns_v1beta2_args.dart';
import 'get_change_dns_v1beta2_result.dart';

/// Fetches the representation of an existing Change.
Future<GetChangeDnsV1beta2Result> getChangeDnsV1beta2(
  GetChangeDnsV1beta2Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:dns/v1beta2:getChange',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetChangeDnsV1beta2Result.fromMap(result);
}
