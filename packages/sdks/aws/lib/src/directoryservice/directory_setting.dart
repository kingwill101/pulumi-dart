import 'package:pulumi/pulumi.dart' as pulumi;
import 'directory_setting_args.dart';
import 'directory_setting_state.dart';
import 'directory_setting_timeouts.dart';

/// Manages a single configurable setting for an AWS Directory Service directory, such as enabling or disabling a TLS protocol version.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleDirectory = new aws.directoryservice.Directory("example", {
///     vpcSettings: {
///         vpcId: exampleAwsVpc.id,
///         subnetIds: exampleAwsSubnet.map(__item => __item.id),
///     },
///     name: "corp.example.com",
///     password: "SuperSecretPassw0rd",
///     type: "MicrosoftAD",
/// });
/// const example = new aws.directoryservice.DirectorySetting("example", {
///     directoryId: exampleDirectory.id,
///     name: "TLS_1_0",
///     value: "Disable",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_directory = aws.directoryservice.Directory("example",
///     vpc_settings={
///         "vpc_id": example_aws_vpc["id"],
///         "subnet_ids": [__item["id"] for __item in example_aws_subnet],
///     },
///     name="corp.example.com",
///     password="SuperSecretPassw0rd",
///     type="MicrosoftAD")
/// example = aws.directoryservice.DirectorySetting("example",
///     directory_id=example_directory.id,
///     name="TLS_1_0",
///     value="Disable")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleDirectory = new Aws.DirectoryService.Directory("example", new()
///     {
///         VpcSettings = new Aws.DirectoryService.Inputs.DirectoryVpcSettingsArgs
///         {
///             VpcId = exampleAwsVpc.Id,
///             SubnetIds = exampleAwsSubnet.Select(__item => __item.Id).ToList(),
///         },
///         Name = "corp.example.com",
///         Password = "SuperSecretPassw0rd",
///         Type = "MicrosoftAD",
///     });
///
///     var example = new Aws.DirectoryService.DirectorySetting("example", new()
///     {
///         DirectoryId = exampleDirectory.Id,
///         Name = "TLS_1_0",
///         Value = "Disable",
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
/// exampleDirectory, err := directoryservice.NewDirectory(ctx, "example", &directoryservice.DirectoryArgs{
/// VpcSettings: &directoryservice.DirectoryVpcSettingsArgs{
/// VpcId: pulumi.Any(exampleAwsVpc.Id),
/// SubnetIds: pulumi.StringArray(%!v(PANIC=Format method: fatal: A failure has occurred: unlowered splat expression @ example.pp:10,17-39)),
/// },
/// Name: pulumi.String("corp.example.com"),
/// Password: pulumi.String("SuperSecretPassw0rd"),
/// Type: pulumi.String("MicrosoftAD"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = directoryservice.NewDirectorySetting(ctx, "example", &directoryservice.DirectorySettingArgs{
/// DirectoryId: exampleDirectory.ID(),
/// Name: pulumi.String("TLS_1_0"),
/// Value: pulumi.String("Disable"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_directoryservice_directory_setting" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   directory_id = aws_directoryservice_directory.example.id
///   name         = "TLS_1_0"
///   value        = "Disable"
/// }
/// resource "aws_directoryservice_directory" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   vpc_settings = {
///     vpc_id     = exampleAwsVpc.id
///     subnet_ids = exampleAwsSubnet[*].id
///   }
///   name     = "corp.example.com"
///   password = "SuperSecretPassw0rd"
///   type     = "MicrosoftAD"
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
/// import com.pulumi.aws.directoryservice.DirectorySetting;
/// import com.pulumi.aws.directoryservice.DirectorySettingArgs;
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
///         var exampleDirectory = new Directory("exampleDirectory", DirectoryArgs.builder()
///             .vpcSettings(DirectoryVpcSettingsArgs.builder()
///                 .vpcId(exampleAwsVpc.get("id"))
///                 .subnetIds(exampleAwsSubnet.stream().map(element -> element.get("id")).collect(toList()))
///                 .build())
///             .name("corp.example.com")
///             .password("SuperSecretPassw0rd")
///             .type("MicrosoftAD")
///             .build());
///
///         var example = new DirectorySetting("example", DirectorySettingArgs.builder()
///             .directoryId(exampleDirectory.id())
///             .name("TLS_1_0")
///             .value("Disable")
///             .build());
///
///     }
/// }
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `directoryId` (String) ID of the directory.
/// * `name` (String) Name of the directory setting.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import a directory setting using `directory_id,name`. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/directorySetting:DirectorySetting example d-1234567890,TLS_1_0
/// ```
class DirectorySetting extends pulumi.CustomResource {
  /// ID of the directory.
  late final pulumi.Output<String> directoryId;
  /// Name of the directory setting. For example, `TLS_1_0`.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<DirectorySettingTimeouts?> timeouts;
  /// Type of the directory setting.
  late final pulumi.Output<String> type;
  /// Value of the directory setting. For example, `Disable` or `Enable`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> value;

  /// Creates a new [DirectorySetting].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DirectorySetting]. {@macro pulumi_directoryservice_directory_setting_directory_setting_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DirectorySetting(
    String name, {
    DirectorySettingArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/directorySetting:DirectorySetting',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.54.0').merge(options),
        ) {
    directoryId = registerOutput<String>('directoryId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    timeouts = registerOutput<DirectorySettingTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectorySettingTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }

  /// Gets an existing [DirectorySetting] resource's state with the given [name] and [id].
  static DirectorySetting get(
    String name,
    pulumi.Input<String> id, {
    DirectorySettingState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return DirectorySetting._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  DirectorySetting._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/directorySetting:DirectorySetting',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    directoryId = registerOutput<String>('directoryId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    timeouts = registerOutput<DirectorySettingTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectorySettingTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }

  /// Creates a typed reference to an existing [DirectorySetting] resource.
  DirectorySetting.reference(String urn)
    : super(
        'aws:directoryservice/directorySetting:DirectorySetting',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    directoryId = registerOutput<String>('directoryId');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    timeouts = registerOutput<DirectorySettingTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return DirectorySettingTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    value = registerOutput<String>('value');
  }
}
