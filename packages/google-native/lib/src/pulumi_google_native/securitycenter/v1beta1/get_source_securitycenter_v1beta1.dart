import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_source_securitycenter_v1beta1_args.dart';
import 'get_source_securitycenter_v1beta1_result.dart';

/// Gets a source.
Future<GetSourceSecuritycenterV1beta1Result> getSourceSecuritycenterV1beta1(
  GetSourceSecuritycenterV1beta1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:securitycenter/v1beta1:getSource',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetSourceSecuritycenterV1beta1Result.fromMap(result);
}
