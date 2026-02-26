import 'package:pulumi/pulumi.dart';
import 'tape_pool_args.dart';

/// Manages an AWS Storage Gateway Tape Pool.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.storagegateway.TapePool("example", {
/// poolName: "example",
/// storageClass: "GLACIER",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.storagegateway.TapePool("example",
/// pool_name="example",
/// storage_class="GLACIER")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.StorageGateway.TapePool("example", new()
/// {
/// PoolName = "example",
/// StorageClass = "GLACIER",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/storagegateway"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := storagegateway.NewTapePool(ctx, "example", &storagegateway.TapePoolArgs{
/// PoolName:     pulumi.String("example"),
/// StorageClass: pulumi.String("GLACIER"),
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
/// import com.pulumi.aws.storagegateway.TapePool;
/// import com.pulumi.aws.storagegateway.TapePoolArgs;
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
/// var example = new TapePool("example", TapePoolArgs.builder()
/// .poolName("example")
/// .storageClass("GLACIER")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:storagegateway:TapePool
/// properties:
/// poolName: example
/// storageClass: GLACIER
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.storagegateway.TapePool`" pulumi-lang-dotnet="`aws.storagegateway.TapePool`" pulumi-lang-go="`storagegateway.TapePool`" pulumi-lang-python="`storagegateway.TapePool`" pulumi-lang-yaml="`aws.storagegateway.TapePool`" pulumi-lang-java="`aws.storagegateway.TapePool`">`aws.storagegateway.TapePool`</span> using the volume Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:storagegateway/tapePool:TapePool example arn:aws:storagegateway:us-east-1:123456789012:tapepool/pool-12345678
/// ```
class TapePool extends CustomResource {
  /// Volume Amazon Resource Name (ARN), e.g., `aws_storagegateway_tape_pool.example arn:aws:storagegateway:us-east-1:123456789012:tapepool/pool-12345678`.
  late final Output<String> arn;

  /// The name of the new custom tape pool.
  late final Output<String> poolName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Tape retention lock time is set in days. Tape retention lock can be enabled for up to 100 years (36,500 days). Default value is 0.
  late final Output<int?> retentionLockTimeInDays;

  /// Tape retention lock can be configured in two modes. When configured in governance mode, AWS accounts with specific IAM permissions are authorized to remove the tape retention lock from archived virtual tapes. When configured in compliance mode, the tape retention lock cannot be removed by any user, including the root AWS account. Possible values are `COMPLIANCE`, `GOVERNANCE`, and `NONE`. Default value is `NONE`.
  late final Output<String?> retentionLockType;

  /// The storage class that is associated with the new custom pool. When you use your backup application to eject the tape, the tape is archived directly into the storage class that corresponds to the pool. Possible values are `DEEP_ARCHIVE` or `GLACIER`.
  late final Output<String> storageClass;

  /// Key-value map of resource tags. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  TapePool(
    String name, {
    TapePoolArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:storagegateway/tapePool:TapePool',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.poolName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.retentionLockTimeInDays = Output.createUnknown<int?>();
    this.retentionLockType = Output.createUnknown<String?>();
    this.storageClass = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
