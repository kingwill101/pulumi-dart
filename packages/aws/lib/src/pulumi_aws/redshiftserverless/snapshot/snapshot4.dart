import 'package:pulumi/pulumi.dart';
import 'snapshot_args4.dart';

/// Creates a new Amazon Redshift Serverless Snapshot.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshiftserverless.Snapshot("example", {
/// namespaceName: exampleAwsRedshiftserverlessWorkgroup.namespaceName,
/// snapshotName: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshiftserverless.Snapshot("example",
/// namespace_name=example_aws_redshiftserverless_workgroup["namespaceName"],
/// snapshot_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.RedshiftServerless.Snapshot("example", new()
/// {
/// NamespaceName = exampleAwsRedshiftserverlessWorkgroup.NamespaceName,
/// SnapshotName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshiftserverless"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := redshiftserverless.NewSnapshot(ctx, "example", &redshiftserverless.SnapshotArgs{
/// NamespaceName: pulumi.Any(exampleAwsRedshiftserverlessWorkgroup.NamespaceName),
/// SnapshotName:  pulumi.String("example"),
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
/// import com.pulumi.aws.redshiftserverless.Snapshot;
/// import com.pulumi.aws.redshiftserverless.SnapshotArgs;
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
/// var example = new Snapshot("example", SnapshotArgs.builder()
/// .namespaceName(exampleAwsRedshiftserverlessWorkgroup.namespaceName())
/// .snapshotName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:redshiftserverless:Snapshot
/// properties:
/// namespaceName: ${exampleAwsRedshiftserverlessWorkgroup.namespaceName}
/// snapshotName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Redshift Serverless Snapshots using the <span pulumi-lang-nodejs="`snapshotName`" pulumi-lang-dotnet="`SnapshotName`" pulumi-lang-go="`snapshotName`" pulumi-lang-python="`snapshot_name`" pulumi-lang-yaml="`snapshotName`" pulumi-lang-java="`snapshotName`">`snapshot_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:redshiftserverless/snapshot:Snapshot example example
/// ```
class Snapshot4 extends CustomResource {
  /// All of the Amazon Web Services accounts that have access to restore a snapshot to a provisioned cluster.
  late final Output<List<String>> accountsWithProvisionedRestoreAccesses;

  /// All of the Amazon Web Services accounts that have access to restore a snapshot to a namespace.
  late final Output<List<String>> accountsWithRestoreAccesses;

  /// The username of the database within a snapshot.
  late final Output<String> adminUsername;

  /// The Amazon Resource Name (ARN) of the snapshot.
  late final Output<String> arn;

  /// The unique identifier of the KMS key used to encrypt the snapshot.
  late final Output<String> kmsKeyId;

  /// The Amazon Resource Name (ARN) of the namespace the snapshot was created from.
  late final Output<String> namespaceArn;

  /// The namespace to create a snapshot for.
  late final Output<String> namespaceName;

  /// The owner Amazon Web Services; account of the snapshot.
  late final Output<String> ownerAccount;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// How long to retain the created snapshot. Default value is `-1`.
  late final Output<int?> retentionPeriod;

  /// The name of the snapshot.
  late final Output<String> snapshotName;

  Snapshot4(
    String name, {
    SnapshotArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:redshiftserverless/snapshot:Snapshot',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.accountsWithProvisionedRestoreAccesses =
        Output.createUnknown<List<String>>();
    this.accountsWithRestoreAccesses = Output.createUnknown<List<String>>();
    this.adminUsername = Output.createUnknown<String>();
    this.arn = Output.createUnknown<String>();
    this.kmsKeyId = Output.createUnknown<String>();
    this.namespaceArn = Output.createUnknown<String>();
    this.namespaceName = Output.createUnknown<String>();
    this.ownerAccount = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.retentionPeriod = Output.createUnknown<int?>();
    this.snapshotName = Output.createUnknown<String>();
  }
}
