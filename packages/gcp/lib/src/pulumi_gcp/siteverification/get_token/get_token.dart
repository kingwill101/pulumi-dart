import 'package:pulumi/pulumi.dart';
import 'get_token_args.dart';
import 'get_token_result.dart';

/// A verification token is used to demonstrate ownership of a website or domain.
///
///
/// To get more information about Token, see:
///
/// * [API documentation](https://developers.google.com/site-verification/v1)
/// * How-to Guides
/// * [Getting Started](https://developers.google.com/site-verification/v1/getting_started)
///
///
/// ## Example Usage
///
/// ### Site Verification Via Site META Tag
///
///
///
/// ### Site Verification Via DNS TXT Record
Future<GetTokenResult> getToken(
  GetTokenArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:siteverification/getToken:getToken',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetTokenResult.fromMap(result);
}
