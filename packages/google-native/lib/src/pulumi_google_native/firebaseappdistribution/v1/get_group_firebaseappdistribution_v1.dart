import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_group_firebaseappdistribution_v1_args.dart';
import 'get_group_firebaseappdistribution_v1_result.dart';

/// Get a group.
Future<GetGroupFirebaseappdistributionV1Result>
    getGroupFirebaseappdistributionV1(
  GetGroupFirebaseappdistributionV1Args args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'google-native:firebaseappdistribution/v1:getGroup',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetGroupFirebaseappdistributionV1Result.fromMap(result);
}
