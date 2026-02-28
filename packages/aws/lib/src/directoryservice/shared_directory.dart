import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_directory_args.dart';
import 'shared_directory_target.dart';

/// Manages a directory in your account (directory owner) shared with another account (directory consumer).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directoryservice.Directory("example", {
///     name: "tf-example",
///     password: "SuperSecretPassw0rd",
///     type: "MicrosoftAD",
///     edition: "Standard",
///     vpcSettings: {
///         vpcId: exampleAwsVpc.id,
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///     },
/// });
/// const exampleSharedDirectory = new aws.directoryservice.SharedDirectory("example", {
///     directoryId: example.id,
///     notes: "You wanna have a catch?",
///     target: {
///         id: receiver.accountId,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.Directory("example",
///     name="tf-example",
///     password="SuperSecretPassw0rd",
///     type="MicrosoftAD",
///     edition="Standard",
///     vpc_settings={
///         "vpc_id": example_aws_vpc["id"],
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///     })
/// example_shared_directory = aws.directoryservice.SharedDirectory("example",
///     directory_id=example.id,
///     notes="You wanna have a catch?",
///     target={
///         "id": receiver["accountId"],
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectoryService.Directory("example", new()
///     {
///         Name = "tf-example",
///         Password = "SuperSecretPassw0rd",
///         Type = "MicrosoftAD",
///         Edition = "Standard",
///         VpcSettings = new Aws.DirectoryService.Inputs.DirectoryVpcSettingsArgs
///         {
///             VpcId = exampleAwsVpc.Id,
///             SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///         },
///     });
///
///     var exampleSharedDirectory = new Aws.DirectoryService.SharedDirectory("example", new()
///     {
///         DirectoryId = example.Id,
///         Notes = "You wanna have a catch?",
///         Target = new Aws.DirectoryService.Inputs.SharedDirectoryTargetArgs
///         {
///             Id = receiver.AccountId,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/directoryservice"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// example, err := directoryservice.NewDirectory(ctx, "example", &directoryservice.DirectoryArgs{
/// Name: pulumi.String("tf-example"),
/// Password: pulumi.String("SuperSecretPassw0rd"),
/// Type: pulumi.String("MicrosoftAD"),
/// Edition: pulumi.String("Standard"),
/// VpcSettings: &directoryservice.DirectoryVpcSettingsArgs{
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
/// SubnetIds: []pulumi.String(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:7,17-39)),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = directoryservice.NewSharedDirectory(ctx, "example", &directoryservice.SharedDirectoryArgs{
/// DirectoryId: example.ID(),
/// Notes: pulumi.String("You wanna have a catch?"),
/// Target: &directoryservice.SharedDirectoryTargetArgs{
/// Id: pulumi.Any(receiver.AccountId),
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
/// import com.pulumi.aws.directoryservice.Directory;
/// import com.pulumi.aws.directoryservice.DirectoryArgs;
/// import com.pulumi.aws.directoryservice.inputs.DirectoryVpcSettingsArgs;
/// import com.pulumi.aws.directoryservice.SharedDirectory;
/// import com.pulumi.aws.directoryservice.SharedDirectoryArgs;
/// import com.pulumi.aws.directoryservice.inputs.SharedDirectoryTargetArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new Directory("example", DirectoryArgs.builder()
///             .name("tf-example")
///             .password("SuperSecretPassw0rd")
///             .type("MicrosoftAD")
///             .edition("Standard")
///             .vpcSettings(DirectoryVpcSettingsArgs.builder()
///                 .vpcId(exampleAwsVpc.id())
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .build())
///             .build());
///
///         var exampleSharedDirectory = new SharedDirectory("exampleSharedDirectory", SharedDirectoryArgs.builder()
///             .directoryId(example.id())
///             .notes("You wanna have a catch?")
///             .target(SharedDirectoryTargetArgs.builder()
///                 .id(receiver.accountId())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Directory Service Shared Directories using the owner directory ID/shared directory ID. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/sharedDirectory:SharedDirectory example d-1234567890/d-9267633ece
/// ```
class SharedDirectory extends pulumi.CustomResource {
  /// Identifier of the Managed Microsoft AD directory that you want to share with other accounts.
  late final pulumi.Output<String> directoryId;

  /// Method used when sharing a directory. Valid values are `ORGANIZATIONS` and `HANDSHAKE`. Default is `HANDSHAKE`.
  late final pulumi.Output<String?> method;

  /// Message sent by the directory owner to the directory consumer to help the directory consumer administrator determine whether to approve or reject the share invitation.
  late final pulumi.Output<String?> notes;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the directory that is stored in the directory consumer account that corresponds to the shared directory in the owner account.
  late final pulumi.Output<String> sharedDirectoryId;

  /// Identifier for the directory consumer account with whom the directory is to be shared. See below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<SharedDirectoryTarget> target;

  /// Creates a new [SharedDirectory].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SharedDirectory]. {@macro pulumi_directoryservice_shared_directory_shared_directory_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SharedDirectory(
    String name, {
    SharedDirectoryArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/sharedDirectory:SharedDirectory',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.directoryId = registerOutput<String>('directoryId');
    this.method = registerOutput<String?>('method');
    this.notes = registerOutput<String?>('notes');
    this.region = registerOutput<String>('region');
    this.sharedDirectoryId = registerOutput<String>('sharedDirectoryId');
    this.target = registerOutput<SharedDirectoryTarget>('target');
  }
}
