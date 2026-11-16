import 'package:pulumi/pulumi.dart' as pulumi;
import 'connector_args.dart';
import 'connector_connector_configuration.dart';
import 'connector_state.dart';

/// Manages an AWS Config connector that specifies the connection between a third-party cloud service provider and AWS Config.
///
/// A connector is a prerequisite for recording third-party (multi-cloud) resource configurations. For example, it provides the `arn` referenced by the `azure` provider block of `aws.securityhub.ConnectorV2` to enable Microsoft Azure coverage in Security Hub.
///
/// &gt; **NOTE:** Creating this resource also creates the `AWSServiceRoleForConfigThirdParty` service-linked role in your account if it does not already exist.
///
/// &gt; **NOTE:** Connectors cannot be updated in place. Changing the `azure` configuration forces a new resource to be created.
///
/// Before creating a connector, you must configure the corresponding application and federated credentials in your Azure environment. See the [Security Hub Azure integration prerequisites](https://docs.aws.amazon.com/securityhub/latest/userguide/securityhub-v2-azure-prereqs.html) for details.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cfg.Connector("example", {connectorConfiguration: {
///     azure: {
///         clientIdentifier: "00000000-0000-0000-0000-000000000000",
///         tenantIdentifier: "11111111-1111-1111-1111-111111111111",
///     },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cfg.Connector("example", connector_configuration={
///     "azure": {
///         "client_identifier": "00000000-0000-0000-0000-000000000000",
///         "tenant_identifier": "11111111-1111-1111-1111-111111111111",
///     },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Cfg.Connector("example", new()
///     {
///         ConnectorConfiguration = new Aws.Cfg.Inputs.ConnectorConnectorConfigurationArgs
///         {
///             Azure = new Aws.Cfg.Inputs.ConnectorConnectorConfigurationAzureArgs
///             {
///                 ClientIdentifier = "00000000-0000-0000-0000-000000000000",
///                 TenantIdentifier = "11111111-1111-1111-1111-111111111111",
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cfg"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cfg.NewConnector(ctx, "example", &cfg.ConnectorArgs{
/// 			ConnectorConfiguration: &cfg.ConnectorConnectorConfigurationArgs{
/// 				Azure: &cfg.ConnectorConnectorConfigurationAzureArgs{
/// 					ClientIdentifier: pulumi.String("00000000-0000-0000-0000-000000000000"),
/// 					TenantIdentifier: pulumi.String("11111111-1111-1111-1111-111111111111"),
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
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_cfg_connector" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   connector_configuration = {
///     azure = {
///       client_identifier = "00000000-0000-0000-0000-000000000000"
///       tenant_identifier = "11111111-1111-1111-1111-111111111111"
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
/// import com.pulumi.aws.cfg.Connector;
/// import com.pulumi.aws.cfg.ConnectorArgs;
/// import com.pulumi.aws.cfg.inputs.ConnectorConnectorConfigurationArgs;
/// import com.pulumi.aws.cfg.inputs.ConnectorConnectorConfigurationAzureArgs;
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
///             .connectorConfiguration(ConnectorConnectorConfigurationArgs.builder()
///                 .azure(ConnectorConnectorConfigurationAzureArgs.builder()
///                     .clientIdentifier("00000000-0000-0000-0000-000000000000")
///                     .tenantIdentifier("11111111-1111-1111-1111-111111111111")
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
///     type: aws:cfg:Connector
///     properties:
///       connectorConfiguration:
///         azure:
///           clientIdentifier: 00000000-0000-0000-0000-000000000000
///           tenantIdentifier: 11111111-1111-1111-1111-111111111111
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `arn` (String) ARN of the connector.
///
///
/// Using `pulumi import`, import Config connectors using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:cfg/connector:Connector example arn:aws:config:us-east-1:123456789012:connector/00000000-0000-0000-0000-000000000000
/// ```
class Connector extends pulumi.CustomResource {
  /// ARN of the connector.
  late final pulumi.Output<String> arn;
  /// Provider-specific configuration for connecting to the third-party cloud service provider. See `connectorConfiguration` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ConnectorConnectorConfiguration> connectorConfiguration;
  /// Name of the connector.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Connector].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Connector]. {@macro pulumi_cfg_connector_connector_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Connector(
    String name, {
    ConnectorArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/connector:Connector',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.55.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    connectorConfiguration = registerOutput<ConnectorConnectorConfiguration>('connectorConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorConnectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Connector] resource's state with the given [name] and [id].
  static Connector get(
    String name,
    pulumi.Input<String> id, {
    ConnectorState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Connector._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Connector._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cfg/connector:Connector',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    connectorConfiguration = registerOutput<ConnectorConnectorConfiguration>('connectorConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorConnectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Connector] resource.
  Connector.reference(String urn)
    : super(
        'aws:cfg/connector:Connector',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    connectorConfiguration = registerOutput<ConnectorConnectorConfiguration>('connectorConfiguration', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectorConnectorConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
