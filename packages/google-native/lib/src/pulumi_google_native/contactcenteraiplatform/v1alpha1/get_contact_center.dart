import 'package:pulumi/pulumi.dart';
import 'get_contact_center_args.dart';
import 'get_contact_center_result.dart';

/// Gets details of a single ContactCenter.
Future<GetContactCenterResult> getContactCenter(
  GetContactCenterArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:contactcenteraiplatform/v1alpha1:getContactCenter',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetContactCenterResult.fromMap(result);
}
