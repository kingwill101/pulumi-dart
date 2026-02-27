import 'package:pulumi/pulumi.dart' hide Config;
import 'get_address_group_args2.dart';
import 'get_address_group_result2.dart';

/// Gets details of a single address group.
Future<GetAddressGroupResult2> getAddressGroup2(
  GetAddressGroupArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:networksecurity/v1beta1:getAddressGroup',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetAddressGroupResult2.fromMap(result);
}
