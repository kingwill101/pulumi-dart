import 'package:pulumi/pulumi.dart';
import 'region_args.dart';

/// Enable (Opt-In) or Disable (Opt-Out) a particular Region for an AWS account.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.account.Region("example", {
/// regionName: "ap-southeast-3",
/// enabled: true,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.account.Region("example",
/// region_name="ap-southeast-3",
/// enabled=True)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Account.Region("example", new()
/// {
/// RegionName = "ap-southeast-3",
/// Enabled = true,
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/account"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := account.NewRegion(ctx, "example", &account.RegionArgs{
/// RegionName: pulumi.String("ap-southeast-3"),
/// Enabled:    pulumi.Bool(true),
/// })
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
/// import com.pulumi.aws.account.Region;
/// import com.pulumi.aws.account.RegionArgs;
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
/// var example = new Region("example", RegionArgs.builder()
/// .regionName("ap-southeast-3")
/// .enabled(true)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:account:Region
/// properties:
/// regionName: ap-southeast-3
/// enabled: true
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`. For example:
///
/// ```sh
/// $ pulumi import aws:account/region:Region example ap-southeast-3
/// ```
class Region2 extends CustomResource {
  /// The ID of the target account when managing member accounts. Will manage current user's account by default if omitted. To use this parameter, the caller must be an identity in the organization's management account or a delegated administrator account. The specified account ID must also be a member account in the same organization. The organization must have all features enabled, and the organization must have trusted access enabled for the Account Management service, and optionally a delegated admin account assigned.
  late final Output<String?> accountId;

  /// Whether the region is enabled.
  late final Output<bool> enabled;

  /// The region opt status.
  late final Output<String> optStatus;

  /// The region name to manage.
  late final Output<String> regionName;

  Region2(
    String name, {
    RegionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:account/region:Region',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String?>('accountId');
    this.enabled = registerOutput<bool>('enabled');
    this.optStatus = registerOutput<String>('optStatus');
    this.regionName = registerOutput<String>('regionName');
  }
}
