import 'package:pulumi/pulumi.dart';
import '../nfs_location_mount_options/nfs_location_mount_options.dart';
import '../nfs_location_on_prem_config/nfs_location_on_prem_config.dart';
import 'nfs_location_args.dart';

/// Manages an NFS Location within AWS DataSync.
///
/// > **NOTE:** The DataSync Agents must be available before creating this resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.datasync.NfsLocation("example", {
/// serverHostname: "nfs.example.com",
/// subdirectory: "/exported/path",
/// onPremConfig: {
/// agentArns: [exampleAwsDatasyncAgent.arn],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.datasync.NfsLocation("example",
/// server_hostname="nfs.example.com",
/// subdirectory="/exported/path",
/// on_prem_config={
/// "agent_arns": [example_aws_datasync_agent["arn"]],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.DataSync.NfsLocation("example", new()
/// {
/// ServerHostname = "nfs.example.com",
/// Subdirectory = "/exported/path",
/// OnPremConfig = new Aws.DataSync.Inputs.NfsLocationOnPremConfigArgs
/// {
/// AgentArns = new[]
/// {
/// exampleAwsDatasyncAgent.Arn,
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datasync"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datasync.NewNfsLocation(ctx, "example", &datasync.NfsLocationArgs{
/// ServerHostname: pulumi.String("nfs.example.com"),
/// Subdirectory:   pulumi.String("/exported/path"),
/// OnPremConfig: &datasync.NfsLocationOnPremConfigArgs{
/// AgentArns: pulumi.StringArray{
/// exampleAwsDatasyncAgent.Arn,
/// },
/// },
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
/// import com.pulumi.aws.datasync.NfsLocation;
/// import com.pulumi.aws.datasync.NfsLocationArgs;
/// import com.pulumi.aws.datasync.inputs.NfsLocationOnPremConfigArgs;
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
/// var example = new NfsLocation("example", NfsLocationArgs.builder()
/// .serverHostname("nfs.example.com")
/// .subdirectory("/exported/path")
/// .onPremConfig(NfsLocationOnPremConfigArgs.builder()
/// .agentArns(exampleAwsDatasyncAgent.arn())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:datasync:NfsLocation
/// properties:
/// serverHostname: nfs.example.com
/// subdirectory: /exported/path
/// onPremConfig:
/// agentArns:
/// - ${exampleAwsDatasyncAgent.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - <span pulumi-lang-nodejs="`arn`" pulumi-lang-dotnet="`Arn`" pulumi-lang-go="`arn`" pulumi-lang-python="`arn`" pulumi-lang-yaml="`arn`" pulumi-lang-java="`arn`">`arn`</span> (String) Amazon Resource Name (ARN) of the DataSync NFS location.
///
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.datasync.NfsLocation`" pulumi-lang-dotnet="`aws.datasync.NfsLocation`" pulumi-lang-go="`datasync.NfsLocation`" pulumi-lang-python="`datasync.NfsLocation`" pulumi-lang-yaml="`aws.datasync.NfsLocation`" pulumi-lang-java="`aws.datasync.NfsLocation`">`aws.datasync.NfsLocation`</span> using the DataSync Task Amazon Resource Name (ARN). For example:
///
/// ```sh
/// $ pulumi import aws:datasync/nfsLocation:NfsLocation example arn:aws:datasync:us-east-1:123456789012:location/loc-12345678901234567
/// ```
class NfsLocation extends CustomResource {
  /// Amazon Resource Name (ARN) of the DataSync Location.
  late final Output<String> arn;

  /// Configuration block containing mount options used by DataSync to access the NFS Server.
  late final Output<NfsLocationMountOptions?> mountOptions;

  /// Configuration block containing information for connecting to the NFS File System.
  late final Output<NfsLocationOnPremConfig> onPremConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Specifies the IP address or DNS name of the NFS server. The DataSync Agent(s) use this to mount the NFS server.
  late final Output<String> serverHostname;

  /// Subdirectory to perform actions as source or destination. Should be exported by the NFS server.
  late final Output<String> subdirectory;

  /// Key-value pairs of resource tags to assign to the DataSync Location. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;
  late final Output<String> uri;

  NfsLocation(
    String name, {
    NfsLocationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datasync/nfsLocation:NfsLocation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.mountOptions = Output.createUnknown<NfsLocationMountOptions?>();
    this.onPremConfig = Output.createUnknown<NfsLocationOnPremConfig>();
    this.region = Output.createUnknown<String>();
    this.serverHostname = Output.createUnknown<String>();
    this.subdirectory = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.uri = Output.createUnknown<String>();
  }
}
