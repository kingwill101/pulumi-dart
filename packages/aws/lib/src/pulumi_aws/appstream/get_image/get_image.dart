import 'package:pulumi/pulumi.dart';
import 'get_image_args.dart';
import 'get_image_result.dart';

/// Data source for managing an AWS AppStream 2.0 Image.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.appstream.getImage({
/// name: "AppStream-WinServer2019-06-17-2024",
/// type: "PUBLIC",
/// mostRecent: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.appstream.get_image(name="AppStream-WinServer2019-06-17-2024",
/// type="PUBLIC",
/// most_recent=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var test = Aws.AppStream.GetImage.Invoke(new()
/// {
/// Name = "AppStream-WinServer2019-06-17-2024",
/// Type = "PUBLIC",
/// MostRecent = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := appstream.GetImage(ctx, &appstream.GetImageArgs{
/// Name:       pulumi.StringRef("AppStream-WinServer2019-06-17-2024"),
/// Type:       pulumi.StringRef("PUBLIC"),
/// MostRecent: pulumi.BoolRef(true),
/// }, nil)
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
/// import com.pulumi.aws.appstream.AppstreamFunctions;
/// import com.pulumi.aws.appstream.inputs.GetImageArgs;
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
/// final var test = AppstreamFunctions.getImage(GetImageArgs.builder()
/// .name("AppStream-WinServer2019-06-17-2024")
/// .type("PUBLIC")
/// .mostRecent(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// test:
/// fn::invoke:
/// function: aws:appstream:getImage
/// arguments:
/// name: AppStream-WinServer2019-06-17-2024
/// type: PUBLIC
/// mostRecent: true
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetImageResult> getImage(
  GetImageArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appstream/getImage:getImage',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetImageResult.fromMap(result);
}
