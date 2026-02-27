import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_key_pair_args.dart';
import 'get_key_pair_result.dart';

/// Use this data source to get information about a specific EC2 Key Pair.
///
/// ## Example Usage
///
/// The following example shows how to get a EC2 Key Pair including the public key material from its name.
Future<GetKeyPairResult> getKeyPair(
  GetKeyPairArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getKeyPair:getKeyPair',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetKeyPairResult.fromMap(result);
}
