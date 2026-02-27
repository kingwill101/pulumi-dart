import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_source_securitycenter_v1_args.dart';
import 'get_source_securitycenter_v1_result.dart';

/// Gets a source.
Future<GetSourceSecuritycenterV1Result> getSourceSecuritycenterV1(
  GetSourceSecuritycenterV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceSecuritycenterV1Result.fromMap(result);
}
