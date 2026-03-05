import 'package:pulumi/pulumi.dart' as pulumi;
import 'hsm_configuration_args.dart';
import 'hsm_configuration_state.dart';

/// Creates an HSM configuration that contains the information required by an Amazon Redshift cluster to store and use database encryption keys in a Hardware Security Module (HSM).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.redshift.HsmConfiguration("example", {
///     description: "example",
///     hsmConfigurationIdentifier: "example",
///     hsmIpAddress: "10.0.0.1",
///     hsmPartitionName: "aws",
///     hsmPartitionPassword: "example",
///     hsmServerPublicCertificate: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.redshift.HsmConfiguration("example",
///     description="example",
///     hsm_configuration_identifier="example",
///     hsm_ip_address="10.0.0.1",
///     hsm_partition_name="aws",
///     hsm_partition_password="example",
///     hsm_server_public_certificate="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.RedShift.HsmConfiguration("example", new()
///     {
///         Description = "example",
///         HsmConfigurationIdentifier = "example",
///         HsmIpAddress = "10.0.0.1",
///         HsmPartitionName = "aws",
///         HsmPartitionPassword = "example",
///         HsmServerPublicCertificate = "example",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/redshift"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := redshift.NewHsmConfiguration(ctx, "example", &redshift.HsmConfigurationArgs{
/// 			Description:                pulumi.String("example"),
/// 			HsmConfigurationIdentifier: pulumi.String("example"),
/// 			HsmIpAddress:               pulumi.String("10.0.0.1"),
/// 			HsmPartitionName:           pulumi.String("aws"),
/// 			HsmPartitionPassword:       pulumi.String("example"),
/// 			HsmServerPublicCertificate: pulumi.String("example"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.redshift.HsmConfiguration;
/// import com.pulumi.aws.redshift.HsmConfigurationArgs;
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
///         var example = new HsmConfiguration("example", HsmConfigurationArgs.builder()
///             .description("example")
///             .hsmConfigurationIdentifier("example")
///             .hsmIpAddress("10.0.0.1")
///             .hsmPartitionName("aws")
///             .hsmPartitionPassword("example")
///             .hsmServerPublicCertificate("example")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:redshift:HsmConfiguration
///     properties:
///       description: example
///       hsmConfigurationIdentifier: example
///       hsmIpAddress: 10.0.0.1
///       hsmPartitionName: aws
///       hsmPartitionPassword: example
///       hsmServerPublicCertificate: example
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Redshift HSM Client Certificates using `hsm_configuration_identifier`. For example:
///
/// ```sh
/// $ pulumi import aws:redshift/hsmConfiguration:HsmConfiguration example example
/// ```
class HsmConfiguration extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the Hsm Client Certificate.
  late final pulumi.Output<String> arn;
  /// A text description of the HSM configuration to be created.
  late final pulumi.Output<String> description;
  /// The identifier to be assigned to the new Amazon Redshift HSM configuration.
  late final pulumi.Output<String> hsmConfigurationIdentifier;
  /// The IP address that the Amazon Redshift cluster must use to access the HSM.
  late final pulumi.Output<String> hsmIpAddress;
  /// The name of the partition in the HSM where the Amazon Redshift clusters will store their database encryption keys.
  late final pulumi.Output<String> hsmPartitionName;
  /// The password required to access the HSM partition.
  late final pulumi.Output<String> hsmPartitionPassword;
  /// The HSMs public certificate file. When using Cloud HSM, the file name is server.pem.
  late final pulumi.Output<String> hsmServerPublicCertificate;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [HsmConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HsmConfiguration]. {@macro pulumi_redshift_hsm_configuration_hsm_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HsmConfiguration(
    String name, {
    HsmConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/hsmConfiguration:HsmConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    hsmConfigurationIdentifier = registerOutput<String>('hsmConfigurationIdentifier');
    hsmIpAddress = registerOutput<String>('hsmIpAddress');
    hsmPartitionName = registerOutput<String>('hsmPartitionName');
    hsmPartitionPassword = registerOutput<String>('hsmPartitionPassword');
    hsmServerPublicCertificate = registerOutput<String>('hsmServerPublicCertificate');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [HsmConfiguration] resource's state with the given [name] and [id].
  static HsmConfiguration get(
    String name,
    pulumi.Input<String> id, {
    HsmConfigurationState? state,
  }) {
    return HsmConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  HsmConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:redshift/hsmConfiguration:HsmConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    description = registerOutput<String>('description');
    hsmConfigurationIdentifier = registerOutput<String>('hsmConfigurationIdentifier');
    hsmIpAddress = registerOutput<String>('hsmIpAddress');
    hsmPartitionName = registerOutput<String>('hsmPartitionName');
    hsmPartitionPassword = registerOutput<String>('hsmPartitionPassword');
    hsmServerPublicCertificate = registerOutput<String>('hsmServerPublicCertificate');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
