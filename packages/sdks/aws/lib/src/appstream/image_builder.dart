import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_builder_args.dart';
import 'image_builder_domain_join_info.dart';
import 'image_builder_state.dart';
import 'image_builder_vpc_config.dart';

/// Provides an AppStream image builder.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const testFleet = new aws.appstream.ImageBuilder("test_fleet", {
///     name: "Name",
///     description: "Description of a ImageBuilder",
///     displayName: "Display name of a ImageBuilder",
///     enableDefaultInternetAccess: false,
///     imageName: "AppStream-WinServer2019-10-05-2022",
///     instanceType: "stream.standard.large",
///     vpcConfig: {
///         subnetIds: [example.id],
///     },
///     tags: {
///         Name: "Example Image Builder",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test_fleet = aws.appstream.ImageBuilder("test_fleet",
///     name="Name",
///     description="Description of a ImageBuilder",
///     display_name="Display name of a ImageBuilder",
///     enable_default_internet_access=False,
///     image_name="AppStream-WinServer2019-10-05-2022",
///     instance_type="stream.standard.large",
///     vpc_config={
///         "subnet_ids": [example["id"]],
///     },
///     tags={
///         "Name": "Example Image Builder",
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
///     var testFleet = new Aws.AppStream.ImageBuilder("test_fleet", new()
///     {
///         Name = "Name",
///         Description = "Description of a ImageBuilder",
///         DisplayName = "Display name of a ImageBuilder",
///         EnableDefaultInternetAccess = false,
///         ImageName = "AppStream-WinServer2019-10-05-2022",
///         InstanceType = "stream.standard.large",
///         VpcConfig = new Aws.AppStream.Inputs.ImageBuilderVpcConfigArgs
///         {
///             SubnetIds = new[]
///             {
///                 example.Id,
///             },
///         },
///         Tags =
///         {
///             { "Name", "Example Image Builder" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/appstream"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appstream.NewImageBuilder(ctx, "test_fleet", &appstream.ImageBuilderArgs{
/// 			Name:                        pulumi.String("Name"),
/// 			Description:                 pulumi.String("Description of a ImageBuilder"),
/// 			DisplayName:                 pulumi.String("Display name of a ImageBuilder"),
/// 			EnableDefaultInternetAccess: pulumi.Bool(false),
/// 			ImageName:                   pulumi.String("AppStream-WinServer2019-10-05-2022"),
/// 			InstanceType:                pulumi.String("stream.standard.large"),
/// 			VpcConfig: &appstream.ImageBuilderVpcConfigArgs{
/// 				SubnetIds: pulumi.StringArray{
/// 					example.Id,
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Example Image Builder"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
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
/// resource "aws_appstream_imagebuilder" "test_fleet" {
///   name                           = "Name"
///   description                    = "Description of a ImageBuilder"
///   display_name                   = "Display name of a ImageBuilder"
///   enable_default_internet_access = false
///   image_name                     = "AppStream-WinServer2019-10-05-2022"
///   instance_type                  = "stream.standard.large"
///   vpc_config = {
///     subnet_ids = [example.id]
///   }
///   tags = {
///     "Name" = "Example Image Builder"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.appstream.ImageBuilder;
/// import com.pulumi.aws.appstream.ImageBuilderArgs;
/// import com.pulumi.aws.appstream.inputs.ImageBuilderVpcConfigArgs;
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
///         var testFleet = new ImageBuilder("testFleet", ImageBuilderArgs.builder()
///             .name("Name")
///             .description("Description of a ImageBuilder")
///             .displayName("Display name of a ImageBuilder")
///             .enableDefaultInternetAccess(false)
///             .imageName("AppStream-WinServer2019-10-05-2022")
///             .instanceType("stream.standard.large")
///             .vpcConfig(ImageBuilderVpcConfigArgs.builder()
///                 .subnetIds(example.id())
///                 .build())
///             .tags(Map.of("Name", "Example Image Builder"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   testFleet:
///     type: aws:appstream:ImageBuilder
///     name: test_fleet
///     properties:
///       name: Name
///       description: Description of a ImageBuilder
///       displayName: Display name of a ImageBuilder
///       enableDefaultInternetAccess: false
///       imageName: AppStream-WinServer2019-10-05-2022
///       instanceType: stream.standard.large
///       vpcConfig:
///         subnetIds:
///           - ${example.id}
///       tags:
///         Name: Example Image Builder
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.appstream.ImageBuilder` using the `name`. For example:
///
/// ```sh
/// $ pulumi import aws:appstream/imageBuilder:ImageBuilder example imageBuilderExample
/// ```
class ImageBuilder extends pulumi.CustomResource {
  /// Set of interface VPC endpoint (interface endpoint) objects. Maximum of 4. See below.
  late final pulumi.Output<List<Map<String, dynamic>>?> accessEndpoints;
  /// Version of the AppStream 2.0 agent to use for this image builder.
  late final pulumi.Output<String> appstreamAgentVersion;
  /// ARN of the appstream image builder.
  late final pulumi.Output<String> arn;
  /// Date and time, in UTC and extended RFC 3339 format, when the image builder was created.
  late final pulumi.Output<String> createdTime;
  /// Description to display.
  late final pulumi.Output<String> description;
  /// Human-readable friendly name for the AppStream image builder.
  late final pulumi.Output<String> displayName;
  /// Configuration block for the name of the directory and organizational unit (OU) to use to join the image builder to a Microsoft Active Directory domain. See below.
  late final pulumi.Output<ImageBuilderDomainJoinInfo> domainJoinInfo;
  /// Enables or disables default internet access for the image builder.
  late final pulumi.Output<bool> enableDefaultInternetAccess;
  /// ARN of the IAM role to apply to the image builder.
  late final pulumi.Output<String> iamRoleArn;
  /// ARN of the public, private, or shared image to use.
  late final pulumi.Output<String> imageArn;
  /// Name of the image used to create the image builder.
  late final pulumi.Output<String> imageName;
  /// Instance type to use when launching the image builder.
  late final pulumi.Output<String> instanceType;
  /// Unique name for the image builder.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// State of the image builder. For valid values, refer to the [AWS documentation](https://docs.aws.amazon.com/appstream2/latest/APIReference/API_ImageBuilder.html#AppStream2-Type-ImageBuilder-State).
  late final pulumi.Output<String> state;
  /// Map of tags to assign to the instance. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Configuration block for the VPC configuration for the image builder. See below.
  late final pulumi.Output<ImageBuilderVpcConfig> vpcConfig;

  /// Creates a new [ImageBuilder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ImageBuilder]. {@macro pulumi_appstream_image_builder_image_builder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ImageBuilder(
    String name, {
    ImageBuilderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/imageBuilder:ImageBuilder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessEndpoints = registerOutput<List<Map<String, dynamic>>?>('accessEndpoints');
    appstreamAgentVersion = registerOutput<String>('appstreamAgentVersion');
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    domainJoinInfo = registerOutput<ImageBuilderDomainJoinInfo>('domainJoinInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageBuilderDomainJoinInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableDefaultInternetAccess = registerOutput<bool>('enableDefaultInternetAccess');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    imageArn = registerOutput<String>('imageArn');
    imageName = registerOutput<String>('imageName');
    instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcConfig = registerOutput<ImageBuilderVpcConfig>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageBuilderVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [ImageBuilder] resource's state with the given [name] and [id].
  static ImageBuilder get(
    String name,
    pulumi.Input<String> id, {
    ImageBuilderState? state,
  }) {
    return ImageBuilder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ImageBuilder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:appstream/imageBuilder:ImageBuilder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessEndpoints = registerOutput<List<Map<String, dynamic>>?>('accessEndpoints');
    appstreamAgentVersion = registerOutput<String>('appstreamAgentVersion');
    arn = registerOutput<String>('arn');
    createdTime = registerOutput<String>('createdTime');
    description = registerOutput<String>('description');
    displayName = registerOutput<String>('displayName');
    domainJoinInfo = registerOutput<ImageBuilderDomainJoinInfo>('domainJoinInfo', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageBuilderDomainJoinInfo.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    enableDefaultInternetAccess = registerOutput<bool>('enableDefaultInternetAccess');
    iamRoleArn = registerOutput<String>('iamRoleArn');
    imageArn = registerOutput<String>('imageArn');
    imageName = registerOutput<String>('imageName');
    instanceType = registerOutput<String>('instanceType');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    this.state = registerOutput<String>('state');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    vpcConfig = registerOutput<ImageBuilderVpcConfig>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ImageBuilderVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
