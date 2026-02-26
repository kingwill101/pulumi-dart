import 'package:pulumi/pulumi.dart';
import 'get_managed_prefix_lists_args.dart';
import 'get_managed_prefix_lists_result.dart';

/// This resource can be useful for getting back a list of managed prefix list ids to be referenced elsewhere.
///
/// ## Example Usage
///
/// The following returns all managed prefix lists filtered by tags
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testEnv = aws.ec2.getManagedPrefixLists({
/// tags: {
/// Env: "test",
/// },
/// });
/// const testEnvGetManagedPrefixList = .map(__index => (aws.ec2.getManagedPrefixList({
/// id: _arg0_.ids[__index],
/// })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_env = aws.ec2.get_managed_prefix_lists(tags={
/// "Env": "test",
/// })
/// test_env_get_managed_prefix_list = [aws.ec2.get_managed_prefix_list(id=test_env.ids[__index]) for __index in len(test_env.ids).apply(lambda length: range(length))]
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var testEnv = Aws.Ec2.GetManagedPrefixLists.Invoke(new()
/// {
/// Tags =
/// {
/// { "Env", "test" },
/// },
/// });
///
/// var testEnvGetManagedPrefixList = ;
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetManagedPrefixListsResult> getManagedPrefixLists(
  GetManagedPrefixListsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ec2/getManagedPrefixLists:getManagedPrefixLists',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetManagedPrefixListsResult.fromMap(result);
}
