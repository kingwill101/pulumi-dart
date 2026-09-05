import 'package:pulumi/pulumi.dart' as pulumi;
import 'shared_directory_args.dart';
import 'shared_directory_state.dart';
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
///     vpcSettings: {
///         vpcId: exampleAwsVpc.id,
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///     },
///     name: "tf-example",
///     password: "SuperSecretPassw0rd",
///     type: "MicrosoftAD",
///     edition: "Standard",
/// });
/// const exampleSharedDirectory = new aws.directoryservice.SharedDirectory("example", {
///     target: {
///         id: receiver.accountId,
///     },
///     directoryId: example.id,
///     notes: "You wanna have a catch?",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.Directory("example",
///     vpc_settings={
///         "vpc_id": example_aws_vpc["id"],
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///     },
///     name="tf-example",
///     password="SuperSecretPassw0rd",
///     type="MicrosoftAD",
///     edition="Standard")
/// example_shared_directory = aws.directoryservice.SharedDirectory("example",
///     target={
///         "id": receiver["accountId"],
///     },
///     directory_id=example.id,
///     notes="You wanna have a catch?")
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
///         VpcSettings = new Aws.DirectoryService.Inputs.DirectoryVpcSettingsArgs
///         {
///             VpcId = exampleAwsVpc.Id,
///             SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///         },
///         Name = "tf-example",
///         Password = "SuperSecretPassw0rd",
///         Type = "MicrosoftAD",
///         Edition = "Standard",
///     });
///
///     var exampleSharedDirectory = new Aws.DirectoryService.SharedDirectory("example", new()
///     {
///         Target = new Aws.DirectoryService.Inputs.SharedDirectoryTargetArgs
///         {
///             Id = receiver.AccountId,
///         },
///         DirectoryId = example.Id,
///         Notes = "You wanna have a catch?",
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
/// VpcSettings: &directoryservice.DirectoryVpcSettingsArgs{
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:3,17-39)),
/// },
/// Name: pulumi.String("tf-example"),
/// Password: pulumi.String("SuperSecretPassw0rd"),
/// Type: pulumi.String("MicrosoftAD"),
/// Edition: pulumi.String("Standard"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = directoryservice.NewSharedDirectory(ctx, "example", &directoryservice.SharedDirectoryArgs{
/// Target: &directoryservice.SharedDirectoryTargetArgs{
/// Id: pulumi.Any(receiver.AccountId),
/// },
/// DirectoryId: example.ID().ToIDOutput().ToStringOutput(),
/// Notes: pulumi.String("You wanna have a catch?"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_directoryservice_directory" "example" {
///   vpc_settings = {
///     vpc_id     = exampleAwsVpc.id
///     subnet_ids = exampleAwsSubnet[*].id
///   }
///   name     = "tf-example"
///   password = "SuperSecretPassw0rd"
///   type     = "MicrosoftAD"
///   edition  = "Standard"
/// }
/// resource "aws_directoryservice_shareddirectory" "example" {
///   target = {
///     id = receiver.accountId
///   }
///   directory_id = aws_directoryservice_directory.example.id
///   notes        = "You wanna have a catch?"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///             .vpcSettings(DirectoryVpcSettingsArgs.builder()
///                 .vpcId(exampleAwsVpc.id())
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.id()).collect(toList()))
///                 .build())
///             .name("tf-example")
///             .password("SuperSecretPassw0rd")
///             .type("MicrosoftAD")
///             .edition("Standard")
///             .build());
///
///         var exampleSharedDirectory = new SharedDirectory("exampleSharedDirectory", SharedDirectoryArgs.builder()
///             .target(SharedDirectoryTargetArgs.builder()
///                 .id(receiver.accountId())
///                 .build())
///             .directoryId(example.id())
///             .notes("You wanna have a catch?")
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
          additionalSecretOutputs: const ['notes'],
        ) {
    directoryId = registerOutput<String>('directoryId');
    method = registerOutput<String?>('method');
    notes = registerOutput<String?>('notes', isSecret: true);
    region = registerOutput<String>('region');
    sharedDirectoryId = registerOutput<String>('sharedDirectoryId');
    target = registerOutput<SharedDirectoryTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SharedDirectoryTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [SharedDirectory] resource's state with the given [name] and [id].
  static SharedDirectory get(
    String name,
    pulumi.Input<String> id, {
    SharedDirectoryState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return SharedDirectory._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  SharedDirectory._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/sharedDirectory:SharedDirectory',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    directoryId = registerOutput<String>('directoryId');
    method = registerOutput<String?>('method');
    notes = registerOutput<String?>('notes', isSecret: true);
    region = registerOutput<String>('region');
    sharedDirectoryId = registerOutput<String>('sharedDirectoryId');
    target = registerOutput<SharedDirectoryTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SharedDirectoryTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [SharedDirectory] resource.
  SharedDirectory.reference(String urn)
    : super(
        'aws:directoryservice/sharedDirectory:SharedDirectory',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
          additionalSecretOutputs: const ['notes'],
        isResourceReference: true,
      ) {
    directoryId = registerOutput<String>('directoryId');
    method = registerOutput<String?>('method');
    notes = registerOutput<String?>('notes', isSecret: true);
    region = registerOutput<String>('region');
    sharedDirectoryId = registerOutput<String>('sharedDirectoryId');
    target = registerOutput<SharedDirectoryTarget>('target', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SharedDirectoryTarget.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
