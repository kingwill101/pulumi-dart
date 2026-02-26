import 'package:pulumi/pulumi.dart';
import 'get_encryption_by_default_args.dart';
import 'get_encryption_by_default_result.dart';

/// Provides a way to check whether default EBS encryption is enabled for your AWS account in the current AWS region.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.ebs.getEncryptionByDefault({});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.ebs.get_encryption_by_default()
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.Ebs.GetEncryptionByDefault.Invoke();
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ebs"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ebs.LookupEncryptionByDefault(ctx, &ebs.LookupEncryptionByDefaultArgs{}, nil)
/// if err != nil {
/// return err
/// }
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
/// import com.pulumi.aws.ebs.EbsFunctions;
/// import com.pulumi.aws.ebs.inputs.GetEncryptionByDefaultArgs;
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
/// final var current = EbsFunctions.getEncryptionByDefault(GetEncryptionByDefaultArgs.builder()
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// current:
/// fn::invoke:
/// function: aws:ebs:getEncryptionByDefault
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetEncryptionByDefaultResult> getEncryptionByDefault(
  GetEncryptionByDefaultArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:ebs/getEncryptionByDefault:getEncryptionByDefault',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetEncryptionByDefaultResult.fromMap(result);
}
