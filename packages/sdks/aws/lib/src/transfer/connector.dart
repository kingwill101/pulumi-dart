import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'connector_as2_config.dart';
import 'connector_egress_config.dart';
import 'connector_sftp_config.dart';
import 'connector_state.dart';

/// Provides a AWS Transfer AS2 Connector resource.
///
/// ## Example Usage
///
/// ### Basic
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Connector("example", {
///     accessRole: test.arn,
///     as2Config: {
///         compression: "DISABLED",
///         encryptionAlgorithm: "AWS128_CBC",
///         messageSubject: "For Connector",
///         localProfileId: local.profileId,
///         mdnResponse: "NONE",
///         mdnSigningAlgorithm: "NONE",
///         partnerProfileId: partner.profileId,
///         signingAlgorithm: "NONE",
///     },
///     url: "http://www.test.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Connector("example",
///     access_role=test["arn"],
///     as2_config={
///         "compression": "DISABLED",
///         "encryption_algorithm": "AWS128_CBC",
///         "message_subject": "For Connector",
///         "local_profile_id": local["profileId"],
///         "mdn_response": "NONE",
///         "mdn_signing_algorithm": "NONE",
///         "partner_profile_id": partner["profileId"],
///         "signing_algorithm": "NONE",
///     },
///     url="http://www.test.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Transfer.Connector("example", new()
///     {
///         AccessRole = test.Arn,
///         As2Config = new Aws.Transfer.Inputs.ConnectorAs2ConfigArgs
///         {
///             Compression = "DISABLED",
///             EncryptionAlgorithm = "AWS128_CBC",
///             MessageSubject = "For Connector",
///             LocalProfileId = local.ProfileId,
///             MdnResponse = "NONE",
///             MdnSigningAlgorithm = "NONE",
///             PartnerProfileId = partner.ProfileId,
///             SigningAlgorithm = "NONE",
///         },
///         Url = "http://www.test.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transfer.NewConnector(ctx, "example", &transfer.ConnectorArgs{
/// 			AccessRole: pulumi.Any(test.Arn),
/// 			As2Config: &transfer.ConnectorAs2ConfigArgs{
/// 				Compression:         pulumi.String("DISABLED"),
/// 				EncryptionAlgorithm: pulumi.String("AWS128_CBC"),
/// 				MessageSubject:      pulumi.String("For Connector"),
/// 				LocalProfileId:      pulumi.Any(local.ProfileId),
/// 				MdnResponse:         pulumi.String("NONE"),
/// 				MdnSigningAlgorithm: pulumi.String("NONE"),
/// 				PartnerProfileId:    pulumi.Any(partner.ProfileId),
/// 				SigningAlgorithm:    pulumi.String("NONE"),
/// 			},
/// 			Url: pulumi.String("http://www.test.com"),
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
/// resource "aws_transfer_connector" "example" {
///   access_role = test.arn
///   as2_config = {
///     compression           = "DISABLED"
///     encryption_algorithm  = "AWS128_CBC"
///     message_subject       = "For Connector"
///     local_profile_id      = local.profileId
///     mdn_response          = "NONE"
///     mdn_signing_algorithm = "NONE"
///     partner_profile_id    = partner.profileId
///     signing_algorithm     = "NONE"
///   }
///   url = "http://www.test.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.transfer.Connector;
/// import com.pulumi.aws.transfer.ConnectorArgs;
/// import com.pulumi.aws.transfer.inputs.ConnectorAs2ConfigArgs;
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
///         var example = new Connector("example", ConnectorArgs.builder()
///             .accessRole(test.arn())
///             .as2Config(ConnectorAs2ConfigArgs.builder()
///                 .compression("DISABLED")
///                 .encryptionAlgorithm("AWS128_CBC")
///                 .messageSubject("For Connector")
///                 .localProfileId(local.profileId())
///                 .mdnResponse("NONE")
///                 .mdnSigningAlgorithm("NONE")
///                 .partnerProfileId(partner.profileId())
///                 .signingAlgorithm("NONE")
///                 .build())
///             .url("http://www.test.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transfer:Connector
///     properties:
///       accessRole: ${test.arn}
///       as2Config:
///         compression: DISABLED
///         encryptionAlgorithm: AWS128_CBC
///         messageSubject: For Connector
///         localProfileId: ${local.profileId}
///         mdnResponse: NONE
///         mdnSigningAlgorithm: NONE
///         partnerProfileId: ${partner.profileId}
///         signingAlgorithm: NONE
///       url: http://www.test.com
/// ```
///
///
/// ### SFTP Connector
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Connector("example", {
///     accessRole: test.arn,
///     sftpConfig: {
///         trustedHostKeys: ["ssh-rsa AAAAB3NYourKeysHere"],
///         userSecretId: exampleAwsSecretsmanagerSecret.id,
///     },
///     url: "sftp://test.com",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Connector("example",
///     access_role=test["arn"],
///     sftp_config={
///         "trusted_host_keys": ["ssh-rsa AAAAB3NYourKeysHere"],
///         "user_secret_id": example_aws_secretsmanager_secret["id"],
///     },
///     url="sftp://test.com")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Transfer.Connector("example", new()
///     {
///         AccessRole = test.Arn,
///         SftpConfig = new Aws.Transfer.Inputs.ConnectorSftpConfigArgs
///         {
///             TrustedHostKeys = new[]
///             {
///                 "ssh-rsa AAAAB3NYourKeysHere",
///             },
///             UserSecretId = exampleAwsSecretsmanagerSecret.Id,
///         },
///         Url = "sftp://test.com",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transfer.NewConnector(ctx, "example", &transfer.ConnectorArgs{
/// 			AccessRole: pulumi.Any(test.Arn),
/// 			SftpConfig: &transfer.ConnectorSftpConfigArgs{
/// 				TrustedHostKeys: pulumi.StringArray{
/// 					pulumi.String("ssh-rsa AAAAB3NYourKeysHere"),
/// 				},
/// 				UserSecretId: pulumi.Any(exampleAwsSecretsmanagerSecret.Id),
/// 			},
/// 			Url: pulumi.String("sftp://test.com"),
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
/// resource "aws_transfer_connector" "example" {
///   access_role = test.arn
///   sftp_config = {
///     trusted_host_keys = ["ssh-rsa AAAAB3NYourKeysHere"]
///     user_secret_id    = exampleAwsSecretsmanagerSecret.id
///   }
///   url = "sftp://test.com"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.transfer.Connector;
/// import com.pulumi.aws.transfer.ConnectorArgs;
/// import com.pulumi.aws.transfer.inputs.ConnectorSftpConfigArgs;
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
///         var example = new Connector("example", ConnectorArgs.builder()
///             .accessRole(test.arn())
///             .sftpConfig(ConnectorSftpConfigArgs.builder()
///                 .trustedHostKeys("ssh-rsa AAAAB3NYourKeysHere")
///                 .userSecretId(exampleAwsSecretsmanagerSecret.id())
///                 .build())
///             .url("sftp://test.com")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:transfer:Connector
///     properties:
///       accessRole: ${test.arn}
///       sftpConfig:
///         trustedHostKeys:
///           - ssh-rsa AAAAB3NYourKeysHere
///         userSecretId: ${exampleAwsSecretsmanagerSecret.id}
///       url: sftp://test.com
/// ```
///
///
/// ### SFTP Connector with VPC Lattice
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.transfer.Connector("example", {
///     accessRole: test.arn,
///     sftpConfig: {
///         trustedHostKeys: ["ssh-rsa AAAAB3NYourKeysHere"],
///         userSecretId: exampleAwsSecretsmanagerSecret.id,
///     },
///     egressConfig: {
///         vpcLattice: {
///             resourceConfigurationArn: "arn:aws:vpc-lattice:us-east-1:123456789012:resourceconfiguration/rcfg-12345678901234567",
///             portNumber: 22,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.transfer.Connector("example",
///     access_role=test["arn"],
///     sftp_config={
///         "trusted_host_keys": ["ssh-rsa AAAAB3NYourKeysHere"],
///         "user_secret_id": example_aws_secretsmanager_secret["id"],
///     },
///     egress_config={
///         "vpc_lattice": {
///             "resource_configuration_arn": "arn:aws:vpc-lattice:us-east-1:123456789012:resourceconfiguration/rcfg-12345678901234567",
///             "port_number": 22,
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
///     var example = new Aws.Transfer.Connector("example", new()
///     {
///         AccessRole = test.Arn,
///         SftpConfig = new Aws.Transfer.Inputs.ConnectorSftpConfigArgs
///         {
///             TrustedHostKeys = new[]
///             {
///                 "ssh-rsa AAAAB3NYourKeysHere",
///             },
///             UserSecretId = exampleAwsSecretsmanagerSecret.Id,
///         },
///         EgressConfig = new Aws.Transfer.Inputs.ConnectorEgressConfigArgs
///         {
///             VpcLattice = new Aws.Transfer.Inputs.ConnectorEgressConfigVpcLatticeArgs
///             {
///                 ResourceConfigurationArn = "arn:aws:vpc-lattice:us-east-1:123456789012:resourceconfiguration/rcfg-12345678901234567",
///                 PortNumber = 22,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/transfer"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := transfer.NewConnector(ctx, "example", &transfer.ConnectorArgs{
/// 			AccessRole: pulumi.Any(test.Arn),
/// 			SftpConfig: &transfer.ConnectorSftpConfigArgs{
/// 				TrustedHostKeys: pulumi.StringArray{
/// 					pulumi.String("ssh-rsa AAAAB3NYourKeysHere"),
/// 				},
/// 				UserSecretId: pulumi.Any(exampleAwsSecretsmanagerSecret.Id),
/// 			},
/// 			EgressConfig: &transfer.ConnectorEgressConfigArgs{
/// 				VpcLattice: &transfer.ConnectorEgressConfigVpcLatticeArgs{
/// 					ResourceConfigurationArn: pulumi.String("arn:aws:vpc-lattice:us-east-1:123456789012:resourceconfiguration/rcfg-12345678901234567"),
/// 					PortNumber:               pulumi.Int(22),
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
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_transfer_connector" "example" {
///   access_role = test.arn
///   sftp_config = {
///     trusted_host_keys = ["ssh-rsa AAAAB3NYourKeysHere"]
///     user_secret_id    = exampleAwsSecretsmanagerSecret.id
///   }
///   egress_config = {
///     vpc_lattice = {
///       resource_configuration_arn = "arn:aws:vpc-lattice:us-east-1:123456789012:resourceconfiguration/rcfg-12345678901234567"
///       port_number                = 22
///     }
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.transfer.Connector;
/// import com.pulumi.aws.transfer.ConnectorArgs;
/// import com.pulumi.aws.transfer.inputs.ConnectorSftpConfigArgs;
/// import com.pulumi.aws.transfer.inputs.ConnectorEgressConfigArgs;
/// import com.pulumi.aws.transfer.inputs.ConnectorEgressConfigVpcLatticeArgs;
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
///         var example = new Connector("example", ConnectorArgs.builder()
///             .accessRole(test.arn())
///             .sftpConfig(ConnectorSftpConfigArgs.builder()
///                 .trustedHostKeys("ssh-rsa AAAAB3NYourKeysHere")
///                 .userSecretId(exampleAwsSecretsmanagerSecret.id())
///                 .build())
///             .egressConfig(ConnectorEgressConfigArgs.builder()
///                 .vpcLattice(ConnectorEgressConfigVpcLatticeArgs.builder()
///                     .resourceConfigurationArn("arn:aws:vpc-lattice:us-east-1:123456789012:resourceconfiguration/rcfg-12345678901234567")
///                     .portNumber(22)
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
///     type: aws:transfer:Connector
///     properties:
///       accessRole: ${test.arn}
///       sftpConfig:
///         trustedHostKeys:
///           - ssh-rsa AAAAB3NYourKeysHere
///         userSecretId: ${exampleAwsSecretsmanagerSecret.id}
///       egressConfig:
///         vpcLattice:
///           resourceConfigurationArn: arn:aws:vpc-lattice:us-east-1:123456789012:resourceconfiguration/rcfg-12345678901234567
///           portNumber: 22
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Transfer AS2 Connector using the `connectorId`. For example:
///
/// ```sh
/// $ pulumi import aws:transfer/connector:Connector example c-4221a88afd5f4362a
/// ```
class Connector extends pulumi.CustomResource {
  /// IAM Role which provides read and write access to the parent directory of the file location mentioned in the StartFileTransfer request.
  late final pulumi.Output<String> accessRole;
  /// ARN of the connector.
  late final pulumi.Output<String> arn;
  /// Either SFTP or AS2 is configured. Parameters to configure for the connector object. See `as2Config` Block below.
  late final pulumi.Output<ConnectorAs2Config?> as2Config;
  /// Unique identifier for the AS2 profile or SFTP Profile.
  late final pulumi.Output<String> connectorId;
  /// Egress configuration for the connector. When set, enables routing through customer VPCs using VPC Lattice for private connectivity. See `egressConfig` Block below.
  late final pulumi.Output<ConnectorEgressConfig?> egressConfig;
  /// IAM Role which is required for allowing the connector to turn on CloudWatch logging for Amazon S3 events.
  late final pulumi.Output<String?> loggingRole;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Name of the security policy for the connector.
  late final pulumi.Output<String> securityPolicyName;
  /// Either SFTP or AS2 is configured. Parameters to configure for the connector object. See `sftpConfig` Block below.
  late final pulumi.Output<ConnectorSftpConfig?> sftpConfig;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// URL of the partners AS2 endpoint or SFTP endpoint. Required for AS2 connectors and service-managed SFTP connectors. Must be null when using VPC Lattice egress configuration.
  late final pulumi.Output<String?> url;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_transfer_connector_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/connector:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessRole = registerOutput<String>('accessRole');
    arn = registerOutput<String>('arn');
    as2Config = registerOutput<ConnectorAs2Config?>('as2Config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorAs2Config.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorId = registerOutput<String>('connectorId');
    egressConfig = registerOutput<ConnectorEgressConfig?>('egressConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorEgressConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingRole = registerOutput<String?>('loggingRole');
    region = registerOutput<String>('region');
    securityPolicyName = registerOutput<String>('securityPolicyName');
    sftpConfig = registerOutput<ConnectorSftpConfig?>('sftpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorSftpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    url = registerOutput<String?>('url');
  }

  /// Gets an existing [Connector] resource's state with the given [name] and [id].
  static Connector get(
    String name,
    pulumi.Input<String> id, {
    ConnectorState? state,
  }) {
    return Connector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Connector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:transfer/connector:Connector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    accessRole = registerOutput<String>('accessRole');
    arn = registerOutput<String>('arn');
    as2Config = registerOutput<ConnectorAs2Config?>('as2Config', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorAs2Config.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    connectorId = registerOutput<String>('connectorId');
    egressConfig = registerOutput<ConnectorEgressConfig?>('egressConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorEgressConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    loggingRole = registerOutput<String?>('loggingRole');
    region = registerOutput<String>('region');
    securityPolicyName = registerOutput<String>('securityPolicyName');
    sftpConfig = registerOutput<ConnectorSftpConfig?>('sftpConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorSftpConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    url = registerOutput<String?>('url');
  }
}
