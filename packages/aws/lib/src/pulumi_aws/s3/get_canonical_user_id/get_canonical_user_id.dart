import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_canonical_user_id_result.dart';

/// The Canonical User ID data source allows access to the [canonical user ID](http://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html)
/// for the effective account in which this provider is working.
///
/// > **NOTE:** To use this data source, you must have the `s3:ListAllMyBuckets` permission.
Future<GetCanonicalUserIdResult> getCanonicalUserId({
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getCanonicalUserId:getCanonicalUserId',
    const <String, dynamic>{},
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetCanonicalUserIdResult.fromMap(result);
}
