import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_address_group_args.dart';
import 'get_address_group_result.dart';

/// Gets details of a single address group.
Future<GetAddressGroupResult> getAddressGroup(
  GetAddressGroupArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1:getAddressGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupResult.fromMap(result);
}
