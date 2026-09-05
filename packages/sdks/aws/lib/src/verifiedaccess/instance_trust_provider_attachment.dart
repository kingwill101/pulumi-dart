import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_trust_provider_attachment_args.dart';
import 'instance_trust_provider_attachment_state.dart';

/// Resource for managing a Verified Access Instance Trust Provider Attachment.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Instance("example", {});
/// const exampleTrustProvider = new aws.verifiedaccess.TrustProvider("example", {
///     deviceOptions: {
///         tenantId: "example",
///     },
///     deviceTrustProviderType: "jamf",
///     policyReferenceName: "example",
///     trustProviderType: "device",
/// });
/// const exampleInstanceTrustProviderAttachment = new aws.verifiedaccess.InstanceTrustProviderAttachment("example", {
///     verifiedaccessInstanceId: example.id,
///     verifiedaccessTrustProviderId: exampleTrustProvider.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Instance("example")
/// example_trust_provider = aws.verifiedaccess.TrustProvider("example",
///     device_options={
///         "tenant_id": "example",
///     },
///     device_trust_provider_type="jamf",
///     policy_reference_name="example",
///     trust_provider_type="device")
/// example_instance_trust_provider_attachment = aws.verifiedaccess.InstanceTrustProviderAttachment("example",
///     verifiedaccess_instance_id=example.id,
///     verifiedaccess_trust_provider_id=example_trust_provider.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.Instance("example");
///
///     var exampleTrustProvider = new Aws.VerifiedAccess.TrustProvider("example", new()
///     {
///         DeviceOptions = new Aws.VerifiedAccess.Inputs.TrustProviderDeviceOptionsArgs
///         {
///             TenantId = "example",
///         },
///         DeviceTrustProviderType = "jamf",
///         PolicyReferenceName = "example",
///         TrustProviderType = "device",
///     });
///
///     var exampleInstanceTrustProviderAttachment = new Aws.VerifiedAccess.InstanceTrustProviderAttachment("example", new()
///     {
///         VerifiedaccessInstanceId = example.Id,
///         VerifiedaccessTrustProviderId = exampleTrustProvider.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/verifiedaccess"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := verifiedaccess.NewInstance(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleTrustProvider, err := verifiedaccess.NewTrustProvider(ctx, "example", &verifiedaccess.TrustProviderArgs{
/// 			DeviceOptions: &verifiedaccess.TrustProviderDeviceOptionsArgs{
/// 				TenantId: pulumi.String("example"),
/// 			},
/// 			DeviceTrustProviderType: pulumi.String("jamf"),
/// 			PolicyReferenceName:     pulumi.String("example"),
/// 			TrustProviderType:       pulumi.String("device"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = verifiedaccess.NewInstanceTrustProviderAttachment(ctx, "example", &verifiedaccess.InstanceTrustProviderAttachmentArgs{
/// 			VerifiedaccessInstanceId:      example.ID().ToIDOutput().ToStringOutput(),
/// 			VerifiedaccessTrustProviderId: exampleTrustProvider.ID().ToIDOutput().ToStringOutput(),
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
/// resource "aws_verifiedaccess_instance" "example" {
/// }
/// resource "aws_verifiedaccess_trustprovider" "example" {
///   device_options = {
///     tenant_id = "example"
///   }
///   device_trust_provider_type = "jamf"
///   policy_reference_name      = "example"
///   trust_provider_type        = "device"
/// }
/// resource "aws_verifiedaccess_instancetrustproviderattachment" "example" {
///   verifiedaccess_instance_id       = aws_verifiedaccess_instance.example.id
///   verifiedaccess_trust_provider_id = aws_verifiedaccess_trustprovider.example.id
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.verifiedaccess.Instance;
/// import com.pulumi.aws.verifiedaccess.TrustProvider;
/// import com.pulumi.aws.verifiedaccess.TrustProviderArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.TrustProviderDeviceOptionsArgs;
/// import com.pulumi.aws.verifiedaccess.InstanceTrustProviderAttachment;
/// import com.pulumi.aws.verifiedaccess.InstanceTrustProviderAttachmentArgs;
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
///         var example = new Instance("example");
///
///         var exampleTrustProvider = new TrustProvider("exampleTrustProvider", TrustProviderArgs.builder()
///             .deviceOptions(TrustProviderDeviceOptionsArgs.builder()
///                 .tenantId("example")
///                 .build())
///             .deviceTrustProviderType("jamf")
///             .policyReferenceName("example")
///             .trustProviderType("device")
///             .build());
///
///         var exampleInstanceTrustProviderAttachment = new InstanceTrustProviderAttachment("exampleInstanceTrustProviderAttachment", InstanceTrustProviderAttachmentArgs.builder()
///             .verifiedaccessInstanceId(example.id())
///             .verifiedaccessTrustProviderId(exampleTrustProvider.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:Instance
///   exampleTrustProvider:
///     type: aws:verifiedaccess:TrustProvider
///     name: example
///     properties:
///       deviceOptions:
///         tenantId: example
///       deviceTrustProviderType: jamf
///       policyReferenceName: example
///       trustProviderType: device
///   exampleInstanceTrustProviderAttachment:
///     type: aws:verifiedaccess:InstanceTrustProviderAttachment
///     name: example
///     properties:
///       verifiedaccessInstanceId: ${example.id}
///       verifiedaccessTrustProviderId: ${exampleTrustProvider.id}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Access Instance Trust Provider Attachments using the `verifiedaccessInstanceId` and `verifiedaccessTrustProviderId` separated by a forward slash (`/`). For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/instanceTrustProviderAttachment:InstanceTrustProviderAttachment example vai-1234567890abcdef0/vatp-8012925589
/// ```
class InstanceTrustProviderAttachment extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The ID of the Verified Access instance to attach the Trust Provider to.
  late final pulumi.Output<String> verifiedaccessInstanceId;
  /// The ID of the Verified Access trust provider.
  late final pulumi.Output<String> verifiedaccessTrustProviderId;

  /// Creates a new [InstanceTrustProviderAttachment].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InstanceTrustProviderAttachment]. {@macro pulumi_verifiedaccess_instance_trust_provider_attachment_instance_trust_provider_attachment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InstanceTrustProviderAttachment(
    String name, {
    InstanceTrustProviderAttachmentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instanceTrustProviderAttachment:InstanceTrustProviderAttachment',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    region = registerOutput<String>('region');
    verifiedaccessInstanceId = registerOutput<String>('verifiedaccessInstanceId');
    verifiedaccessTrustProviderId = registerOutput<String>('verifiedaccessTrustProviderId');
  }

  /// Gets an existing [InstanceTrustProviderAttachment] resource's state with the given [name] and [id].
  static InstanceTrustProviderAttachment get(
    String name,
    pulumi.Input<String> id, {
    InstanceTrustProviderAttachmentState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InstanceTrustProviderAttachment._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InstanceTrustProviderAttachment._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:verifiedaccess/instanceTrustProviderAttachment:InstanceTrustProviderAttachment',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    region = registerOutput<String>('region');
    verifiedaccessInstanceId = registerOutput<String>('verifiedaccessInstanceId');
    verifiedaccessTrustProviderId = registerOutput<String>('verifiedaccessTrustProviderId');
  }

  /// Creates a typed reference to an existing [InstanceTrustProviderAttachment] resource.
  InstanceTrustProviderAttachment.reference(String urn)
    : super(
        'aws:verifiedaccess/instanceTrustProviderAttachment:InstanceTrustProviderAttachment',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    region = registerOutput<String>('region');
    verifiedaccessInstanceId = registerOutput<String>('verifiedaccessInstanceId');
    verifiedaccessTrustProviderId = registerOutput<String>('verifiedaccessTrustProviderId');
  }
}
