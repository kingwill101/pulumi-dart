import 'package:pulumi/pulumi.dart' hide Config;
import 'get_federation_args3.dart';
import 'get_federation_result3.dart';

/// Gets the details of a single federation.
Future<GetFederationResult3> getFederation3(
  GetFederationArgs3 args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:metastore/v1beta:getFederation',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetFederationResult3.fromMap(result);
}
