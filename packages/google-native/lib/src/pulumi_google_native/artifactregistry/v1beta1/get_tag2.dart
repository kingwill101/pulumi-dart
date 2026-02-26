import 'package:pulumi/pulumi.dart';
import 'get_tag_args2.dart';
import 'get_tag_result2.dart';

/// Gets a tag.
Future<GetTagResult2> getTag2(
  GetTagArgs2 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:artifactregistry/v1beta1:getTag',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTagResult2.fromMap(result);
}
