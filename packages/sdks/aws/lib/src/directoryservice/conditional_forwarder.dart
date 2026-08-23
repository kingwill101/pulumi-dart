import 'package:pulumi/pulumi.dart' as pulumi;
import 'conditional_forwarder_args.dart';
import 'conditional_forwarder_state.dart';

/// Provides a conditional forwarder for managed Microsoft AD in AWS Directory Service.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.directoryservice.ConditionalForwarder("example", {
///     directoryId: ad.id,
///     remoteDomainName: "example.com",
///     dnsIps: [
///         "8.8.8.8",
///         "8.8.4.4",
///     ],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.directoryservice.ConditionalForwarder("example",
///     directory_id=ad["id"],
///     remote_domain_name="example.com",
///     dns_ips=[
///         "8.8.8.8",
///         "8.8.4.4",
///     ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.DirectoryService.ConditionalForwarder("example", new()
///     {
///         DirectoryId = ad.Id,
///         RemoteDomainName = "example.com",
///         DnsIps = new[]
///         {
///             "8.8.8.8",
///             "8.8.4.4",
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
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := directoryservice.NewConditionalForwarder(ctx, "example", &directoryservice.ConditionalForwarderArgs{
/// 			DirectoryId:      pulumi.Any(ad.Id),
/// 			RemoteDomainName: pulumi.String("example.com"),
/// 			DnsIps: pulumi.StringArray{
/// 				pulumi.String("8.8.8.8"),
/// 				pulumi.String("8.8.4.4"),
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
/// resource "aws_directoryservice_conditionalforwarder" "example" {
///   directory_id       = ad.id
///   remote_domain_name = "example.com"
///   dns_ips            = ["8.8.8.8", "8.8.4.4"]
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.directoryservice.ConditionalForwarder;
/// import com.pulumi.aws.directoryservice.ConditionalForwarderArgs;
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
///         var example = new ConditionalForwarder("example", ConditionalForwarderArgs.builder()
///             .directoryId(ad.id())
///             .remoteDomainName("example.com")
///             .dnsIps(
///                 "8.8.8.8",
///                 "8.8.4.4")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:directoryservice:ConditionalForwarder
///     properties:
///       directoryId: ${ad.id}
///       remoteDomainName: example.com
///       dnsIps:
///         - 8.8.8.8
///         - 8.8.4.4
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import conditional forwarders using the directory id and remote_domain_name. For example:
///
/// ```sh
/// $ pulumi import aws:directoryservice/conditionalForwarder:ConditionalForwarder example d-1234567890:example.com
/// ```
class ConditionalForwarder extends pulumi.CustomResource {
  /// ID of directory.
  late final pulumi.Output<String> directoryId;
  /// A list of forwarder IP addresses.
  late final pulumi.Output<List<String>> dnsIps;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// The fully qualified domain name of the remote domain for which forwarders will be used.
  late final pulumi.Output<String> remoteDomainName;

  /// Creates a new [ConditionalForwarder].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConditionalForwarder]. {@macro pulumi_directoryservice_conditional_forwarder_conditional_forwarder_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConditionalForwarder(
    String name, {
    ConditionalForwarderArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/conditionalForwarder:ConditionalForwarder',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    directoryId = registerOutput<String>('directoryId');
    dnsIps = registerOutput<List<String>>('dnsIps');
    region = registerOutput<String>('region');
    remoteDomainName = registerOutput<String>('remoteDomainName');
  }

  /// Gets an existing [ConditionalForwarder] resource's state with the given [name] and [id].
  static ConditionalForwarder get(
    String name,
    pulumi.Input<String> id, {
    ConditionalForwarderState? state,
  }) {
    return ConditionalForwarder._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ConditionalForwarder._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:directoryservice/conditionalForwarder:ConditionalForwarder',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    directoryId = registerOutput<String>('directoryId');
    dnsIps = registerOutput<List<String>>('dnsIps');
    region = registerOutput<String>('region');
    remoteDomainName = registerOutput<String>('remoteDomainName');
  }
}
