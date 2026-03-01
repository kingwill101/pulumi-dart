import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_configuration_args.dart';
import 'tls_inspection_configuration_certificate.dart';
import 'tls_inspection_configuration_certificate_authority.dart';
import 'tls_inspection_configuration_encryption_configuration.dart';
import 'tls_inspection_configuration_timeouts.dart';
import 'tls_inspection_configuration_tls_inspection_configuration.dart';

/// Resource for managing an AWS Network Firewall TLS Inspection Configuration.
///
/// ## Example Usage
///
/// > **NOTE:** You must configure either inbound inspection, outbound inspection, or both.
///
/// ### Basic inbound/ingress inspection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.TlsInspectionConfiguration("example", {
///     name: "example",
///     description: "example",
///     encryptionConfigurations: [{
///         keyId: "AWS_OWNED_KMS_KEY",
///         type: "AWS_OWNED_KMS_KEY",
///     }],
///     tlsInspectionConfiguration: {
///         serverCertificateConfiguration: {
///             serverCertificates: [{
///                 resourceArn: example1.arn,
///             }],
///             scopes: [{
///                 protocols: [6],
///                 destinationPorts: [{
///                     fromPort: 443,
///                     toPort: 443,
///                 }],
///                 destinations: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///                 sourcePorts: [{
///                     fromPort: 0,
///                     toPort: 65535,
///                 }],
///                 sources: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.TlsInspectionConfiguration("example",
///     name="example",
///     description="example",
///     encryption_configurations=[{
///         "key_id": "AWS_OWNED_KMS_KEY",
///         "type": "AWS_OWNED_KMS_KEY",
///     }],
///     tls_inspection_configuration={
///         "server_certificate_configuration": {
///             "server_certificates": [{
///                 "resource_arn": example1["arn"],
///             }],
///             "scopes": [{
///                 "protocols": [6],
///                 "destination_ports": [{
///                     "from_port": 443,
///                     "to_port": 443,
///                 }],
///                 "destinations": [{
///                     "address_definition": "0.0.0.0/0",
///                 }],
///                 "source_ports": [{
///                     "from_port": 0,
///                     "to_port": 65535,
///                 }],
///                 "sources": [{
///                     "address_definition": "0.0.0.0/0",
///                 }],
///             }],
///         },
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
///     var example = new Aws.NetworkFirewall.TlsInspectionConfiguration("example", new()
///     {
///         Name = "example",
///         Description = "example",
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = "AWS_OWNED_KMS_KEY",
///                 Type = "AWS_OWNED_KMS_KEY",
///             },
///         },
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfiguration = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs
///             {
///                 ServerCertificates = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs
///                     {
///                         ResourceArn = example1.Arn,
///                     },
///                 },
///                 Scopes = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs
///                     {
///                         Protocols = new[]
///                         {
///                             6,
///                         },
///                         DestinationPorts = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs
///                             {
///                                 FromPort = 443,
///                                 ToPort = 443,
///                             },
///                         },
///                         Destinations = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs
///                             {
///                                 AddressDefinition = "0.0.0.0/0",
///                             },
///                         },
///                         SourcePorts = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs
///                             {
///                                 FromPort = 0,
///                                 ToPort = 65535,
///                             },
///                         },
///                         Sources = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs
///                             {
///                                 AddressDefinition = "0.0.0.0/0",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewTlsInspectionConfiguration(ctx, "example", &networkfirewall.TlsInspectionConfigurationArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: pulumi.String("AWS_OWNED_KMS_KEY"),
/// 					Type:  pulumi.String("AWS_OWNED_KMS_KEY"),
/// 				},
/// 			},
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs{
/// 					ServerCertificates: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs{
/// 							ResourceArn: pulumi.Any(example1.Arn),
/// 						},
/// 					},
/// 					Scopes: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs{
/// 							Protocols: pulumi.IntArray{
/// 								pulumi.Int(6),
/// 							},
/// 							DestinationPorts: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs{
/// 									FromPort: pulumi.Int(443),
/// 									ToPort:   pulumi.Int(443),
/// 								},
/// 							},
/// 							Destinations: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs{
/// 									AddressDefinition: pulumi.String("0.0.0.0/0"),
/// 								},
/// 							},
/// 							SourcePorts: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs{
/// 									FromPort: pulumi.Int(0),
/// 									ToPort:   pulumi.Int(65535),
/// 								},
/// 							},
/// 							Sources: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs{
/// 									AddressDefinition: pulumi.String("0.0.0.0/0"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfiguration;
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs;
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
///         var example = new TlsInspectionConfiguration("example", TlsInspectionConfigurationArgs.builder()
///             .name("example")
///             .description("example")
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId("AWS_OWNED_KMS_KEY")
///                 .type("AWS_OWNED_KMS_KEY")
///                 .build())
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs.builder()
///                     .serverCertificates(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs.builder()
///                         .resourceArn(example1.arn())
///                         .build())
///                     .scopes(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs.builder()
///                         .protocols(6)
///                         .destinationPorts(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs.builder()
///                             .fromPort(443)
///                             .toPort(443)
///                             .build())
///                         .destinations(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs.builder()
///                             .addressDefinition("0.0.0.0/0")
///                             .build())
///                         .sourcePorts(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs.builder()
///                             .fromPort(0)
///                             .toPort(65535)
///                             .build())
///                         .sources(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs.builder()
///                             .addressDefinition("0.0.0.0/0")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:TlsInspectionConfiguration
///     properties:
///       name: example
///       description: example
///       encryptionConfigurations:
///         - keyId: AWS_OWNED_KMS_KEY
///           type: AWS_OWNED_KMS_KEY
///       tlsInspectionConfiguration:
///         serverCertificateConfiguration:
///           serverCertificates:
///             - resourceArn: ${example1.arn}
///           scopes:
///             - protocols:
///                 - 6
///               destinationPorts:
///                 - fromPort: 443
///                   toPort: 443
///               destinations:
///                 - addressDefinition: 0.0.0.0/0
///               sourcePorts:
///                 - fromPort: 0
///                   toPort: 65535
///               sources:
///                 - addressDefinition: 0.0.0.0/0
/// ```
///
///
/// ### Basic outbound/engress inspection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.TlsInspectionConfiguration("example", {
///     name: "example",
///     description: "example",
///     encryptionConfigurations: [{
///         keyId: "AWS_OWNED_KMS_KEY",
///         type: "AWS_OWNED_KMS_KEY",
///     }],
///     tlsInspectionConfiguration: {
///         serverCertificateConfiguration: {
///             certificateAuthorityArn: example1.arn,
///             checkCertificateRevocationStatus: {
///                 revokedStatusAction: "REJECT",
///                 unknownStatusAction: "PASS",
///             },
///             scopes: [{
///                 protocols: [6],
///                 destinationPorts: [{
///                     fromPort: 443,
///                     toPort: 443,
///                 }],
///                 destinations: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///                 sourcePorts: [{
///                     fromPort: 0,
///                     toPort: 65535,
///                 }],
///                 sources: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.TlsInspectionConfiguration("example",
///     name="example",
///     description="example",
///     encryption_configurations=[{
///         "key_id": "AWS_OWNED_KMS_KEY",
///         "type": "AWS_OWNED_KMS_KEY",
///     }],
///     tls_inspection_configuration={
///         "server_certificate_configuration": {
///             "certificate_authority_arn": example1["arn"],
///             "check_certificate_revocation_status": {
///                 "revoked_status_action": "REJECT",
///                 "unknown_status_action": "PASS",
///             },
///             "scopes": [{
///                 "protocols": [6],
///                 "destination_ports": [{
///                     "from_port": 443,
///                     "to_port": 443,
///                 }],
///                 "destinations": [{
///                     "address_definition": "0.0.0.0/0",
///                 }],
///                 "source_ports": [{
///                     "from_port": 0,
///                     "to_port": 65535,
///                 }],
///                 "sources": [{
///                     "address_definition": "0.0.0.0/0",
///                 }],
///             }],
///         },
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
///     var example = new Aws.NetworkFirewall.TlsInspectionConfiguration("example", new()
///     {
///         Name = "example",
///         Description = "example",
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = "AWS_OWNED_KMS_KEY",
///                 Type = "AWS_OWNED_KMS_KEY",
///             },
///         },
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfiguration = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs
///             {
///                 CertificateAuthorityArn = example1.Arn,
///                 CheckCertificateRevocationStatus = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs
///                 {
///                     RevokedStatusAction = "REJECT",
///                     UnknownStatusAction = "PASS",
///                 },
///                 Scopes = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs
///                     {
///                         Protocols = new[]
///                         {
///                             6,
///                         },
///                         DestinationPorts = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs
///                             {
///                                 FromPort = 443,
///                                 ToPort = 443,
///                             },
///                         },
///                         Destinations = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs
///                             {
///                                 AddressDefinition = "0.0.0.0/0",
///                             },
///                         },
///                         SourcePorts = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs
///                             {
///                                 FromPort = 0,
///                                 ToPort = 65535,
///                             },
///                         },
///                         Sources = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs
///                             {
///                                 AddressDefinition = "0.0.0.0/0",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewTlsInspectionConfiguration(ctx, "example", &networkfirewall.TlsInspectionConfigurationArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: pulumi.String("AWS_OWNED_KMS_KEY"),
/// 					Type:  pulumi.String("AWS_OWNED_KMS_KEY"),
/// 				},
/// 			},
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs{
/// 					CertificateAuthorityArn: pulumi.Any(example1.Arn),
/// 					CheckCertificateRevocationStatus: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs{
/// 						RevokedStatusAction: pulumi.String("REJECT"),
/// 						UnknownStatusAction: pulumi.String("PASS"),
/// 					},
/// 					Scopes: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs{
/// 							Protocols: pulumi.IntArray{
/// 								pulumi.Int(6),
/// 							},
/// 							DestinationPorts: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs{
/// 									FromPort: pulumi.Int(443),
/// 									ToPort:   pulumi.Int(443),
/// 								},
/// 							},
/// 							Destinations: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs{
/// 									AddressDefinition: pulumi.String("0.0.0.0/0"),
/// 								},
/// 							},
/// 							SourcePorts: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs{
/// 									FromPort: pulumi.Int(0),
/// 									ToPort:   pulumi.Int(65535),
/// 								},
/// 							},
/// 							Sources: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs{
/// 									AddressDefinition: pulumi.String("0.0.0.0/0"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfiguration;
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs;
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
///         var example = new TlsInspectionConfiguration("example", TlsInspectionConfigurationArgs.builder()
///             .name("example")
///             .description("example")
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId("AWS_OWNED_KMS_KEY")
///                 .type("AWS_OWNED_KMS_KEY")
///                 .build())
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs.builder()
///                     .certificateAuthorityArn(example1.arn())
///                     .checkCertificateRevocationStatus(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs.builder()
///                         .revokedStatusAction("REJECT")
///                         .unknownStatusAction("PASS")
///                         .build())
///                     .scopes(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs.builder()
///                         .protocols(6)
///                         .destinationPorts(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs.builder()
///                             .fromPort(443)
///                             .toPort(443)
///                             .build())
///                         .destinations(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs.builder()
///                             .addressDefinition("0.0.0.0/0")
///                             .build())
///                         .sourcePorts(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs.builder()
///                             .fromPort(0)
///                             .toPort(65535)
///                             .build())
///                         .sources(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs.builder()
///                             .addressDefinition("0.0.0.0/0")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:TlsInspectionConfiguration
///     properties:
///       name: example
///       description: example
///       encryptionConfigurations:
///         - keyId: AWS_OWNED_KMS_KEY
///           type: AWS_OWNED_KMS_KEY
///       tlsInspectionConfiguration:
///         serverCertificateConfiguration:
///           certificateAuthorityArn: ${example1.arn}
///           checkCertificateRevocationStatus:
///             revokedStatusAction: REJECT
///             unknownStatusAction: PASS
///           scopes:
///             - protocols:
///                 - 6
///               destinationPorts:
///                 - fromPort: 443
///                   toPort: 443
///               destinations:
///                 - addressDefinition: 0.0.0.0/0
///               sourcePorts:
///                 - fromPort: 0
///                   toPort: 65535
///               sources:
///                 - addressDefinition: 0.0.0.0/0
/// ```
///
///
/// ### Inbound with encryption configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "example",
///     deletionWindowInDays: 7,
/// });
/// const exampleTlsInspectionConfiguration = new aws.networkfirewall.TlsInspectionConfiguration("example", {
///     name: "example",
///     description: "example",
///     encryptionConfigurations: [{
///         keyId: example.arn,
///         type: "CUSTOMER_KMS",
///     }],
///     tlsInspectionConfiguration: {
///         serverCertificateConfiguration: {
///             serverCertificates: [{
///                 resourceArn: example1.arn,
///             }],
///             scopes: [{
///                 protocols: [6],
///                 destinationPorts: [{
///                     fromPort: 443,
///                     toPort: 443,
///                 }],
///                 destinations: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///                 sourcePorts: [{
///                     fromPort: 0,
///                     toPort: 65535,
///                 }],
///                 sources: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="example",
///     deletion_window_in_days=7)
/// example_tls_inspection_configuration = aws.networkfirewall.TlsInspectionConfiguration("example",
///     name="example",
///     description="example",
///     encryption_configurations=[{
///         "key_id": example.arn,
///         "type": "CUSTOMER_KMS",
///     }],
///     tls_inspection_configuration={
///         "server_certificate_configuration": {
///             "server_certificates": [{
///                 "resource_arn": example1["arn"],
///             }],
///             "scopes": [{
///                 "protocols": [6],
///                 "destination_ports": [{
///                     "from_port": 443,
///                     "to_port": 443,
///                 }],
///                 "destinations": [{
///                     "address_definition": "0.0.0.0/0",
///                 }],
///                 "source_ports": [{
///                     "from_port": 0,
///                     "to_port": 65535,
///                 }],
///                 "sources": [{
///                     "address_definition": "0.0.0.0/0",
///                 }],
///             }],
///         },
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
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "example",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleTlsInspectionConfiguration = new Aws.NetworkFirewall.TlsInspectionConfiguration("example", new()
///     {
///         Name = "example",
///         Description = "example",
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = example.Arn,
///                 Type = "CUSTOMER_KMS",
///             },
///         },
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfiguration = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs
///             {
///                 ServerCertificates = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs
///                     {
///                         ResourceArn = example1.Arn,
///                     },
///                 },
///                 Scopes = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs
///                     {
///                         Protocols = new[]
///                         {
///                             6,
///                         },
///                         DestinationPorts = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs
///                             {
///                                 FromPort = 443,
///                                 ToPort = 443,
///                             },
///                         },
///                         Destinations = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs
///                             {
///                                 AddressDefinition = "0.0.0.0/0",
///                             },
///                         },
///                         SourcePorts = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs
///                             {
///                                 FromPort = 0,
///                                 ToPort = 65535,
///                             },
///                         },
///                         Sources = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs
///                             {
///                                 AddressDefinition = "0.0.0.0/0",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("example"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfirewall.NewTlsInspectionConfiguration(ctx, "example", &networkfirewall.TlsInspectionConfigurationArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: example.Arn,
/// 					Type:  pulumi.String("CUSTOMER_KMS"),
/// 				},
/// 			},
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs{
/// 					ServerCertificates: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs{
/// 							ResourceArn: pulumi.Any(example1.Arn),
/// 						},
/// 					},
/// 					Scopes: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs{
/// 							Protocols: pulumi.IntArray{
/// 								pulumi.Int(6),
/// 							},
/// 							DestinationPorts: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs{
/// 									FromPort: pulumi.Int(443),
/// 									ToPort:   pulumi.Int(443),
/// 								},
/// 							},
/// 							Destinations: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs{
/// 									AddressDefinition: pulumi.String("0.0.0.0/0"),
/// 								},
/// 							},
/// 							SourcePorts: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs{
/// 									FromPort: pulumi.Int(0),
/// 									ToPort:   pulumi.Int(65535),
/// 								},
/// 							},
/// 							Sources: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs{
/// 									AddressDefinition: pulumi.String("0.0.0.0/0"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfiguration;
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("example")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleTlsInspectionConfiguration = new TlsInspectionConfiguration("exampleTlsInspectionConfiguration", TlsInspectionConfigurationArgs.builder()
///             .name("example")
///             .description("example")
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId(example.arn())
///                 .type("CUSTOMER_KMS")
///                 .build())
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs.builder()
///                     .serverCertificates(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs.builder()
///                         .resourceArn(example1.arn())
///                         .build())
///                     .scopes(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs.builder()
///                         .protocols(6)
///                         .destinationPorts(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs.builder()
///                             .fromPort(443)
///                             .toPort(443)
///                             .build())
///                         .destinations(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs.builder()
///                             .addressDefinition("0.0.0.0/0")
///                             .build())
///                         .sourcePorts(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs.builder()
///                             .fromPort(0)
///                             .toPort(65535)
///                             .build())
///                         .sources(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs.builder()
///                             .addressDefinition("0.0.0.0/0")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: example
///       deletionWindowInDays: 7
///   exampleTlsInspectionConfiguration:
///     type: aws:networkfirewall:TlsInspectionConfiguration
///     name: example
///     properties:
///       name: example
///       description: example
///       encryptionConfigurations:
///         - keyId: ${example.arn}
///           type: CUSTOMER_KMS
///       tlsInspectionConfiguration:
///         serverCertificateConfiguration:
///           serverCertificates:
///             - resourceArn: ${example1.arn}
///           scopes:
///             - protocols:
///                 - 6
///               destinationPorts:
///                 - fromPort: 443
///                   toPort: 443
///               destinations:
///                 - addressDefinition: 0.0.0.0/0
///               sourcePorts:
///                 - fromPort: 0
///                   toPort: 65535
///               sources:
///                 - addressDefinition: 0.0.0.0/0
/// ```
///
///
/// ### Outbound with encryption configuration
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.kms.Key("example", {
///     description: "example",
///     deletionWindowInDays: 7,
/// });
/// const exampleTlsInspectionConfiguration = new aws.networkfirewall.TlsInspectionConfiguration("example", {
///     name: "example",
///     description: "example",
///     encryptionConfigurations: [{
///         keyId: example.arn,
///         type: "CUSTOMER_KMS",
///     }],
///     tlsInspectionConfiguration: {
///         serverCertificateConfigurations: [{
///             certificateAuthorityArn: example1.arn,
///             checkCertificateRevocationStatus: [{
///                 revokedStatusAction: "REJECT",
///                 unknownStatusAction: "PASS",
///             }],
///             scope: [{
///                 protocols: [6],
///                 destinationPorts: [{
///                     fromPort: 443,
///                     toPort: 443,
///                 }],
///                 destination: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///                 sourcePorts: [{
///                     fromPort: 0,
///                     toPort: 65535,
///                 }],
///                 source: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///             }],
///         }],
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.kms.Key("example",
///     description="example",
///     deletion_window_in_days=7)
/// example_tls_inspection_configuration = aws.networkfirewall.TlsInspectionConfiguration("example",
///     name="example",
///     description="example",
///     encryption_configurations=[{
///         "key_id": example.arn,
///         "type": "CUSTOMER_KMS",
///     }],
///     tls_inspection_configuration={
///         "server_certificate_configurations": [{
///             "certificateAuthorityArn": example1["arn"],
///             "checkCertificateRevocationStatus": [{
///                 "revokedStatusAction": "REJECT",
///                 "unknownStatusAction": "PASS",
///             }],
///             "scope": [{
///                 "protocols": [6],
///                 "destinationPorts": [{
///                     "fromPort": 443,
///                     "toPort": 443,
///                 }],
///                 "destination": [{
///                     "addressDefinition": "0.0.0.0/0",
///                 }],
///                 "sourcePorts": [{
///                     "fromPort": 0,
///                     "toPort": 65535,
///                 }],
///                 "source": [{
///                     "addressDefinition": "0.0.0.0/0",
///                 }],
///             }],
///         }],
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
///     var example = new Aws.Kms.Key("example", new()
///     {
///         Description = "example",
///         DeletionWindowInDays = 7,
///     });
///
///     var exampleTlsInspectionConfiguration = new Aws.NetworkFirewall.TlsInspectionConfiguration("example", new()
///     {
///         Name = "example",
///         Description = "example",
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = example.Arn,
///                 Type = "CUSTOMER_KMS",
///             },
///         },
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfigurations = new[]
///             {
///
///                 {
///                     { "certificateAuthorityArn", example1.Arn },
///                     { "checkCertificateRevocationStatus", new[]
///                     {
///
///                         {
///                             { "revokedStatusAction", "REJECT" },
///                             { "unknownStatusAction", "PASS" },
///                         },
///                     } },
///                     { "scope", new[]
///                     {
///
///                         {
///                             { "protocols", new[]
///                             {
///                                 6,
///                             } },
///                             { "destinationPorts", new[]
///                             {
///
///                                 {
///                                     { "fromPort", 443 },
///                                     { "toPort", 443 },
///                                 },
///                             } },
///                             { "destination", new[]
///                             {
///
///                                 {
///                                     { "addressDefinition", "0.0.0.0/0" },
///                                 },
///                             } },
///                             { "sourcePorts", new[]
///                             {
///
///                                 {
///                                     { "fromPort", 0 },
///                                     { "toPort", 65535 },
///                                 },
///                             } },
///                             { "source", new[]
///                             {
///
///                                 {
///                                     { "addressDefinition", "0.0.0.0/0" },
///                                 },
///                             } },
///                         },
///                     } },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := kms.NewKey(ctx, "example", &kms.KeyArgs{
/// 			Description:          pulumi.String("example"),
/// 			DeletionWindowInDays: pulumi.Int(7),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkfirewall.NewTlsInspectionConfiguration(ctx, "example", &networkfirewall.TlsInspectionConfigurationArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: example.Arn,
/// 					Type:  pulumi.String("CUSTOMER_KMS"),
/// 				},
/// 			},
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfigurations: []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"certificateAuthorityArn": example1.Arn,
/// 						"checkCertificateRevocationStatus": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"revokedStatusAction": "REJECT",
/// 								"unknownStatusAction": "PASS",
/// 							},
/// 						},
/// 						"scope": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"protocols": []float64{
/// 									6,
/// 								},
/// 								"destinationPorts": []map[string]interface{}{
/// 									map[string]interface{}{
/// 										"fromPort": 443,
/// 										"toPort":   443,
/// 									},
/// 								},
/// 								"destination": []map[string]interface{}{
/// 									map[string]interface{}{
/// 										"addressDefinition": "0.0.0.0/0",
/// 									},
/// 								},
/// 								"sourcePorts": []map[string]interface{}{
/// 									map[string]interface{}{
/// 										"fromPort": 0,
/// 										"toPort":   65535,
/// 									},
/// 								},
/// 								"source": []map[string]interface{}{
/// 									map[string]interface{}{
/// 										"addressDefinition": "0.0.0.0/0",
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.kms.KeyArgs;
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfiguration;
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("example")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleTlsInspectionConfiguration = new TlsInspectionConfiguration("exampleTlsInspectionConfiguration", TlsInspectionConfigurationArgs.builder()
///             .name("example")
///             .description("example")
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId(example.arn())
///                 .type("CUSTOMER_KMS")
///                 .build())
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfigurations(List.of(Map.ofEntries(
///                     Map.entry("certificateAuthorityArn", example1.arn()),
///                     Map.entry("checkCertificateRevocationStatus", List.of(Map.ofEntries(
///                         Map.entry("revokedStatusAction", "REJECT"),
///                         Map.entry("unknownStatusAction", "PASS")
///                     ))),
///                     Map.entry("scope", List.of(Map.ofEntries(
///                         Map.entry("protocols", List.of(6)),
///                         Map.entry("destinationPorts", List.of(Map.ofEntries(
///                             Map.entry("fromPort", 443),
///                             Map.entry("toPort", 443)
///                         ))),
///                         Map.entry("destination", List.of(Map.of("addressDefinition", "0.0.0.0/0"))),
///                         Map.entry("sourcePorts", List.of(Map.ofEntries(
///                             Map.entry("fromPort", 0),
///                             Map.entry("toPort", 65535)
///                         ))),
///                         Map.entry("source", List.of(Map.of("addressDefinition", "0.0.0.0/0")))
///                     )))
///                 )))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:kms:Key
///     properties:
///       description: example
///       deletionWindowInDays: 7
///   exampleTlsInspectionConfiguration:
///     type: aws:networkfirewall:TlsInspectionConfiguration
///     name: example
///     properties:
///       name: example
///       description: example
///       encryptionConfigurations:
///         - keyId: ${example.arn}
///           type: CUSTOMER_KMS
///       tlsInspectionConfiguration:
///         serverCertificateConfigurations:
///           - certificateAuthorityArn: ${example1.arn}
///             checkCertificateRevocationStatus:
///               - revokedStatusAction: REJECT
///                 unknownStatusAction: PASS
///             scope:
///               - protocols:
///                   - 6
///                 destinationPorts:
///                   - fromPort: 443
///                     toPort: 443
///                 destination:
///                   - addressDefinition: 0.0.0.0/0
///                 sourcePorts:
///                   - fromPort: 0
///                     toPort: 65535
///                 source:
///                   - addressDefinition: 0.0.0.0/0
/// ```
///
///
/// ### Combined inbound and outbound
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.TlsInspectionConfiguration("example", {
///     name: "example",
///     description: "example",
///     encryptionConfigurations: [{
///         keyId: "AWS_OWNED_KMS_KEY",
///         type: "AWS_OWNED_KMS_KEY",
///     }],
///     tlsInspectionConfiguration: {
///         serverCertificateConfiguration: {
///             certificateAuthorityArn: example1.arn,
///             checkCertificateRevocationStatus: {
///                 revokedStatusAction: "REJECT",
///                 unknownStatusAction: "PASS",
///             },
///             serverCertificates: [{
///                 resourceArn: example2.arn,
///             }],
///             scopes: [{
///                 protocols: [6],
///                 destinationPorts: [{
///                     fromPort: 443,
///                     toPort: 443,
///                 }],
///                 destinations: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///                 sourcePorts: [{
///                     fromPort: 0,
///                     toPort: 65535,
///                 }],
///                 sources: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///             }],
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.TlsInspectionConfiguration("example",
///     name="example",
///     description="example",
///     encryption_configurations=[{
///         "key_id": "AWS_OWNED_KMS_KEY",
///         "type": "AWS_OWNED_KMS_KEY",
///     }],
///     tls_inspection_configuration={
///         "server_certificate_configuration": {
///             "certificate_authority_arn": example1["arn"],
///             "check_certificate_revocation_status": {
///                 "revoked_status_action": "REJECT",
///                 "unknown_status_action": "PASS",
///             },
///             "server_certificates": [{
///                 "resource_arn": example2["arn"],
///             }],
///             "scopes": [{
///                 "protocols": [6],
///                 "destination_ports": [{
///                     "from_port": 443,
///                     "to_port": 443,
///                 }],
///                 "destinations": [{
///                     "address_definition": "0.0.0.0/0",
///                 }],
///                 "source_ports": [{
///                     "from_port": 0,
///                     "to_port": 65535,
///                 }],
///                 "sources": [{
///                     "address_definition": "0.0.0.0/0",
///                 }],
///             }],
///         },
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
///     var example = new Aws.NetworkFirewall.TlsInspectionConfiguration("example", new()
///     {
///         Name = "example",
///         Description = "example",
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = "AWS_OWNED_KMS_KEY",
///                 Type = "AWS_OWNED_KMS_KEY",
///             },
///         },
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfiguration = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs
///             {
///                 CertificateAuthorityArn = example1.Arn,
///                 CheckCertificateRevocationStatus = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs
///                 {
///                     RevokedStatusAction = "REJECT",
///                     UnknownStatusAction = "PASS",
///                 },
///                 ServerCertificates = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs
///                     {
///                         ResourceArn = example2.Arn,
///                     },
///                 },
///                 Scopes = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs
///                     {
///                         Protocols = new[]
///                         {
///                             6,
///                         },
///                         DestinationPorts = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs
///                             {
///                                 FromPort = 443,
///                                 ToPort = 443,
///                             },
///                         },
///                         Destinations = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs
///                             {
///                                 AddressDefinition = "0.0.0.0/0",
///                             },
///                         },
///                         SourcePorts = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs
///                             {
///                                 FromPort = 0,
///                                 ToPort = 65535,
///                             },
///                         },
///                         Sources = new[]
///                         {
///                             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs
///                             {
///                                 AddressDefinition = "0.0.0.0/0",
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkfirewall"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := networkfirewall.NewTlsInspectionConfiguration(ctx, "example", &networkfirewall.TlsInspectionConfigurationArgs{
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: pulumi.String("AWS_OWNED_KMS_KEY"),
/// 					Type:  pulumi.String("AWS_OWNED_KMS_KEY"),
/// 				},
/// 			},
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs{
/// 					CertificateAuthorityArn: pulumi.Any(example1.Arn),
/// 					CheckCertificateRevocationStatus: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs{
/// 						RevokedStatusAction: pulumi.String("REJECT"),
/// 						UnknownStatusAction: pulumi.String("PASS"),
/// 					},
/// 					ServerCertificates: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs{
/// 							ResourceArn: pulumi.Any(example2.Arn),
/// 						},
/// 					},
/// 					Scopes: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs{
/// 							Protocols: pulumi.IntArray{
/// 								pulumi.Int(6),
/// 							},
/// 							DestinationPorts: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs{
/// 									FromPort: pulumi.Int(443),
/// 									ToPort:   pulumi.Int(443),
/// 								},
/// 							},
/// 							Destinations: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs{
/// 									AddressDefinition: pulumi.String("0.0.0.0/0"),
/// 								},
/// 							},
/// 							SourcePorts: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs{
/// 									FromPort: pulumi.Int(0),
/// 									ToPort:   pulumi.Int(65535),
/// 								},
/// 							},
/// 							Sources: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArray{
/// 								&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs{
/// 									AddressDefinition: pulumi.String("0.0.0.0/0"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
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
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfiguration;
/// import com.pulumi.aws.networkfirewall.TlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs;
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
///         var example = new TlsInspectionConfiguration("example", TlsInspectionConfigurationArgs.builder()
///             .name("example")
///             .description("example")
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId("AWS_OWNED_KMS_KEY")
///                 .type("AWS_OWNED_KMS_KEY")
///                 .build())
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs.builder()
///                     .certificateAuthorityArn(example1.arn())
///                     .checkCertificateRevocationStatus(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs.builder()
///                         .revokedStatusAction("REJECT")
///                         .unknownStatusAction("PASS")
///                         .build())
///                     .serverCertificates(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs.builder()
///                         .resourceArn(example2.arn())
///                         .build())
///                     .scopes(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs.builder()
///                         .protocols(6)
///                         .destinationPorts(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs.builder()
///                             .fromPort(443)
///                             .toPort(443)
///                             .build())
///                         .destinations(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs.builder()
///                             .addressDefinition("0.0.0.0/0")
///                             .build())
///                         .sourcePorts(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs.builder()
///                             .fromPort(0)
///                             .toPort(65535)
///                             .build())
///                         .sources(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs.builder()
///                             .addressDefinition("0.0.0.0/0")
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:networkfirewall:TlsInspectionConfiguration
///     properties:
///       name: example
///       description: example
///       encryptionConfigurations:
///         - keyId: AWS_OWNED_KMS_KEY
///           type: AWS_OWNED_KMS_KEY
///       tlsInspectionConfiguration:
///         serverCertificateConfiguration:
///           certificateAuthorityArn: ${example1.arn}
///           checkCertificateRevocationStatus:
///             revokedStatusAction: REJECT
///             unknownStatusAction: PASS
///           serverCertificates:
///             - resourceArn: ${example2.arn}
///           scopes:
///             - protocols:
///                 - 6
///               destinationPorts:
///                 - fromPort: 443
///                   toPort: 443
///               destinations:
///                 - addressDefinition: 0.0.0.0/0
///               sourcePorts:
///                 - fromPort: 0
///                   toPort: 65535
///               sources:
///                 - addressDefinition: 0.0.0.0/0
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Network Firewall TLS inspection configuration.
///
///
/// Using `pulumi import`, import Network Firewall TLS Inspection Configuration using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:networkfirewall/tlsInspectionConfiguration:TlsInspectionConfiguration example arn:aws:network-firewall::<region>:<account_id>:tls-configuration/example
/// ```
class TlsInspectionConfiguration extends pulumi.CustomResource {
  /// ARN of the TLS Inspection Configuration.
  late final pulumi.Output<String> arn;

  /// Certificate Manager certificate block. See Certificate Authority below for details.
  late final pulumi.Output<List<TlsInspectionConfigurationCertificateAuthority>>
  certificateAuthorities;

  /// List of certificate blocks describing certificates associated with the TLS inspection configuration. See Certificates below for details.
  late final pulumi.Output<List<TlsInspectionConfigurationCertificate>>
  certificates;

  /// Description of the TLS inspection configuration.
  late final pulumi.Output<String?> description;

  /// Encryption configuration block. Detailed below.
  late final pulumi.Output<
    List<TlsInspectionConfigurationEncryptionConfiguration>
  >
  encryptionConfigurations;

  /// Descriptive name of the TLS inspection configuration.
  late final pulumi.Output<String> name;

  /// Number of firewall policies that use this TLS inspection configuration.
  late final pulumi.Output<int> numberOfAssociations;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<TlsInspectionConfigurationTimeouts?> timeouts;

  /// TLS inspection configuration block. Detailed below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<TlsInspectionConfigurationTlsInspectionConfiguration>
  tlsInspectionConfiguration;

  /// A unique identifier for the TLS inspection configuration.
  late final pulumi.Output<String> tlsInspectionConfigurationId;

  /// String token used when updating the rule group.
  late final pulumi.Output<String> updateToken;

  /// Creates a new [TlsInspectionConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TlsInspectionConfiguration]. {@macro pulumi_networkfirewall_tls_inspection_configuration_tls_inspection_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TlsInspectionConfiguration(
    String name, {
    TlsInspectionConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:networkfirewall/tlsInspectionConfiguration:TlsInspectionConfiguration',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.certificateAuthorities =
        registerOutput<List<TlsInspectionConfigurationCertificateAuthority>>(
          'certificateAuthorities',
        );
    this.certificates =
        registerOutput<List<TlsInspectionConfigurationCertificate>>(
          'certificates',
        );
    this.description = registerOutput<String?>('description');
    this.encryptionConfigurations =
        registerOutput<List<TlsInspectionConfigurationEncryptionConfiguration>>(
          'encryptionConfigurations',
        );
    this.name = registerOutput<String>('name');
    this.numberOfAssociations = registerOutput<int>('numberOfAssociations');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<TlsInspectionConfigurationTimeouts?>(
      'timeouts',
    );
    this.tlsInspectionConfiguration =
        registerOutput<TlsInspectionConfigurationTlsInspectionConfiguration>(
          'tlsInspectionConfiguration',
        );
    this.tlsInspectionConfigurationId = registerOutput<String>(
      'tlsInspectionConfigurationId',
    );
    this.updateToken = registerOutput<String>('updateToken');
  }
}
