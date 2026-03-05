import 'package:pulumi/pulumi.dart' as pulumi;
import 'endpoint_args.dart';
import 'endpoint_cidr_options.dart';
import 'endpoint_load_balancer_options.dart';
import 'endpoint_network_interface_options.dart';
import 'endpoint_rds_options.dart';
import 'endpoint_sse_specification.dart';
import 'endpoint_state.dart';

/// Resource for managing an AWS EC2 (Elastic Compute Cloud) Verified Access Endpoint.
///
/// ## Example Usage
///
/// ### ALB Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Endpoint("example", {
///     applicationDomain: "example.com",
///     attachmentType: "vpc",
///     description: "example",
///     domainCertificateArn: exampleAwsAcmCertificate.arn,
///     endpointDomainPrefix: "example",
///     endpointType: "load-balancer",
///     loadBalancerOptions: {
///         loadBalancerArn: exampleAwsLb.arn,
///         port: 443,
///         protocol: "https",
///         subnetIds: .map(subnet => (subnet.id)),
///     },
///     securityGroupIds: [exampleAwsSecurityGroup.id],
///     verifiedAccessGroupId: exampleAwsVerifiedaccessGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Endpoint("example",
///     application_domain="example.com",
///     attachment_type="vpc",
///     description="example",
///     domain_certificate_arn=example_aws_acm_certificate["arn"],
///     endpoint_domain_prefix="example",
///     endpoint_type="load-balancer",
///     load_balancer_options={
///         "load_balancer_arn": example_aws_lb["arn"],
///         "port": 443,
///         "protocol": "https",
///         "subnet_ids": [subnet["id"] for subnet in public],
///     },
///     security_group_ids=[example_aws_security_group["id"]],
///     verified_access_group_id=example_aws_verifiedaccess_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.Endpoint("example", new()
///     {
///         ApplicationDomain = "example.com",
///         AttachmentType = "vpc",
///         Description = "example",
///         DomainCertificateArn = exampleAwsAcmCertificate.Arn,
///         EndpointDomainPrefix = "example",
///         EndpointType = "load-balancer",
///         LoadBalancerOptions = new Aws.VerifiedAccess.Inputs.EndpointLoadBalancerOptionsArgs
///         {
///             LoadBalancerArn = exampleAwsLb.Arn,
///             Port = 443,
///             Protocol = "https",
///             SubnetIds = .Select(subnet =>
///             {
///                 return subnet.Id;
///             }).ToList(),
///         },
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         VerifiedAccessGroupId = exampleAwsVerifiedaccessGroup.Id,
///     });
///
/// });
/// ```
///
///
/// ### Network Interface Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Endpoint("example", {
///     applicationDomain: "example.com",
///     attachmentType: "vpc",
///     description: "example",
///     domainCertificateArn: exampleAwsAcmCertificate.arn,
///     endpointDomainPrefix: "example",
///     endpointType: "network-interface",
///     networkInterfaceOptions: {
///         networkInterfaceId: exampleAwsNetworkInterface.id,
///         port: 443,
///         protocol: "https",
///     },
///     securityGroupIds: [exampleAwsSecurityGroup.id],
///     verifiedAccessGroupId: exampleAwsVerifiedaccessGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Endpoint("example",
///     application_domain="example.com",
///     attachment_type="vpc",
///     description="example",
///     domain_certificate_arn=example_aws_acm_certificate["arn"],
///     endpoint_domain_prefix="example",
///     endpoint_type="network-interface",
///     network_interface_options={
///         "network_interface_id": example_aws_network_interface["id"],
///         "port": 443,
///         "protocol": "https",
///     },
///     security_group_ids=[example_aws_security_group["id"]],
///     verified_access_group_id=example_aws_verifiedaccess_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.Endpoint("example", new()
///     {
///         ApplicationDomain = "example.com",
///         AttachmentType = "vpc",
///         Description = "example",
///         DomainCertificateArn = exampleAwsAcmCertificate.Arn,
///         EndpointDomainPrefix = "example",
///         EndpointType = "network-interface",
///         NetworkInterfaceOptions = new Aws.VerifiedAccess.Inputs.EndpointNetworkInterfaceOptionsArgs
///         {
///             NetworkInterfaceId = exampleAwsNetworkInterface.Id,
///             Port = 443,
///             Protocol = "https",
///         },
///         SecurityGroupIds = new[]
///         {
///             exampleAwsSecurityGroup.Id,
///         },
///         VerifiedAccessGroupId = exampleAwsVerifiedaccessGroup.Id,
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
/// 		_, err := verifiedaccess.NewEndpoint(ctx, "example", &verifiedaccess.EndpointArgs{
/// 			ApplicationDomain:    pulumi.String("example.com"),
/// 			AttachmentType:       pulumi.String("vpc"),
/// 			Description:          pulumi.String("example"),
/// 			DomainCertificateArn: pulumi.Any(exampleAwsAcmCertificate.Arn),
/// 			EndpointDomainPrefix: pulumi.String("example"),
/// 			EndpointType:         pulumi.String("network-interface"),
/// 			NetworkInterfaceOptions: &verifiedaccess.EndpointNetworkInterfaceOptionsArgs{
/// 				NetworkInterfaceId: pulumi.Any(exampleAwsNetworkInterface.Id),
/// 				Port:               pulumi.Int(443),
/// 				Protocol:           pulumi.String("https"),
/// 			},
/// 			SecurityGroupIds: pulumi.StringArray{
/// 				exampleAwsSecurityGroup.Id,
/// 			},
/// 			VerifiedAccessGroupId: pulumi.Any(exampleAwsVerifiedaccessGroup.Id),
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
/// import com.pulumi.aws.verifiedaccess.Endpoint;
/// import com.pulumi.aws.verifiedaccess.EndpointArgs;
/// import com.pulumi.aws.verifiedaccess.inputs.EndpointNetworkInterfaceOptionsArgs;
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
///         var example = new Endpoint("example", EndpointArgs.builder()
///             .applicationDomain("example.com")
///             .attachmentType("vpc")
///             .description("example")
///             .domainCertificateArn(exampleAwsAcmCertificate.arn())
///             .endpointDomainPrefix("example")
///             .endpointType("network-interface")
///             .networkInterfaceOptions(EndpointNetworkInterfaceOptionsArgs.builder()
///                 .networkInterfaceId(exampleAwsNetworkInterface.id())
///                 .port(443)
///                 .protocol("https")
///                 .build())
///             .securityGroupIds(exampleAwsSecurityGroup.id())
///             .verifiedAccessGroupId(exampleAwsVerifiedaccessGroup.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:verifiedaccess:Endpoint
///     properties:
///       applicationDomain: example.com
///       attachmentType: vpc
///       description: example
///       domainCertificateArn: ${exampleAwsAcmCertificate.arn}
///       endpointDomainPrefix: example
///       endpointType: network-interface
///       networkInterfaceOptions:
///         networkInterfaceId: ${exampleAwsNetworkInterface.id}
///         port: 443
///         protocol: https
///       securityGroupIds:
///         - ${exampleAwsSecurityGroup.id}
///       verifiedAccessGroupId: ${exampleAwsVerifiedaccessGroup.id}
/// ```
///
///
/// ### Cidr Example
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.verifiedaccess.Endpoint("example", {
///     attachmentType: "vpc",
///     description: "example",
///     endpointType: "cidr",
///     cidrOptions: {
///         cidr: test[0].cidrBlock,
///         portRanges: [{
///             fromPort: 443,
///             toPort: 443,
///         }],
///         protocol: "tcp",
///         subnetIds: .map(subnet => (subnet.id)),
///     },
///     securityGroupIds: [testAwsSecurityGroup.id],
///     verifiedAccessGroupId: testAwsVerifiedaccessGroup.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.verifiedaccess.Endpoint("example",
///     attachment_type="vpc",
///     description="example",
///     endpoint_type="cidr",
///     cidr_options={
///         "cidr": test[0]["cidrBlock"],
///         "port_ranges": [{
///             "from_port": 443,
///             "to_port": 443,
///         }],
///         "protocol": "tcp",
///         "subnet_ids": [subnet["id"] for subnet in test],
///     },
///     security_group_ids=[test_aws_security_group["id"]],
///     verified_access_group_id=test_aws_verifiedaccess_group["id"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.VerifiedAccess.Endpoint("example", new()
///     {
///         AttachmentType = "vpc",
///         Description = "example",
///         EndpointType = "cidr",
///         CidrOptions = new Aws.VerifiedAccess.Inputs.EndpointCidrOptionsArgs
///         {
///             Cidr = test[0].CidrBlock,
///             PortRanges = new[]
///             {
///                 new Aws.VerifiedAccess.Inputs.EndpointCidrOptionsPortRangeArgs
///                 {
///                     FromPort = 443,
///                     ToPort = 443,
///                 },
///             },
///             Protocol = "tcp",
///             SubnetIds = .Select(subnet =>
///             {
///                 return subnet.Id;
///             }).ToList(),
///         },
///         SecurityGroupIds = new[]
///         {
///             testAwsSecurityGroup.Id,
///         },
///         VerifiedAccessGroupId = testAwsVerifiedaccessGroup.Id,
///     });
///
/// });
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Verified Access Instances using the  `id`. For example:
///
/// ```sh
/// $ pulumi import aws:verifiedaccess/endpoint:Endpoint example vae-8012925589
/// ```
class Endpoint extends pulumi.CustomResource {
  /// The DNS name for users to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  late final pulumi.Output<String?> applicationDomain;

  /// The type of attachment. Currently, only `vpc` is supported.
  late final pulumi.Output<String> attachmentType;

  /// The CIDR block details. This parameter is required if the endpoint type is `cidr`.
  late final pulumi.Output<EndpointCidrOptions?> cidrOptions;

  /// A description for the Verified Access endpoint.
  late final pulumi.Output<String?> description;

  /// Returned if endpoint has a device trust provider attached.
  late final pulumi.Output<String> deviceValidationDomain;

  /// The ARN of the public TLS/SSL certificate in AWS Certificate Manager to associate with the endpoint. The CN in the certificate must match the DNS name your end users will use to reach your application. This parameter is required if the endpoint type is `load-balancer` or `network-interface`.
  late final pulumi.Output<String?> domainCertificateArn;

  /// A DNS name that is generated for the endpoint.
  late final pulumi.Output<String> endpointDomain;

  /// A custom identifier that is prepended to the DNS name that is generated for the endpoint.
  late final pulumi.Output<String?> endpointDomainPrefix;

  /// The type of Verified Access endpoint to create. Currently `load-balancer` or `network-interface` are supported.
  late final pulumi.Output<String> endpointType;

  /// The load balancer details. This parameter is required if the endpoint type is `load-balancer`.
  late final pulumi.Output<EndpointLoadBalancerOptions?> loadBalancerOptions;

  /// The network interface details. This parameter is required if the endpoint type is `network-interface`.
  late final pulumi.Output<EndpointNetworkInterfaceOptions?>
  networkInterfaceOptions;

  /// The policy document that is associated with this resource.
  late final pulumi.Output<String?> policyDocument;
  late final pulumi.Output<EndpointRdsOptions?> rdsOptions;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// List of the the security groups IDs to associate with the Verified Access endpoint.
  late final pulumi.Output<List<String>?> securityGroupIds;

  /// The options in use for server side encryption.
  late final pulumi.Output<EndpointSseSpecification> sseSpecification;

  /// Key-value tags for the Verified Access Endpoint. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The ID of the Verified Access group to associate the endpoint with.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> verifiedAccessGroupId;
  late final pulumi.Output<String> verifiedAccessInstanceId;

  /// Creates a new [Endpoint].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Endpoint]. {@macro pulumi_verifiedaccess_endpoint_endpoint_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Endpoint(
    String name, {
    EndpointArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:verifiedaccess/endpoint:Endpoint',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationDomain = registerOutput<String?>('applicationDomain');
    attachmentType = registerOutput<String>('attachmentType');
    cidrOptions = registerOutput<EndpointCidrOptions?>(
      'cidrOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointCidrOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    deviceValidationDomain = registerOutput<String>('deviceValidationDomain');
    domainCertificateArn = registerOutput<String?>('domainCertificateArn');
    endpointDomain = registerOutput<String>('endpointDomain');
    endpointDomainPrefix = registerOutput<String?>('endpointDomainPrefix');
    endpointType = registerOutput<String>('endpointType');
    loadBalancerOptions = registerOutput<EndpointLoadBalancerOptions?>(
      'loadBalancerOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointLoadBalancerOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    networkInterfaceOptions = registerOutput<EndpointNetworkInterfaceOptions?>(
      'networkInterfaceOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointNetworkInterfaceOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    policyDocument = registerOutput<String?>('policyDocument');
    rdsOptions = registerOutput<EndpointRdsOptions?>(
      'rdsOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointRdsOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    sseSpecification = registerOutput<EndpointSseSpecification>(
      'sseSpecification',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointSseSpecification.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    verifiedAccessGroupId = registerOutput<String>('verifiedAccessGroupId');
    verifiedAccessInstanceId = registerOutput<String>(
      'verifiedAccessInstanceId',
    );
  }

  /// Gets an existing [Endpoint] resource's state with the given [name] and [id].
  static Endpoint get(
    String name,
    pulumi.Input<String> id, {
    EndpointState? state,
  }) {
    return Endpoint._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Endpoint._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:verifiedaccess/endpoint:Endpoint',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    applicationDomain = registerOutput<String?>('applicationDomain');
    attachmentType = registerOutput<String>('attachmentType');
    cidrOptions = registerOutput<EndpointCidrOptions?>(
      'cidrOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointCidrOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    description = registerOutput<String?>('description');
    deviceValidationDomain = registerOutput<String>('deviceValidationDomain');
    domainCertificateArn = registerOutput<String?>('domainCertificateArn');
    endpointDomain = registerOutput<String>('endpointDomain');
    endpointDomainPrefix = registerOutput<String?>('endpointDomainPrefix');
    endpointType = registerOutput<String>('endpointType');
    loadBalancerOptions = registerOutput<EndpointLoadBalancerOptions?>(
      'loadBalancerOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointLoadBalancerOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    networkInterfaceOptions = registerOutput<EndpointNetworkInterfaceOptions?>(
      'networkInterfaceOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointNetworkInterfaceOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    policyDocument = registerOutput<String?>('policyDocument');
    rdsOptions = registerOutput<EndpointRdsOptions?>(
      'rdsOptions',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointRdsOptions.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    securityGroupIds = registerOutput<List<String>?>('securityGroupIds');
    sseSpecification = registerOutput<EndpointSseSpecification>(
      'sseSpecification',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return EndpointSseSpecification.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    verifiedAccessGroupId = registerOutput<String>('verifiedAccessGroupId');
    verifiedAccessInstanceId = registerOutput<String>(
      'verifiedAccessInstanceId',
    );
  }
}
