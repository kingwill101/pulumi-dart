import 'package:pulumi/pulumi.dart' as pulumi;
import 'tls_inspection_configuration_args.dart';
import 'tls_inspection_configuration_certificate.dart';
import 'tls_inspection_configuration_certificate_authority.dart';
import 'tls_inspection_configuration_encryption_configuration.dart';
import 'tls_inspection_configuration_state.dart';
import 'tls_inspection_configuration_timeouts.dart';
import 'tls_inspection_configuration_tls_inspection_configuration.dart';

/// Resource for managing an AWS Network Firewall TLS Inspection Configuration.
///
/// ## Example Usage
///
/// &gt; **NOTE:** You must configure either inbound inspection, outbound inspection, or both.
///
/// ### Basic inbound/ingress inspection
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.networkfirewall.TlsInspectionConfiguration("example", {
///     tlsInspectionConfiguration: {
///         serverCertificateConfiguration: {
///             scopes: [{
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
///                 protocols: [6],
///             }],
///             serverCertificates: [{
///                 resourceArn: example1.arn,
///             }],
///         },
///     },
///     encryptionConfigurations: [{
///         keyId: "AWS_OWNED_KMS_KEY",
///         type: "AWS_OWNED_KMS_KEY",
///     }],
///     name: "example",
///     description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.TlsInspectionConfiguration("example",
///     tls_inspection_configuration={
///         "server_certificate_configuration": {
///             "scopes": [{
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
///                 "protocols": [6],
///             }],
///             "server_certificates": [{
///                 "resource_arn": example1["arn"],
///             }],
///         },
///     },
///     encryption_configurations=[{
///         "key_id": "AWS_OWNED_KMS_KEY",
///         "type": "AWS_OWNED_KMS_KEY",
///     }],
///     name="example",
///     description="example")
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
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfiguration = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs
///             {
///                 Scopes = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs
///                     {
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
///                         Protocols = new[]
///                         {
///                             6,
///                         },
///                     },
///                 },
///                 ServerCertificates = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs
///                     {
///                         ResourceArn = example1.Arn,
///                     },
///                 },
///             },
///         },
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = "AWS_OWNED_KMS_KEY",
///                 Type = "AWS_OWNED_KMS_KEY",
///             },
///         },
///         Name = "example",
///         Description = "example",
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
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs{
/// 					Scopes: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs{
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
/// 							Protocols: pulumi.IntArray{
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 					},
/// 					ServerCertificates: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs{
/// 							ResourceArn: pulumi.Any(example1.Arn),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: pulumi.String("AWS_OWNED_KMS_KEY"),
/// 					Type:  pulumi.String("AWS_OWNED_KMS_KEY"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
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
/// resource "aws_networkfirewall_tlsinspectionconfiguration" "example" {
///   tls_inspection_configuration = {
///     server_certificate_configuration = {
///       scopes = [{
///         "destinationPorts" = [{
///           "fromPort" = 443
///           "toPort"   = 443
///         }]
///         "destinations" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "sourcePorts" = [{
///           "fromPort" = 0
///           "toPort"   = 65535
///         }]
///         "sources" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "protocols" = [6]
///       }]
///       server_certificates = [{
///         "resourceArn" = example1.arn
///       }]
///     }
///   }
///   encryption_configurations {
///     key_id = "AWS_OWNED_KMS_KEY"
///     type   = "AWS_OWNED_KMS_KEY"
///   }
///   name        = "example"
///   description = "example"
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
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
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
///         var example = new TlsInspectionConfiguration("example", TlsInspectionConfigurationArgs.builder()
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs.builder()
///                     .scopes(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs.builder()
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
///                         .protocols(6)
///                         .build())
///                     .serverCertificates(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs.builder()
///                         .resourceArn(example1.arn())
///                         .build())
///                     .build())
///                 .build())
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId("AWS_OWNED_KMS_KEY")
///                 .type("AWS_OWNED_KMS_KEY")
///                 .build())
///             .name("example")
///             .description("example")
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
///       tlsInspectionConfiguration:
///         serverCertificateConfiguration:
///           scopes:
///             - destinationPorts:
///                 - fromPort: 443
///                   toPort: 443
///               destinations:
///                 - addressDefinition: 0.0.0.0/0
///               sourcePorts:
///                 - fromPort: 0
///                   toPort: 65535
///               sources:
///                 - addressDefinition: 0.0.0.0/0
///               protocols:
///                 - 6
///           serverCertificates:
///             - resourceArn: ${example1.arn}
///       encryptionConfigurations:
///         - keyId: AWS_OWNED_KMS_KEY
///           type: AWS_OWNED_KMS_KEY
///       name: example
///       description: example
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
///     tlsInspectionConfiguration: {
///         serverCertificateConfiguration: {
///             checkCertificateRevocationStatus: {
///                 revokedStatusAction: "REJECT",
///                 unknownStatusAction: "PASS",
///             },
///             scopes: [{
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
///                 protocols: [6],
///             }],
///             certificateAuthorityArn: example1.arn,
///         },
///     },
///     encryptionConfigurations: [{
///         keyId: "AWS_OWNED_KMS_KEY",
///         type: "AWS_OWNED_KMS_KEY",
///     }],
///     name: "example",
///     description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.TlsInspectionConfiguration("example",
///     tls_inspection_configuration={
///         "server_certificate_configuration": {
///             "check_certificate_revocation_status": {
///                 "revoked_status_action": "REJECT",
///                 "unknown_status_action": "PASS",
///             },
///             "scopes": [{
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
///                 "protocols": [6],
///             }],
///             "certificate_authority_arn": example1["arn"],
///         },
///     },
///     encryption_configurations=[{
///         "key_id": "AWS_OWNED_KMS_KEY",
///         "type": "AWS_OWNED_KMS_KEY",
///     }],
///     name="example",
///     description="example")
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
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfiguration = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs
///             {
///                 CheckCertificateRevocationStatus = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs
///                 {
///                     RevokedStatusAction = "REJECT",
///                     UnknownStatusAction = "PASS",
///                 },
///                 Scopes = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs
///                     {
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
///                         Protocols = new[]
///                         {
///                             6,
///                         },
///                     },
///                 },
///                 CertificateAuthorityArn = example1.Arn,
///             },
///         },
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = "AWS_OWNED_KMS_KEY",
///                 Type = "AWS_OWNED_KMS_KEY",
///             },
///         },
///         Name = "example",
///         Description = "example",
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
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs{
/// 					CheckCertificateRevocationStatus: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs{
/// 						RevokedStatusAction: pulumi.String("REJECT"),
/// 						UnknownStatusAction: pulumi.String("PASS"),
/// 					},
/// 					Scopes: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs{
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
/// 							Protocols: pulumi.IntArray{
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 					},
/// 					CertificateAuthorityArn: pulumi.Any(example1.Arn),
/// 				},
/// 			},
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: pulumi.String("AWS_OWNED_KMS_KEY"),
/// 					Type:  pulumi.String("AWS_OWNED_KMS_KEY"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
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
/// resource "aws_networkfirewall_tlsinspectionconfiguration" "example" {
///   tls_inspection_configuration = {
///     server_certificate_configuration = {
///       check_certificate_revocation_status = {
///         revoked_status_action = "REJECT"
///         unknown_status_action = "PASS"
///       }
///       scopes = [{
///         "destinationPorts" = [{
///           "fromPort" = 443
///           "toPort"   = 443
///         }]
///         "destinations" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "sourcePorts" = [{
///           "fromPort" = 0
///           "toPort"   = 65535
///         }]
///         "sources" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "protocols" = [6]
///       }]
///       certificate_authority_arn = example1.arn
///     }
///   }
///   encryption_configurations {
///     key_id = "AWS_OWNED_KMS_KEY"
///     type   = "AWS_OWNED_KMS_KEY"
///   }
///   name        = "example"
///   description = "example"
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
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
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
///         var example = new TlsInspectionConfiguration("example", TlsInspectionConfigurationArgs.builder()
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs.builder()
///                     .checkCertificateRevocationStatus(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs.builder()
///                         .revokedStatusAction("REJECT")
///                         .unknownStatusAction("PASS")
///                         .build())
///                     .scopes(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs.builder()
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
///                         .protocols(6)
///                         .build())
///                     .certificateAuthorityArn(example1.arn())
///                     .build())
///                 .build())
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId("AWS_OWNED_KMS_KEY")
///                 .type("AWS_OWNED_KMS_KEY")
///                 .build())
///             .name("example")
///             .description("example")
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
///       tlsInspectionConfiguration:
///         serverCertificateConfiguration:
///           checkCertificateRevocationStatus:
///             revokedStatusAction: REJECT
///             unknownStatusAction: PASS
///           scopes:
///             - destinationPorts:
///                 - fromPort: 443
///                   toPort: 443
///               destinations:
///                 - addressDefinition: 0.0.0.0/0
///               sourcePorts:
///                 - fromPort: 0
///                   toPort: 65535
///               sources:
///                 - addressDefinition: 0.0.0.0/0
///               protocols:
///                 - 6
///           certificateAuthorityArn: ${example1.arn}
///       encryptionConfigurations:
///         - keyId: AWS_OWNED_KMS_KEY
///           type: AWS_OWNED_KMS_KEY
///       name: example
///       description: example
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
///     tlsInspectionConfiguration: {
///         serverCertificateConfiguration: {
///             scopes: [{
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
///                 protocols: [6],
///             }],
///             serverCertificates: [{
///                 resourceArn: example1.arn,
///             }],
///         },
///     },
///     encryptionConfigurations: [{
///         keyId: example.arn,
///         type: "CUSTOMER_KMS",
///     }],
///     name: "example",
///     description: "example",
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
///     tls_inspection_configuration={
///         "server_certificate_configuration": {
///             "scopes": [{
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
///                 "protocols": [6],
///             }],
///             "server_certificates": [{
///                 "resource_arn": example1["arn"],
///             }],
///         },
///     },
///     encryption_configurations=[{
///         "key_id": example.arn,
///         "type": "CUSTOMER_KMS",
///     }],
///     name="example",
///     description="example")
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
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfiguration = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs
///             {
///                 Scopes = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs
///                     {
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
///                         Protocols = new[]
///                         {
///                             6,
///                         },
///                     },
///                 },
///                 ServerCertificates = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs
///                     {
///                         ResourceArn = example1.Arn,
///                     },
///                 },
///             },
///         },
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = example.Arn,
///                 Type = "CUSTOMER_KMS",
///             },
///         },
///         Name = "example",
///         Description = "example",
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
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs{
/// 					Scopes: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs{
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
/// 							Protocols: pulumi.IntArray{
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 					},
/// 					ServerCertificates: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs{
/// 							ResourceArn: pulumi.Any(example1.Arn),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: example.Arn,
/// 					Type:  pulumi.String("CUSTOMER_KMS"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
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
/// resource "aws_kms_key" "example" {
///   description             = "example"
///   deletion_window_in_days = 7
/// }
/// resource "aws_networkfirewall_tlsinspectionconfiguration" "example" {
///   tls_inspection_configuration = {
///     server_certificate_configuration = {
///       scopes = [{
///         "destinationPorts" = [{
///           "fromPort" = 443
///           "toPort"   = 443
///         }]
///         "destinations" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "sourcePorts" = [{
///           "fromPort" = 0
///           "toPort"   = 65535
///         }]
///         "sources" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "protocols" = [6]
///       }]
///       server_certificates = [{
///         "resourceArn" = example1.arn
///       }]
///     }
///   }
///   encryption_configurations {
///     key_id = aws_kms_key.example.arn
///     type   = "CUSTOMER_KMS"
///   }
///   name        = "example"
///   description = "example"
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
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("example")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleTlsInspectionConfiguration = new TlsInspectionConfiguration("exampleTlsInspectionConfiguration", TlsInspectionConfigurationArgs.builder()
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs.builder()
///                     .scopes(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs.builder()
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
///                         .protocols(6)
///                         .build())
///                     .serverCertificates(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs.builder()
///                         .resourceArn(example1.arn())
///                         .build())
///                     .build())
///                 .build())
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId(example.arn())
///                 .type("CUSTOMER_KMS")
///                 .build())
///             .name("example")
///             .description("example")
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
///       tlsInspectionConfiguration:
///         serverCertificateConfiguration:
///           scopes:
///             - destinationPorts:
///                 - fromPort: 443
///                   toPort: 443
///               destinations:
///                 - addressDefinition: 0.0.0.0/0
///               sourcePorts:
///                 - fromPort: 0
///                   toPort: 65535
///               sources:
///                 - addressDefinition: 0.0.0.0/0
///               protocols:
///                 - 6
///           serverCertificates:
///             - resourceArn: ${example1.arn}
///       encryptionConfigurations:
///         - keyId: ${example.arn}
///           type: CUSTOMER_KMS
///       name: example
///       description: example
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
///     tlsInspectionConfiguration: {
///         serverCertificateConfigurations: [{
///             checkCertificateRevocationStatus: [{
///                 revokedStatusAction: "REJECT",
///                 unknownStatusAction: "PASS",
///             }],
///             scope: [{
///                 destination: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///                 destinationPorts: [{
///                     fromPort: 443,
///                     toPort: 443,
///                 }],
///                 source: [{
///                     addressDefinition: "0.0.0.0/0",
///                 }],
///                 sourcePorts: [{
///                     fromPort: 0,
///                     toPort: 65535,
///                 }],
///                 protocols: [6],
///             }],
///             certificateAuthorityArn: example1.arn,
///         }],
///     },
///     encryptionConfigurations: [{
///         keyId: example.arn,
///         type: "CUSTOMER_KMS",
///     }],
///     name: "example",
///     description: "example",
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
///     tls_inspection_configuration={
///         "server_certificate_configurations": [{
///             "checkCertificateRevocationStatus": [{
///                 "revokedStatusAction": "REJECT",
///                 "unknownStatusAction": "PASS",
///             }],
///             "scope": [{
///                 "destination": [{
///                     "addressDefinition": "0.0.0.0/0",
///                 }],
///                 "destinationPorts": [{
///                     "fromPort": 443,
///                     "toPort": 443,
///                 }],
///                 "source": [{
///                     "addressDefinition": "0.0.0.0/0",
///                 }],
///                 "sourcePorts": [{
///                     "fromPort": 0,
///                     "toPort": 65535,
///                 }],
///                 "protocols": [6],
///             }],
///             "certificateAuthorityArn": example1["arn"],
///         }],
///     },
///     encryption_configurations=[{
///         "key_id": example.arn,
///         "type": "CUSTOMER_KMS",
///     }],
///     name="example",
///     description="example")
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
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfigurations = new[]
///             {
///
///                 {
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
///                             { "destination", new[]
///                             {
///
///                                 {
///                                     { "addressDefinition", "0.0.0.0/0" },
///                                 },
///                             } },
///                             { "destinationPorts", new[]
///                             {
///
///                                 {
///                                     { "fromPort", 443 },
///                                     { "toPort", 443 },
///                                 },
///                             } },
///                             { "source", new[]
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
///                             { "protocols", new[]
///                             {
///                                 6,
///                             } },
///                         },
///                     } },
///                     { "certificateAuthorityArn", example1.Arn },
///                 },
///             },
///         },
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = example.Arn,
///                 Type = "CUSTOMER_KMS",
///             },
///         },
///         Name = "example",
///         Description = "example",
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
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfigurations: []map[string]interface{}{
/// 					map[string]interface{}{
/// 						"checkCertificateRevocationStatus": []map[string]string{
/// 							{
/// 								"revokedStatusAction": "REJECT",
/// 								"unknownStatusAction": "PASS",
/// 							},
/// 						},
/// 						"scope": []map[string]interface{}{
/// 							map[string]interface{}{
/// 								"destination": []map[string]string{
/// 									{
/// 										"addressDefinition": "0.0.0.0/0",
/// 									},
/// 								},
/// 								"destinationPorts": []map[string]int{
/// 									{
/// 										"fromPort": 443,
/// 										"toPort":   443,
/// 									},
/// 								},
/// 								"source": []map[string]string{
/// 									{
/// 										"addressDefinition": "0.0.0.0/0",
/// 									},
/// 								},
/// 								"sourcePorts": []map[string]int{
/// 									{
/// 										"fromPort": 0,
/// 										"toPort":   65535,
/// 									},
/// 								},
/// 								"protocols": []int{
/// 									6,
/// 								},
/// 							},
/// 						},
/// 						"certificateAuthorityArn": example1.Arn,
/// 					},
/// 				},
/// 			},
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: example.Arn,
/// 					Type:  pulumi.String("CUSTOMER_KMS"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
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
/// resource "aws_kms_key" "example" {
///   description             = "example"
///   deletion_window_in_days = 7
/// }
/// resource "aws_networkfirewall_tlsinspectionconfiguration" "example" {
///   tls_inspection_configuration = {
///     server_certificate_configurations = [{
///       "checkCertificateRevocationStatus" = [{
///         "revokedStatusAction" = "REJECT"
///         "unknownStatusAction" = "PASS"
///       }]
///       "scope" = [{
///         "destination" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "destinationPorts" = [{
///           "fromPort" = 443
///           "toPort"   = 443
///         }]
///         "source" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "sourcePorts" = [{
///           "fromPort" = 0
///           "toPort"   = 65535
///         }]
///         "protocols" = [6]
///       }]
///       "certificateAuthorityArn" = example1.arn
///     }]
///   }
///   encryption_configurations {
///     key_id = aws_kms_key.example.arn
///     type   = "CUSTOMER_KMS"
///   }
///   name        = "example"
///   description = "example"
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
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
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
///         var example = new Key("example", KeyArgs.builder()
///             .description("example")
///             .deletionWindowInDays(7)
///             .build());
///
///         var exampleTlsInspectionConfiguration = new TlsInspectionConfiguration("exampleTlsInspectionConfiguration", TlsInspectionConfigurationArgs.builder()
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfigurations(Arrays.asList(Map.ofEntries(
///                     Map.entry("checkCertificateRevocationStatus", Arrays.asList(Map.ofEntries(
///                         Map.entry("revokedStatusAction", "REJECT"),
///                         Map.entry("unknownStatusAction", "PASS")
///                     ))),
///                     Map.entry("scope", Arrays.asList(Map.ofEntries(
///                         Map.entry("destination", Arrays.asList(Map.of("addressDefinition", "0.0.0.0/0"))),
///                         Map.entry("destinationPorts", Arrays.asList(Map.ofEntries(
///                             Map.entry("fromPort", 443),
///                             Map.entry("toPort", 443)
///                         ))),
///                         Map.entry("source", Arrays.asList(Map.of("addressDefinition", "0.0.0.0/0"))),
///                         Map.entry("sourcePorts", Arrays.asList(Map.ofEntries(
///                             Map.entry("fromPort", 0),
///                             Map.entry("toPort", 65535)
///                         ))),
///                         Map.entry("protocols", Arrays.asList(6))
///                     ))),
///                     Map.entry("certificateAuthorityArn", example1.arn())
///                 )))
///                 .build())
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId(example.arn())
///                 .type("CUSTOMER_KMS")
///                 .build())
///             .name("example")
///             .description("example")
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
///       tlsInspectionConfiguration:
///         serverCertificateConfigurations:
///           - checkCertificateRevocationStatus:
///               - revokedStatusAction: REJECT
///                 unknownStatusAction: PASS
///             scope:
///               - destination:
///                   - addressDefinition: 0.0.0.0/0
///                 destinationPorts:
///                   - fromPort: 443
///                     toPort: 443
///                 source:
///                   - addressDefinition: 0.0.0.0/0
///                 sourcePorts:
///                   - fromPort: 0
///                     toPort: 65535
///                 protocols:
///                   - 6
///             certificateAuthorityArn: ${example1.arn}
///       encryptionConfigurations:
///         - keyId: ${example.arn}
///           type: CUSTOMER_KMS
///       name: example
///       description: example
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
///     tlsInspectionConfiguration: {
///         serverCertificateConfiguration: {
///             checkCertificateRevocationStatus: {
///                 revokedStatusAction: "REJECT",
///                 unknownStatusAction: "PASS",
///             },
///             scopes: [{
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
///                 protocols: [6],
///             }],
///             serverCertificates: [{
///                 resourceArn: example2.arn,
///             }],
///             certificateAuthorityArn: example1.arn,
///         },
///     },
///     encryptionConfigurations: [{
///         keyId: "AWS_OWNED_KMS_KEY",
///         type: "AWS_OWNED_KMS_KEY",
///     }],
///     name: "example",
///     description: "example",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.networkfirewall.TlsInspectionConfiguration("example",
///     tls_inspection_configuration={
///         "server_certificate_configuration": {
///             "check_certificate_revocation_status": {
///                 "revoked_status_action": "REJECT",
///                 "unknown_status_action": "PASS",
///             },
///             "scopes": [{
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
///                 "protocols": [6],
///             }],
///             "server_certificates": [{
///                 "resource_arn": example2["arn"],
///             }],
///             "certificate_authority_arn": example1["arn"],
///         },
///     },
///     encryption_configurations=[{
///         "key_id": "AWS_OWNED_KMS_KEY",
///         "type": "AWS_OWNED_KMS_KEY",
///     }],
///     name="example",
///     description="example")
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
///         TlsInspectionConfig = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs
///         {
///             ServerCertificateConfiguration = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs
///             {
///                 CheckCertificateRevocationStatus = new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs
///                 {
///                     RevokedStatusAction = "REJECT",
///                     UnknownStatusAction = "PASS",
///                 },
///                 Scopes = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs
///                     {
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
///                         Protocols = new[]
///                         {
///                             6,
///                         },
///                     },
///                 },
///                 ServerCertificates = new[]
///                 {
///                     new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs
///                     {
///                         ResourceArn = example2.Arn,
///                     },
///                 },
///                 CertificateAuthorityArn = example1.Arn,
///             },
///         },
///         EncryptionConfigurations = new[]
///         {
///             new Aws.NetworkFirewall.Inputs.TlsInspectionConfigurationEncryptionConfigurationArgs
///             {
///                 KeyId = "AWS_OWNED_KMS_KEY",
///                 Type = "AWS_OWNED_KMS_KEY",
///             },
///         },
///         Name = "example",
///         Description = "example",
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
/// 			TlsInspectionConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationArgs{
/// 				ServerCertificateConfiguration: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs{
/// 					CheckCertificateRevocationStatus: &networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs{
/// 						RevokedStatusAction: pulumi.String("REJECT"),
/// 						UnknownStatusAction: pulumi.String("PASS"),
/// 					},
/// 					Scopes: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs{
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
/// 							Protocols: pulumi.IntArray{
/// 								pulumi.Int(6),
/// 							},
/// 						},
/// 					},
/// 					ServerCertificates: networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArray{
/// 						&networkfirewall.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs{
/// 							ResourceArn: pulumi.Any(example2.Arn),
/// 						},
/// 					},
/// 					CertificateAuthorityArn: pulumi.Any(example1.Arn),
/// 				},
/// 			},
/// 			EncryptionConfigurations: networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArray{
/// 				&networkfirewall.TlsInspectionConfigurationEncryptionConfigurationArgs{
/// 					KeyId: pulumi.String("AWS_OWNED_KMS_KEY"),
/// 					Type:  pulumi.String("AWS_OWNED_KMS_KEY"),
/// 				},
/// 			},
/// 			Name:        pulumi.String("example"),
/// 			Description: pulumi.String("example"),
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
/// resource "aws_networkfirewall_tlsinspectionconfiguration" "example" {
///   tls_inspection_configuration = {
///     server_certificate_configuration = {
///       check_certificate_revocation_status = {
///         revoked_status_action = "REJECT"
///         unknown_status_action = "PASS"
///       }
///       scopes = [{
///         "destinationPorts" = [{
///           "fromPort" = 443
///           "toPort"   = 443
///         }]
///         "destinations" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "sourcePorts" = [{
///           "fromPort" = 0
///           "toPort"   = 65535
///         }]
///         "sources" = [{
///           "addressDefinition" = "0.0.0.0/0"
///         }]
///         "protocols" = [6]
///       }]
///       server_certificates = [{
///         "resourceArn" = example2.arn
///       }]
///       certificate_authority_arn = example1.arn
///     }
///   }
///   encryption_configurations {
///     key_id = "AWS_OWNED_KMS_KEY"
///     type   = "AWS_OWNED_KMS_KEY"
///   }
///   name        = "example"
///   description = "example"
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
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationPortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeDestinationArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourcePortArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeSourceArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs;
/// import com.pulumi.aws.networkfirewall.inputs.TlsInspectionConfigurationEncryptionConfigurationArgs;
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
///         var example = new TlsInspectionConfiguration("example", TlsInspectionConfigurationArgs.builder()
///             .tlsInspectionConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationArgs.builder()
///                 .serverCertificateConfiguration(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationArgs.builder()
///                     .checkCertificateRevocationStatus(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationCheckCertificateRevocationStatusArgs.builder()
///                         .revokedStatusAction("REJECT")
///                         .unknownStatusAction("PASS")
///                         .build())
///                     .scopes(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationScopeArgs.builder()
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
///                         .protocols(6)
///                         .build())
///                     .serverCertificates(TlsInspectionConfigurationTlsInspectionConfigurationServerCertificateConfigurationServerCertificateArgs.builder()
///                         .resourceArn(example2.arn())
///                         .build())
///                     .certificateAuthorityArn(example1.arn())
///                     .build())
///                 .build())
///             .encryptionConfigurations(TlsInspectionConfigurationEncryptionConfigurationArgs.builder()
///                 .keyId("AWS_OWNED_KMS_KEY")
///                 .type("AWS_OWNED_KMS_KEY")
///                 .build())
///             .name("example")
///             .description("example")
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
///       tlsInspectionConfiguration:
///         serverCertificateConfiguration:
///           checkCertificateRevocationStatus:
///             revokedStatusAction: REJECT
///             unknownStatusAction: PASS
///           scopes:
///             - destinationPorts:
///                 - fromPort: 443
///                   toPort: 443
///               destinations:
///                 - addressDefinition: 0.0.0.0/0
///               sourcePorts:
///                 - fromPort: 0
///                   toPort: 65535
///               sources:
///                 - addressDefinition: 0.0.0.0/0
///               protocols:
///                 - 6
///           serverCertificates:
///             - resourceArn: ${example2.arn}
///           certificateAuthorityArn: ${example1.arn}
///       encryptionConfigurations:
///         - keyId: AWS_OWNED_KMS_KEY
///           type: AWS_OWNED_KMS_KEY
///       name: example
///       description: example
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) ARN of the Network Firewall TLS inspection configuration.
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
  late final pulumi.Output<List<TlsInspectionConfigurationCertificateAuthority>> certificateAuthorities;
  /// List of certificate blocks describing certificates associated with the TLS inspection configuration. See Certificates below for details.
  late final pulumi.Output<List<TlsInspectionConfigurationCertificate>> certificates;
  /// Description of the TLS inspection configuration.
  late final pulumi.Output<String?> description;
  /// Encryption configuration block. Detailed below.
  late final pulumi.Output<List<TlsInspectionConfigurationEncryptionConfiguration>> encryptionConfigurations;
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
  late final pulumi.Output<TlsInspectionConfigurationTlsInspectionConfiguration> tlsInspectionConfiguration;
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
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    certificateAuthorities = registerOutput<List<TlsInspectionConfigurationCertificateAuthority>>('certificateAuthorities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsInspectionConfigurationCertificateAuthority>(guardedValue, (value) => TlsInspectionConfigurationCertificateAuthority.fromMap((value as Map).cast<String, dynamic>())); });
    certificates = registerOutput<List<TlsInspectionConfigurationCertificate>>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsInspectionConfigurationCertificate>(guardedValue, (value) => TlsInspectionConfigurationCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    encryptionConfigurations = registerOutput<List<TlsInspectionConfigurationEncryptionConfiguration>>('encryptionConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsInspectionConfigurationEncryptionConfiguration>(guardedValue, (value) => TlsInspectionConfigurationEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    numberOfAssociations = registerOutput<int>('numberOfAssociations');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<TlsInspectionConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TlsInspectionConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsInspectionConfiguration = registerOutput<TlsInspectionConfigurationTlsInspectionConfiguration>('tlsInspectionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TlsInspectionConfigurationTlsInspectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsInspectionConfigurationId = registerOutput<String>('tlsInspectionConfigurationId');
    updateToken = registerOutput<String>('updateToken');
  }

  /// Gets an existing [TlsInspectionConfiguration] resource's state with the given [name] and [id].
  static TlsInspectionConfiguration get(
    String name,
    pulumi.Input<String> id, {
    TlsInspectionConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return TlsInspectionConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  TlsInspectionConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkfirewall/tlsInspectionConfiguration:TlsInspectionConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    certificateAuthorities = registerOutput<List<TlsInspectionConfigurationCertificateAuthority>>('certificateAuthorities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsInspectionConfigurationCertificateAuthority>(guardedValue, (value) => TlsInspectionConfigurationCertificateAuthority.fromMap((value as Map).cast<String, dynamic>())); });
    certificates = registerOutput<List<TlsInspectionConfigurationCertificate>>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsInspectionConfigurationCertificate>(guardedValue, (value) => TlsInspectionConfigurationCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    encryptionConfigurations = registerOutput<List<TlsInspectionConfigurationEncryptionConfiguration>>('encryptionConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsInspectionConfigurationEncryptionConfiguration>(guardedValue, (value) => TlsInspectionConfigurationEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    numberOfAssociations = registerOutput<int>('numberOfAssociations');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<TlsInspectionConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TlsInspectionConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsInspectionConfiguration = registerOutput<TlsInspectionConfigurationTlsInspectionConfiguration>('tlsInspectionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TlsInspectionConfigurationTlsInspectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsInspectionConfigurationId = registerOutput<String>('tlsInspectionConfigurationId');
    updateToken = registerOutput<String>('updateToken');
  }

  /// Creates a typed reference to an existing [TlsInspectionConfiguration] resource.
  TlsInspectionConfiguration.reference(String urn)
    : super(
        'aws:networkfirewall/tlsInspectionConfiguration:TlsInspectionConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    certificateAuthorities = registerOutput<List<TlsInspectionConfigurationCertificateAuthority>>('certificateAuthorities', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsInspectionConfigurationCertificateAuthority>(guardedValue, (value) => TlsInspectionConfigurationCertificateAuthority.fromMap((value as Map).cast<String, dynamic>())); });
    certificates = registerOutput<List<TlsInspectionConfigurationCertificate>>('certificates', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsInspectionConfigurationCertificate>(guardedValue, (value) => TlsInspectionConfigurationCertificate.fromMap((value as Map).cast<String, dynamic>())); });
    description = registerOutput<String?>('description');
    encryptionConfigurations = registerOutput<List<TlsInspectionConfigurationEncryptionConfiguration>>('encryptionConfigurations', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<TlsInspectionConfigurationEncryptionConfiguration>(guardedValue, (value) => TlsInspectionConfigurationEncryptionConfiguration.fromMap((value as Map).cast<String, dynamic>())); });
    this.name = registerOutput<String>('name');
    numberOfAssociations = registerOutput<int>('numberOfAssociations');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    timeouts = registerOutput<TlsInspectionConfigurationTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TlsInspectionConfigurationTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsInspectionConfiguration = registerOutput<TlsInspectionConfigurationTlsInspectionConfiguration>('tlsInspectionConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TlsInspectionConfigurationTlsInspectionConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tlsInspectionConfigurationId = registerOutput<String>('tlsInspectionConfigurationId');
    updateToken = registerOutput<String>('updateToken');
  }
}
