import 'package:pulumi/pulumi.dart';
import 'billing_account_exclusion_args.dart';

/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const my_exclusion = new gcp.logging.BillingAccountExclusion("my-exclusion", {
/// name: "my-instance-debug-exclusion",
/// billingAccount: "ABCDEF-012345-GHIJKL",
/// description: "Exclude GCE instance debug logs",
/// filter: "resource.type = gce_instance AND severity <= DEBUG",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_exclusion = gcp.logging.BillingAccountExclusion("my-exclusion",
/// name="my-instance-debug-exclusion",
/// billing_account="ABCDEF-012345-GHIJKL",
/// description="Exclude GCE instance debug logs",
/// filter="resource.type = gce_instance AND severity <= DEBUG")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var my_exclusion = new Gcp.Logging.BillingAccountExclusion("my-exclusion", new()
/// {
/// Name = "my-instance-debug-exclusion",
/// BillingAccount = "ABCDEF-012345-GHIJKL",
/// Description = "Exclude GCE instance debug logs",
/// Filter = "resource.type = gce_instance AND severity <= DEBUG",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := logging.NewBillingAccountExclusion(ctx, "my-exclusion", &logging.BillingAccountExclusionArgs{
/// Name:           pulumi.String("my-instance-debug-exclusion"),
/// BillingAccount: pulumi.String("ABCDEF-012345-GHIJKL"),
/// Description:    pulumi.String("Exclude GCE instance debug logs"),
/// Filter:         pulumi.String("resource.type = gce_instance AND severity <= DEBUG"),
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
/// import com.pulumi.gcp.logging.BillingAccountExclusion;
/// import com.pulumi.gcp.logging.BillingAccountExclusionArgs;
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
/// var my_exclusion = new BillingAccountExclusion("my-exclusion", BillingAccountExclusionArgs.builder()
/// .name("my-instance-debug-exclusion")
/// .billingAccount("ABCDEF-012345-GHIJKL")
/// .description("Exclude GCE instance debug logs")
/// .filter("resource.type = gce_instance AND severity <= DEBUG")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// my-exclusion:
/// type: gcp:logging:BillingAccountExclusion
/// properties:
/// name: my-instance-debug-exclusion
/// billingAccount: ABCDEF-012345-GHIJKL
/// description: Exclude GCE instance debug logs
/// filter: resource.type = gce_instance AND severity <= DEBUG
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Billing account logging exclusions can be imported using their URI, e.g.
///
/// * `billingAccounts/{{billing_account}}/exclusions/{{name}}`
///
/// When using the `pulumi import` command, billing account logging exclusions can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:logging/billingAccountExclusion:BillingAccountExclusion default billingAccounts/{{billing_account}}/exclusions/{{name}}
/// ```
class BillingAccountExclusion extends CustomResource {
  /// The billing account to create the exclusion for.
  late final Output<String> billingAccount;

  /// A human-readable description.
  late final Output<String?> description;

  /// Whether this exclusion rule should be disabled or not. This defaults to
  /// false.
  late final Output<bool?> disabled;

  /// The filter to apply when excluding logs. Only log entries that match the filter are excluded.
  /// See [Advanced Log Filters](https://cloud.google.com/logging/docs/view/advanced-filters) for information on how to
  /// write a filter.
  late final Output<String> filter;

  /// The name of the logging exclusion.
  late final Output<String> name;

  BillingAccountExclusion(
    String name, {
    BillingAccountExclusionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:logging/billingAccountExclusion:BillingAccountExclusion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.billingAccount = registerOutput<String>('billingAccount');
    this.description = registerOutput<String?>('description');
    this.disabled = registerOutput<bool?>('disabled');
    this.filter = registerOutput<String>('filter');
    this.name = registerOutput<String>('name');
  }
}
