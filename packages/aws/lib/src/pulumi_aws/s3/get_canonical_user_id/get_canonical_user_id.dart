import 'package:pulumi/pulumi.dart';
import 'get_canonical_user_id_result.dart';

/// The Canonical User ID data source allows access to the [canonical user ID](http://docs.aws.amazon.com/general/latest/gr/acct-identifiers.html)
/// for the effective account in which this provider is working.
///
/// > **NOTE:** To use this data source, you must have the `s3:ListAllMyBuckets` permission.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.s3.getCanonicalUserId({});
/// export const canonicalUserId = current.then(current => current.id);
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.s3.get_canonical_user_id()
/// pulumi.export("canonicalUserId", current.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.S3.GetCanonicalUserId.Invoke();
///
/// return new Dictionary<string, object?>
/// {
/// ["canonicalUserId"] = current.Apply(getCanonicalUserIdResult => getCanonicalUserIdResult.Id),
/// };
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/s3"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := s3.GetCanonicalUserId(ctx, map[string]interface{}{}, nil)
/// if err != nil {
/// return err
/// }
/// ctx.Export("canonicalUserId", current.Id)
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.s3.S3Functions;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = S3Functions.getCanonicalUserId(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
/// ctx.export("canonicalUserId", current.id());
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:s3:getCanonicalUserId
/// arguments: {}
/// outputs:
/// canonicalUserId: ${current.id}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetCanonicalUserIdResult> getCanonicalUserId({
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:s3/getCanonicalUserId:getCanonicalUserId',
    const <String, dynamic>{},
    options: toDeploymentInvokeOptions(options),
  );
  return GetCanonicalUserIdResult.fromMap(result);
}
