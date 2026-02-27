import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_protection_args.dart';
import 'get_protection_result.dart';

/// Data source for managing an AWS Shield Protection.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
///
/// ### By Resource ARN
Future<GetProtectionResult> getProtection(
  GetProtectionArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:shield/getProtection:getProtection',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetProtectionResult.fromMap(result);
}
